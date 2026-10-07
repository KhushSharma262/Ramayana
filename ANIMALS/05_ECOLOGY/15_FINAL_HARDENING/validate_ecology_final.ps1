$ErrorActionPreference = "Stop"

$ROOT = Split-Path -Parent $PSScriptRoot
$Errors = New-Object System.Collections.Generic.List[string]
$Warnings = New-Object System.Collections.Generic.List[string]

function Require-File {
    param([string]$Relative)

    $Path = Join-Path $ROOT $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING: $Relative")
        return $false
    }

    $Content = Get-Content -LiteralPath $Path -Raw

    if ($Content.Trim().Length -eq 0) {
        $Errors.Add("EMPTY: $Relative")
        return $false
    }

    return $true
}

function Require-Text {
    param(
        [string]$Relative,
        [string]$Pattern
    )

    $Path = Join-Path $ROOT $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING FOR TEXT CHECK: $Relative")
        return
    }

    $Content = Get-Content -LiteralPath $Path -Raw

    if ($Content -notmatch [regex]::Escape($Pattern)) {
        $Errors.Add("REQUIRED CONTROL MISSING: [$Pattern] in $Relative")
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host "RAMAYAN ECOLOGY FINAL ARCHITECTURE VALIDATOR"
Write-Host "==============================================="
Write-Host ""

# ------------------------------------------------
# Required architecture
# ------------------------------------------------

$Required = @(
    "01_CORE",
    "02_ECOLOGY_DATABASE",
    "03_HABITATS_AND_LANDSCAPES",
    "04_VEGETATION",
    "05_WATER_SYSTEMS",
    "06_CLIMATE_AND_SEASONALITY",
    "07_SPECIES_AND_POPULATIONS",
    "08_HUMAN_ECOLOGY",
    "09_ECOLOGICAL_INTERACTIONS",
    "10_DISTURBANCE_AND_CHANGE",
    "11_SPECIAL_ECOLOGY",
    "12_BACKGROUND_WORLD",
    "13_RESEARCH_CONTROL",
    "14_HANDOFFS",
    "15_FINAL_HARDENING"
)

foreach ($D in $Required) {
    $Path = Join-Path $ROOT $D

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING DIRECTORY: $D")
    }
}

# ------------------------------------------------
# Final hardening controls
# ------------------------------------------------

$Controls = @(
    "15_FINAL_HARDENING\01_ENTITY_IDENTITY_AND_TAXONOMY.md",
    "15_FINAL_HARDENING\02_EVIDENCE_CLAIM_PROVENANCE.md",
    "15_FINAL_HARDENING\03_SPATIAL_TEMPORAL_DEMOGRAPHIC_MODEL.md",
    "15_FINAL_HARDENING\04_ECOLOGICAL_CAUSALITY_AND_FOODWEB.md",
    "15_FINAL_HARDENING\05_SCENE_TO_PIXEL_TRACEABILITY.md",
    "15_FINAL_HARDENING\06_CROSS_SYSTEM_GOVERNANCE.md",
    "15_FINAL_HARDENING\07_CANONICAL_HISTORICAL_CONTROL.md",
    "15_FINAL_HARDENING\08_RESEARCH_RECORD_SCHEMA.md",
    "15_FINAL_HARDENING\ecology_entity_registry.json",
    "15_FINAL_HARDENING\ecology_production_trace_schema.json",
    "15_FINAL_HARDENING\ecology_cross_system_registry.json",
    "15_FINAL_HARDENING\validate_ecology_final.ps1",
    "ecology_architecture_manifest.json",
    "ECOLOGY_SYSTEM_STATUS.md"
)

foreach ($C in $Controls) {
    Require-File $C | Out-Null
}

# ------------------------------------------------
# Manifest
# ------------------------------------------------

$ManifestPath = Join-Path $ROOT "ecology_architecture_manifest.json"

if (Test-Path -LiteralPath $ManifestPath) {

    try {
        $Manifest = Get-Content -LiteralPath $ManifestPath -Raw | ConvertFrom-Json

        if ($Manifest.architecture_version -ne "1.3") {
            $Errors.Add("MANIFEST VERSION IS NOT 1.3")
        }

        if ($Manifest.status -ne "FROZEN") {
            $Errors.Add("ARCHITECTURE IS NOT FROZEN")
        }

        if ($Manifest.production_status -notmatch "BLOCKED") {
            $Errors.Add("PRODUCTION MUST REMAIN BLOCKED UNTIL APPROVAL")
        }

    } catch {
        $Errors.Add("MANIFEST JSON INVALID")
    }
}

# ------------------------------------------------
# Mandatory hard rules
# ------------------------------------------------

