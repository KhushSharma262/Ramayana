param(
    [string]$Root = "C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\ANIMALS\04_MOVEMENT"
)

$Errors = New-Object System.Collections.Generic.List[string]
$Warnings = New-Object System.Collections.Generic.List[string]

$RequiredDirs = @(
    "01_CORE",
    "02_MOVEMENT_DATABASE",
    "03_MOVEMENT_ENGINE",
    "04_BODY_MECHANICS",
    "05_TERRAIN_ENVIRONMENT",
    "06_INTERACTION",
    "07_SPECIAL_MOVEMENT",
    "08_BACKGROUND",
    "09_RESEARCH_CONTROL",
    "10_HANDOFFS"
)

foreach ($Dir in $RequiredDirs) {
    $Path = Join-Path $Root $Dir

    if (-not (Test-Path $Path)) {
        $Errors.Add("MISSING REQUIRED DIRECTORY: $Dir")
    }
}

$RequiredFiles = @(
    "01_CORE\movement_index.md",
    "01_CORE\movement_definition.md",
    "02_MOVEMENT_DATABASE\movement_database_index.md",
    "02_MOVEMENT_DATABASE\mammals_movement.md",
    "02_MOVEMENT_DATABASE\birds_movement.md",
    "02_MOVEMENT_DATABASE\reptiles_movement.md",
    "02_MOVEMENT_DATABASE\amphibians_movement.md",
    "02_MOVEMENT_DATABASE\fish_movement.md",
    "02_MOVEMENT_DATABASE\invertebrates_movement.md",
    "09_RESEARCH_CONTROL\movement_research_and_evidence.md",
    "09_RESEARCH_CONTROL\movement_conflicts_and_uncertainty.md",
    "09_RESEARCH_CONTROL\movement_control_and_validation.md",
    "09_RESEARCH_CONTROL\cinematic_exaggeration_policy.md",
    "09_RESEARCH_CONTROL\supernatural_movement_policy.md",
    "09_RESEARCH_CONTROL\historical_reconstruction_policy.md",
    "09_RESEARCH_CONTROL\context_registry.md",
    "09_RESEARCH_CONTROL\movement_scope_and_ownership.md",
    "09_RESEARCH_CONTROL\movement_architecture_manifest.json",
    "10_HANDOFFS\handoffs.md",
    "MOVEMENT_SYSTEM_STATUS.md"
)

foreach ($File in $RequiredFiles) {
    $Path = Join-Path $Root $File

    if (-not (Test-Path $Path)) {
        $Errors.Add("MISSING REQUIRED FILE: $File")
    }
}

# ------------------------------------------------------------
# Root-level orphan detection
# ------------------------------------------------------------

$AllowedRootFiles = @(
    "MOVEMENT_SYSTEM_STATUS.md"
)

Get-ChildItem $Root -File -Force |
    Where-Object { $_.Name -notin $AllowedRootFiles } |
    ForEach-Object {
        $Errors.Add("UNEXPECTED ROOT FILE: $($_.Name)")
    }

# ------------------------------------------------------------
# Entity-template safety
# ------------------------------------------------------------

$DatabaseFiles = Get-ChildItem `
    (Join-Path $Root "02_MOVEMENT_DATABASE") `
    -Filter "*.md" `
    -File

foreach ($File in $DatabaseFiles) {

    $Text = Get-Content $File.FullName -Raw

    if ($Text -match '(?m)^## ENTITY:\s*<ENTITY_ID>\s*$') {
        $Errors.Add("UNSAFE ENTITY TEMPLATE PARSER MARKER: $($File.Name)")
    }
}

# ------------------------------------------------------------
# Architecture contamination check
# ------------------------------------------------------------

$ForbiddenActiveDirs = @(
    "BIOMECHANICS",
    "GAITS",
    "MOVEMENT_VOCABULARY",
    "NATURAL_IMPERFECTION",
    "PHYSICAL_CONSTRAINTS"
)

foreach ($Dir in $ForbiddenActiveDirs) {

    $Path = Join-Path $Root $Dir

    if (Test-Path $Path) {
        $Errors.Add("LEGACY ARCHITECTURE STILL ACTIVE: $Dir")
    }
}

# ------------------------------------------------------------
# Required exception controls
# ------------------------------------------------------------

$ExceptionControls = @(
    "cinematic_exaggeration_policy.md",
    "supernatural_movement_policy.md",
    "historical_reconstruction_policy.md",
    "context_registry.md"
)

foreach ($File in $ExceptionControls) {

    $Path = Join-Path $Root "09_RESEARCH_CONTROL\$File"

    if (-not (Test-Path $Path)) {
        $Errors.Add("MISSING EXCEPTION CONTROL: $File")
    }
}

# ------------------------------------------------------------
# Final result
# ------------------------------------------------------------

Write-Host ""
Write-Host "============================================="
Write-Host "MOVEMENT ARCHITECTURE VALIDATION"
Write-Host "============================================="

if ($Errors.Count -eq 0) {

    Write-Host ""
    Write-Host "PASS: ARCHITECTURE INTEGRITY"
    Write-Host "PASS: REQUIRED DIRECTORIES"
    Write-Host "PASS: REQUIRED FILES"
    Write-Host "PASS: ENTITY TEMPLATE SAFETY"
    Write-Host "PASS: LEGACY ARCHITECTURE ISOLATION"
    Write-Host "PASS: EXCEPTION CONTROLS"
    Write-Host ""
    Write-Host "RESULT: ARCHITECTURE VALID"
    Write-Host "PRODUCTION DATA: BLOCKED UNTIL RESEARCH + APPROVAL + SNAPSHOT"
}
else {

    Write-Host ""

    foreach ($Error in $Errors) {
        Write-Host "FAIL: $Error"
    }

    Write-Host ""
    Write-Host "RESULT: ARCHITECTURE BLOCKED"
}

if ($Warnings.Count -gt 0) {

    Write-Host ""
    foreach ($Warning in $Warnings) {
        Write-Host "WARNING: $Warning"
    }
}

Write-Host ""
Write-Host "============================================="
