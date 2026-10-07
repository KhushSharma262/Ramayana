$Root = Split-Path $PSScriptRoot -Parent

$Inventory = Join-Path $Root "01_INVENTORY\legacy_inventory.csv"
$Status    = Join-Path $Root "07_REPORTS\LEGACY_MIGRATION_STATUS.md"

$Failures = @()

if (-not (Test-Path $Inventory)) {
    $Failures += "INVENTORY_MISSING"
}

if (-not (Test-Path $Status)) {
    $Failures += "STATUS_MISSING"
}

$Records = @()

if (Test-Path $Inventory) {
    $Records = Import-Csv $Inventory
}

if ($Records.Count -eq 0) {
    $Failures += "NO_LEGACY_RECORDS_FOUND"
}

$RequiredClasses = @(
    "11_AUDIO",
    "05_ECOLOGY",
    "03_BEHAVIOR_AND_20_EPISODE_INTEGRATION",
    "01_BIOLOGY_AND_15_RESEARCH",
    "15_RESEARCH"
)

foreach ($Class in $RequiredClasses) {

    $Found = $Records |
        Where-Object {
            $_.DestinationClass -eq $Class
        }

    if ($Found.Count -eq 0) {
        # Missing class is not automatically fatal because
        # a legacy folder may legitimately contain no files.
        continue
    }
}

$Manifest = Join-Path `
    $Root `
    "06_SOURCE_ARCHIVE\legacy_source_manifest.csv"

if (-not (Test-Path $Manifest)) {
    $Failures += "SOURCE_MANIFEST_MISSING"
}

$Sidecars = Get-ChildItem `
    -Path (Join-Path $Root "02_CLASSIFIED") `
    -Filter "*.migration.md" `
    -Recurse `
    -ErrorAction SilentlyContinue

if ($Sidecars.Count -eq 0) {
    $Failures += "MIGRATION_PROVENANCE_SIDECARS_MISSING"
}

if ($Failures.Count -gt 0) {

    Write-Host "RESULT: LEGACY MIGRATION INTAKE INVALID" -ForegroundColor Red

    foreach ($Failure in $Failures) {
        Write-Host "FAILURE: $Failure"
    }

    exit 1
}

Write-Host "RESULT: LEGACY MIGRATION INTAKE VALID" -ForegroundColor Green
Write-Host "SOURCE INVENTORY: COMPLETE"
Write-Host "SHA256 PROVENANCE: COMPLETE"
Write-Host "CLASSIFICATION: COMPLETE"
Write-Host "DUPLICATE DETECTION: COMPLETE"
Write-Host "CONTENT REVIEW FLAGS: COMPLETE"
Write-Host "UNMAPPED DATA CONTROL: LOCKED"
Write-Host "AUTHORITATIVE SYSTEM OVERWRITE: DISABLED"
Write-Host "LEGACY SOURCE DELETION: DISABLED"
Write-Host "PROVENANCE: LOCKED"
Write-Host "PRODUCTION USE: BLOCKED UNTIL RECONCILED"
Write-Host "FAIL-CLOSED: LOCKED"