$Rules = @{
    "15_FINAL_HARDENING\01_ENTITY_IDENTITY_AND_TAXONOMY.md" = @(
        "UNRESOLVED_TAXON",
        "TAXONOMIC DRIFT",
        "DUPLICATE DETECTION"
    )

    "15_FINAL_HARDENING\02_EVIDENCE_CLAIM_PROVENANCE.md" = @(
        "SOURCE",
        "EVIDENCE",
        "CLAIM",
        "INTERPRETATION",
        "SOURCE CIRCULARITY",
        "AI_OUTPUT"
    )

    "15_FINAL_HARDENING\03_SPATIAL_TEMPORAL_DEMOGRAPHIC_MODEL.md" = @(
        "SPATIAL SCALE",
        "TEMPORAL",
        "TEMPORAL DURATION",
        "DEMOGRAPHY",
        "HISTORICAL CONTROL"
    )

    "15_FINAL_HARDENING\04_ECOLOGICAL_CAUSALITY_AND_FOODWEB.md" = @(
        "MASTER CAUSAL MODEL",
        "FOOD WEB",
        "CARRYING CAPACITY",
        "HUMAN ECOLOGY",
        "IMPOSSIBLE COMBINATION"
    )

    "15_FINAL_HARDENING\05_SCENE_TO_PIXEL_TRACEABILITY.md" = @(
        "SCENE TO PIXEL",
        "CAMERA SAMPLING",
        "PROMPT VALIDATION",
        "ASSET BINDING",
        "REGENERATION DRIFT",
        "FINAL PIXEL AUDIT"
    )

    "15_FINAL_HARDENING\06_CROSS_SYSTEM_GOVERNANCE.md" = @(
        "OWNERSHIP",
        "SILENT OVERWRITE",
        "CHANGE PROPAGATION",
        "ROLLBACK"
    )

    "15_FINAL_HARDENING\07_CANONICAL_HISTORICAL_CONTROL.md" = @(
        "CANONICAL",
        "HISTORICAL",
        "SUPERNATURAL",
        "CANONICAL → ECOLOGY BRIDGE"
    )

    "15_FINAL_HARDENING\08_RESEARCH_RECORD_SCHEMA.md" = @(
        "EVIDENCE",
        "DEPENDENCIES",
        "APPROVAL",
        "SNAPSHOT",
        "UNKNOWN"
    )
}

foreach ($Entry in $Rules.GetEnumerator()) {
    foreach ($Rule in $Entry.Value) {
        Require-Text $Entry.Key $Rule
    }
}

# ------------------------------------------------
# JSON validation
# ------------------------------------------------

$JSONFiles = @(
    "15_FINAL_HARDENING\ecology_entity_registry.json",
    "15_FINAL_HARDENING\ecology_production_trace_schema.json",
    "15_FINAL_HARDENING\ecology_cross_system_registry.json",
    "ecology_architecture_manifest.json"
)

foreach ($J in $JSONFiles) {

    $Path = Join-Path $ROOT $J

    try {
        Get-Content -LiteralPath $Path -Raw | ConvertFrom-Json | Out-Null
    } catch {
        $Errors.Add("INVALID JSON: $J")
    }
}

# ------------------------------------------------
# Template contamination check
# ------------------------------------------------

$AllMarkdown = Get-ChildItem -LiteralPath $ROOT -Recurse -File -Filter "*.md"

foreach ($File in $AllMarkdown) {

    $Content = Get-Content -LiteralPath $File.FullName -Raw

    $Forbidden = @(
        "TODO: INVENT",
        "MAKE UP",
        "ASSUME AS FACT",
        "AI GENERATED EVIDENCE"
    )

    foreach ($F in $Forbidden) {

        if ($Content -match [regex]::Escape($F)) {
            $Errors.Add("FORBIDDEN TEMPLATE LANGUAGE: $($File.FullName) -> $F")
        }
    }
}

# ------------------------------------------------
# Production firewall
# ------------------------------------------------

$StatusPath = Join-Path $ROOT "ECOLOGY_SYSTEM_STATUS.md"

if (Test-Path -LiteralPath $StatusPath) {

    $Status = Get-Content -LiteralPath $StatusPath -Raw

    if ($Status -notmatch "architecture_state: FROZEN") {
        $Errors.Add("ECOLOGY STATUS DOES NOT REPORT FROZEN ARCHITECTURE")
    }

    if ($Status -notmatch "production_state: BLOCKED") {
        $Errors.Add("ECOLOGY STATUS DOES NOT KEEP PRODUCTION BLOCKED")
    }
}

# ------------------------------------------------
# Legacy warning
# ------------------------------------------------

$Legacy = Get-ChildItem -LiteralPath $ROOT -Recurse -Directory |
    Where-Object { $_.Name -like "_LEGACY_REVIEW_*" }

if ($Legacy.Count -gt 0) {
    $Warnings.Add("LEGACY QUARANTINE EXISTS. REVIEW IS REQUIRED BEFORE PROMOTION.")
}

# ------------------------------------------------
# Research-not-started protection
# ------------------------------------------------

$ResearchRecords = Get-ChildItem -LiteralPath $ROOT -Recurse -File |
    Where-Object {
        $_.Name -match "research_record|claim_registry|ecological_state_registry"
    }

if ($ResearchRecords.Count -eq 0) {
    $Warnings.Add("NO POPULATED ECOLOGICAL RESEARCH REGISTRY DETECTED. THIS IS EXPECTED BEFORE RESEARCH.")
}

# ------------------------------------------------
# RESULT
# ------------------------------------------------

Write-Host ""

if ($Warnings.Count -gt 0) {
    Write-Host "WARNINGS:"
    foreach ($W in $Warnings) {
        Write-Host "  - $W"
    }
    Write-Host ""
}

if ($Errors.Count -gt 0) {

    Write-Host "ERRORS:"
    foreach ($E in $Errors) {
        Write-Host "  - $E"
    }

    Write-Host ""
    Write-Host "RESULT: ECOLOGY ARCHITECTURE INVALID"
    exit 1
}

Write-Host "RESULT: ECOLOGY ARCHITECTURE VALID"
Write-Host "VERSION: 1.3"
Write-Host "STATE: FROZEN"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOT"
Write-Host "TRACEABILITY: SOURCE -> FINAL SHOT"
Write-Host ""
