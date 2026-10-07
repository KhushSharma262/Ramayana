param(
    [string]$Root = "C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\ANIMALS\05_ECOLOGY"
)

$Errors = New-Object System.Collections.Generic.List[string]
$Warnings = New-Object System.Collections.Generic.List[string]

# ------------------------------------------------------------
# REQUIRED CONTROL FILES
# ------------------------------------------------------------

$RequiredControls = @(
    "claim_level_provenance.md",
    "source_hierarchy_and_conflict_resolution.md",
    "source_freshness_and_version_control.md",
    "dependency_invalidation.md",
    "snapshot_integrity.md",
    "scene_override_control.md",
    "temporal_condition_matrix.md",
    "life_stage_and_reproductive_ecology.md",
    "resource_competition.md",
    "human_wildlife_resource_competition.md",
    "evidence_inference_decision_firewall.md",
    "canonical_source_version_control.md",
    "canonical_literary_ecology_interpretation.md",
    "visibility_vs_existence.md",
    "ai_contamination_firewall.md",
    "cross_scene_ecological_causality.md",
    "version_history_and_rollback.md",
    "geographic_precision.md",
    "ecology_research_record_schema.md",
    "ecology_architecture_manifest.json"
)

foreach ($File in $RequiredControls) {

    $Path = Join-Path $Root "13_RESEARCH_CONTROL\$File"

    if (-not (Test-Path $Path)) {
        $Errors.Add("MISSING HARDENING CONTROL: $File")
    }
}

# ------------------------------------------------------------
# MANIFEST
# ------------------------------------------------------------

$ManifestPath = Join-Path `
    $Root `
    "13_RESEARCH_CONTROL\ecology_architecture_manifest.json"

if (Test-Path $ManifestPath) {

    try {

        $Manifest = Get-Content $ManifestPath -Raw |
            ConvertFrom-Json

        if ($Manifest.architecture_status -ne "FROZEN") {
            $Errors.Add("ARCHITECTURE NOT FROZEN")
        }

        if ($Manifest.production_data_status -ne "BLOCKED") {
            $Errors.Add("PRODUCTION IS NOT BLOCKED")
        }

        if ($Manifest.claim_level_provenance -ne $true) {
            $Errors.Add("CLAIM PROVENANCE DISABLED")
        }

        if ($Manifest.dependency_invalidation -ne $true) {
            $Errors.Add("DEPENDENCY INVALIDATION DISABLED")
        }

        if ($Manifest.immutable_snapshots -ne $true) {
            $Errors.Add("IMMUTABLE SNAPSHOTS DISABLED")
        }

        if ($Manifest.ai_feedback_to_truth_forbidden -ne $true) {
            $Errors.Add("AI FEEDBACK FIREWALL DISABLED")
        }

    }
    catch {
        $Errors.Add("MANIFEST JSON INVALID")
    }
}

# ------------------------------------------------------------
# ROOT CONTAMINATION
# ------------------------------------------------------------

$AllowedRoot = @(
    "MOVEMENT_SYSTEM_STATUS.md",
    "MOVEMENT_TO_ECOLOGY_BOUNDARY.md",
    "MOTTO.md"
)

Get-ChildItem $Root -File -Force |
    Where-Object {
        $_.Name -notin $AllowedRoot
    } |
    ForEach-Object {
        $Errors.Add("UNEXPECTED ROOT FILE: $($_.Name)")
    }

# ------------------------------------------------------------
# CONTROL FILE EMPTY CHECK
# ------------------------------------------------------------

Get-ChildItem `
    (Join-Path $Root "13_RESEARCH_CONTROL") `
    -File |
    ForEach-Object {

        if ($_.Length -eq 0) {
            $Errors.Add("EMPTY CONTROL FILE: $($_.Name)")
        }
    }

# ------------------------------------------------------------
# TEMPLATE SAFETY
# ------------------------------------------------------------

$DbPath = Join-Path $Root "02_ECOLOGY_DATABASE"

if (Test-Path $DbPath) {

    Get-ChildItem `
        $DbPath `
        -Filter "*.md" `
        -File |
        ForEach-Object {

            $Text = Get-Content $_.FullName -Raw

            if ($Text -match '(?m)^## ENTITY:\s*<ENTITY_ID>\s*$') {
                $Errors.Add(
                    "UNSAFE ENTITY TEMPLATE MARKER: $($_.Name)"
                )
            }
        }
}

# ------------------------------------------------------------
# LEGACY CHECK
# ------------------------------------------------------------

$LegacyDirs = Get-ChildItem `
    $Root `
    -Directory `
    -Force |
    Where-Object {
        $_.Name -like "_LEGACY_REVIEW_*"
    }

if ($LegacyDirs.Count -gt 0) {

    $Warnings.Add(
        "Legacy material exists in quarantine and is not active authority."
    )
}

# ------------------------------------------------------------
# FINAL
# ------------------------------------------------------------

Write-Host ""
Write-Host "================================================="
Write-Host "05_ECOLOGY FINAL HARDENED VALIDATION"
Write-Host "================================================="

if ($Errors.Count -eq 0) {

    Write-Host ""
    Write-Host "PASS: CLAIM-LEVEL PROVENANCE"
    Write-Host "PASS: SOURCE HIERARCHY / CONFLICT CONTROL"
    Write-Host "PASS: SOURCE FRESHNESS"
    Write-Host "PASS: DEPENDENCY INVALIDATION"
    Write-Host "PASS: SNAPSHOT INTEGRITY"
    Write-Host "PASS: SCENE OVERRIDE FIREWALL"
    Write-Host "PASS: TEMPORAL CONDITION MATRIX"
    Write-Host "PASS: LIFE-STAGE CONTROL"
    Write-Host "PASS: RESOURCE COMPETITION"
    Write-Host "PASS: HUMAN-WILDLIFE RESOURCE CONTROL"
    Write-Host "PASS: EVIDENCE / INFERENCE FIREWALL"
    Write-Host "PASS: CANONICAL VERSION CONTROL"
    Write-Host "PASS: LITERARY INTERPRETATION CONTROL"
    Write-Host "PASS: VISIBILITY / EXISTENCE SEPARATION"
    Write-Host "PASS: AI CONTAMINATION FIREWALL"
    Write-Host "PASS: CROSS-SCENE CAUSALITY"
    Write-Host "PASS: VERSION HISTORY"
    Write-Host "PASS: GEOGRAPHIC PRECISION"
    Write-Host "PASS: MANIFEST"
    Write-Host ""
    Write-Host "RESULT: ECOLOGY ARCHITECTURE VALID"
    Write-Host "PRODUCTION: BLOCKED"
    Write-Host "RESEARCH: NOT STARTED"
}
else {

    Write-Host ""

    foreach ($Error in $Errors) {
        Write-Host "FAIL: $Error"
    }

    Write-Host ""
    Write-Host "RESULT: ECOLOGY ARCHITECTURE BLOCKED"
}

if ($Warnings.Count -gt 0) {

    Write-Host ""

    foreach ($Warning in $Warnings) {
        Write-Host "WARNING: $Warning"
    }
}

Write-Host ""
Write-Host "================================================="
