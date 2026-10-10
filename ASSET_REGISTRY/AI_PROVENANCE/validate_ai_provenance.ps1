$ErrorActionPreference = "Stop"
$Dir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Root = Split-Path (Split-Path $Dir -Parent) -Parent
$CsvPath = Join-Path $Dir "asset_generation_provenance.csv"
$MasterPath = Join-Path $Root "ASSET_REGISTRY\CORE\asset_master.csv"
$ReportPath = Join-Path $Dir "provenance_validation_report.md"

$Errors = [System.Collections.Generic.List[string]]::new()
$Warnings = [System.Collections.Generic.List[string]]::new()
$Passed = [System.Collections.Generic.List[string]]::new()

if (-not (Test-Path $CsvPath)) { throw "Missing ledger: $CsvPath" }
$Rows = @(Import-Csv -LiteralPath $CsvPath)
$HeaderLine = Get-Content -LiteralPath $CsvPath -TotalCount 1
$Headers = @($HeaderLine -split ',') | ForEach-Object { $_.Trim().Trim('"') }

$Required = @(
    "provenance_id","asset_id","output_file","output_sha256",
    "verification_status","notes","prompt_id","model_name","model_version",
    "generation_date","seed","parameters_json","reference_ids",
    "human_edits","transformations"
)
foreach ($col in $Required) {
    if ($col -notin $Headers) { $Errors.Add("Missing required column: $col") }
}
if ($Errors.Count -eq 0) { $Passed.Add("Required schema columns exist.") }

# Load canonical asset IDs when a master registry is available.
$AssetIds = @{}
if (Test-Path $MasterPath) {
    foreach ($a in @(Import-Csv -LiteralPath $MasterPath)) {
        if ($a.asset_id) { $AssetIds[[string]$a.asset_id] = $true }
    }
} else {
    $Warnings.Add("Asset master not found; asset_id existence could not be checked.")
}

$Seen = @{}
$Index = 0
foreach ($r in $Rows) {
    $Index++
    $id = [string]$r.provenance_id
    $asset = [string]$r.asset_id
    $label = if ($id) { $id } else { "CSV row $($Index + 1)" }

    if ([string]::IsNullOrWhiteSpace($id)) { $Errors.Add("$label has no provenance_id.") }
    elseif ($Seen.ContainsKey($id)) { $Errors.Add("Duplicate provenance_id: $id") }
    else { $Seen[$id] = $true }

    if ([string]::IsNullOrWhiteSpace($asset)) {
        $Errors.Add("$label has no asset_id.")
    } elseif ($AssetIds.Count -gt 0 -and -not $AssetIds.ContainsKey($asset)) {
        $Errors.Add("$label refers to unknown asset_id '$asset'.")
    }

    if ([string]::IsNullOrWhiteSpace([string]$r.verification_status)) {
        $Errors.Add("$label has no verification_status.")
    }

    foreach ($field in @("generation_date","model_name","model_version","prompt_id","seed","parameters_json","reference_ids","human_edits","transformations")) {
        if ([string]::IsNullOrWhiteSpace([string]$r.$field)) {
            $Warnings.Add("${label}: $field is blank; mark NOT_CAPTURED or provide evidence.")
        }
    }

    if ($r.parameters_json -and $r.parameters_json -notin @("NOT_CAPTURED","NOT_PROVIDED_BY_PLATFORM","NOT_APPLICABLE")) {
        try { $null = ConvertFrom-Json -InputObject $r.parameters_json -ErrorAction Stop }
        catch { $Errors.Add("$label has invalid parameters_json.") }
    }

    if ($r.output_file -and $r.output_file -notin @("NOT_CAPTURED","NOT_APPLICABLE")) {
        $outputPath = [string]$r.output_file
        if (-not [System.IO.Path]::IsPathRooted($outputPath)) {
            $outputPath = Join-Path $Root $outputPath
        }
        if (-not (Test-Path -LiteralPath $outputPath -PathType Leaf)) {
            $Warnings.Add("${label}: output file not found: $($r.output_file)")
        } elseif ($r.output_sha256 -and $r.output_sha256 -notin @("NOT_CAPTURED","NOT_APPLICABLE")) {
            $actual = (Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash
            if ($actual -ne [string]$r.output_sha256) {
                $Errors.Add("${label}: output SHA-256 mismatch.")
            }
        } else {
            $Warnings.Add("${label}: output exists but no verifiable output_sha256 is recorded.")
        }
    }

    if ($r.verification_status -eq "VERIFIED_FROM_PRIMARY_LOG") {
        if (-not $r.evidence_locations) {
            $Errors.Add("$label claims primary-log verification but has no evidence_locations.")
        }
    }
    if ($r.verification_status -like "VERIFIED*") {
        if (-not $r.reviewer -or -not $r.review_date) {
            $Warnings.Add("$label is marked verified but reviewer/review_date is incomplete.")
        }
    }
}

if ($Rows.Count -eq 0) {
    $Warnings.Add("Ledger contains no generation records. This is valid if no actual logs/files have been registered; do not fabricate records.")
} else {
    $Passed.Add("Inspected $($Rows.Count) provenance row(s).")
}

$Report = @()
$Report += "# AI Provenance Validation Report"
$Report += ""
$Report += "- Run time: $(Get-Date -Format o)"
$Report += "- Ledger rows: $($Rows.Count)"
$Report += "- Errors: $($Errors.Count)"
$Report += "- Warnings: $($Warnings.Count)"
$Report += ""
$Report += "## Passed checks"
if ($Passed.Count) { $Report += $Passed | ForEach-Object { "- $_" } } else { $Report += "- None" }
$Report += ""
$Report += "## Errors"
if ($Errors.Count) { $Report += $Errors | ForEach-Object { "- $_" } } else { $Report += "- None" }
$Report += ""
$Report += "## Warnings"
if ($Warnings.Count) { $Report += $Warnings | ForEach-Object { "- $_" } } else { $Report += "- None" }
$Report += ""
$Report += "## Interpretation"
$Report += "A passing structural validation does not prove that the model, prompt, dates, or references are historically authentic. Those claims require external evidence review."
Set-Content -LiteralPath $ReportPath -Value $Report -Encoding UTF8

"`n========== PROVENANCE VALIDATION =========="
"Rows: $($Rows.Count)"
"Errors: $($Errors.Count)"
"Warnings: $($Warnings.Count)"
"Report: $ReportPath"
if ($Errors.Count) {
    $Errors | ForEach-Object { Write-Host "ERROR: $_" -ForegroundColor Red }
    exit 1
}
if ($Warnings.Count) {
    $Warnings | ForEach-Object { Write-Host "WARNING: $_" -ForegroundColor Yellow }
}
Write-Host "Validation completed. Review warnings before approving any asset." -ForegroundColor Green

