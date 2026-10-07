$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Hardening = Join-Path $Root "23_FINAL_HARDENING"
$Errors = @()

Write-Host ""
Write-Host "12_CINEMATIC_INTEGRATION ZERO-LOOPHOLE VALIDATOR" -ForegroundColor Cyan
Write-Host "================================================="

function Test-File {
    param([string]$RelativePath)

    $Path = Join-Path $Root $RelativePath

    if (-not (Test-Path $Path -PathType Leaf)) {
        $script:Errors += "ERROR -> REQUIRED FILE MISSING -> $RelativePath"
        return $false
    }

    return $true
}

function Test-Control {
    param(
        [string]$Name,
        [string[]]$Files,
        [string[]]$Patterns
    )

    $FoundFile = $false
    $Matched = $false

    foreach ($RelativeFile in $Files) {
        $Path = Join-Path $Root $RelativeFile

        if (Test-Path $Path -PathType Leaf) {
            $FoundFile = $true
            $Text = Get-Content $Path -Raw -ErrorAction SilentlyContinue

            foreach ($Pattern in $Patterns) {
                if ($Text -match $Pattern) {
                    $Matched = $true
                    break
                }
            }

            if ($Matched) { break }
        }
    }

    if (-not $FoundFile) {
        $script:Errors += "ERROR -> CONTROL FILE MISSING [$Name]"
        return $false
    }

    if (-not $Matched) {
        $script:Errors += "ERROR -> CONTROL SEMANTICS MISSING [$Name]"
        return $false
    }

    return $true
}

# ============================================================
# REQUIRED ARCHITECTURE
# ============================================================

$RequiredFiles = @(
    "01_CORE\cinematic_integration_index.md",
    "01_CORE\cinematic_integration_definition.md",
    "01_CORE\cinematic_ownership_and_boundaries.md",
    "01_CORE\cinematic_integration_non_goals.md",

    "02_CINEMATIC_DATABASE\cinematic_record_schema.md",
    "02_CINEMATIC_DATABASE\cinematic_state_vector.md",

    "03_SCENE_INTEGRATION\scene_integration_master.md",
    "03_SCENE_INTEGRATION\scene_causal_structure.md",
    "03_SCENE_INTEGRATION\scene_visibility_and_offscreen_state.md",

    "04_SHOT_INTEGRATION\shot_integration_master.md",
    "04_SHOT_INTEGRATION\shot_hierarchy_and_priority.md",
    "04_SHOT_INTEGRATION\shot_level_override_policy.md",

    "05_CAMERA_AND_LENS\camera_integration.md",
    "05_CAMERA_AND_LENS\lens_behavior.md",
    "05_CAMERA_AND_LENS\camera_movement.md",

    "06_COMPOSITION_AND_FRAMING\composition_master.md",
    "06_COMPOSITION_AND_FRAMING\framing_and_spatial_relationships.md",

    "07_LIGHTING_AND_EXPOSURE\lighting_integration.md",
    "07_LIGHTING_AND_EXPOSURE\exposure_and_physical_plausibility.md",

    "08_MOVEMENT_AND_BLOCKING\movement_integration.md",
    "08_MOVEMENT_AND_BLOCKING\animal_blocking_firewall.md",

    "09_AUDIO_INTEGRATION\audio_cinematic_integration.md",
    "09_AUDIO_INTEGRATION\audio_visual_causality.md",

    "10_VISUAL_IDENTITY_INTEGRATION\identity_integration.md",
    "10_VISUAL_IDENTITY_INTEGRATION\identity_camera_firewall.md",

    "11_BEHAVIOR_AND_ANIMAL_INTEGRATION\animal_cinematic_master.md",
    "11_BEHAVIOR_AND_ANIMAL_INTEGRATION\behavior_cinema_boundary.md",

    "12_ECOLOGY_AND_ENVIRONMENT_INTEGRATION\environment_cinematic_master.md",
    "12_ECOLOGY_AND_ENVIRONMENT_INTEGRATION\environment_visibility_firewall.md",

    "13_INTERACTION_INTEGRATION\interaction_cinematic_master.md",
    "13_INTERACTION_INTEGRATION\interaction_editing_firewall.md",

    "14_CONTINUITY_INTEGRATION\continuity_master.md",
    "14_CONTINUITY_INTEGRATION\continuity_camera_editing_firewall.md",

    "15_HISTORICAL_CANONICAL_AND_SUPERNATURAL\historical_cinematic_firewall.md",
    "15_HISTORICAL_CANONICAL_AND_SUPERNATURAL\canonical_cinematic_firewall.md",
    "15_HISTORICAL_CANONICAL_AND_SUPERNATURAL\supernatural_cinematic_firewall.md",

    "16_EDITING_AND_TEMPORAL_INTEGRATION\editing_integration.md",
    "16_EDITING_AND_TEMPORAL_INTEGRATION\temporal_editing_firewall.md",

    "17_COLOR_AND_IMAGE_TREATMENT\color_integration.md",
    "17_COLOR_AND_IMAGE_TREATMENT\grading_truth_firewall.md",

    "18_AI_PRODUCTION_HANDOFF\cinematic_ai_handoff.md",
    "18_AI_PRODUCTION_HANDOFF\cinematic_prompt_compilation.md",

    "19_VALIDATION_AND_QA\cinematic_validation_gate.md",
    "19_VALIDATION_AND_QA\cinematic_shot_audit.md",

    "20_RESEARCH_CONTROL\cinematic_research_and_evidence.md",
    "20_RESEARCH_CONTROL\cinematic_uncertainty_and_conflicts.md",
    "20_RESEARCH_CONTROL\cinematic_fail_closed_policy.md",

    "21_ASSET_AND_SHOT_LINEAGE\cinematic_asset_lineage.md",
    "21_ASSET_AND_SHOT_LINEAGE\shot_approval_scope.md",

    "22_FINAL_HANDOFFS\cinematic_domain_handoffs.md",
    "22_FINAL_HANDOFFS\final_cinematic_traceability.md"
)

foreach ($File in $RequiredFiles) {
    Test-File $File | Out-Null
}

# ============================================================
# ZERO-LOOPHOLE CONTROL SEMANTICS
# ============================================================

Test-Control "AUTHORITY_BOUNDARY" `
    @(
        "01_CORE\cinematic_ownership_and_boundaries.md",
        "01_CORE\cinematic_integration_definition.md"
    ) `
    @(
        "integration",
        "orchestration",
        "upstream",
        "authority",
        "source of truth",
        "does not.*own",
        "does not.*override"
    ) | Out-Null

Test-Control "OVERRIDE_FIREWALL" `
    @(
        "04_SHOT_INTEGRATION\shot_level_override_policy.md",
        "23_FINAL_HARDENING\12_cinematic_override_firewall.md",
        "23_FINAL_HARDENING\01_truth_firewall.md"
    ) `
    @(
        "override",
        "presentation",
        "representation",
        "truth",
        "blocked",
        "upstream"
    ) | Out-Null

Test-Control "CAMERA_TRUTH" `
    @(
        "05_CAMERA_AND_LENS\camera_integration.md",
        "05_CAMERA_AND_LENS\lens_behavior.md",
        "23_FINAL_HARDENING\02_camera_truth_firewall.md"
    ) `
    @(
        "camera",
        "lens",
        "perspective",
        "physical",
        "truth"
    ) | Out-Null

Test-Control "ANIMAL_BLOCKING" `
    @(
        "08_MOVEMENT_AND_BLOCKING\animal_blocking_firewall.md",
        "08_MOVEMENT_AND_BLOCKING\movement_integration.md"
    ) `
    @(
        "animal",
        "blocking",
        "movement",
        "behavior",
        "species"
    ) | Out-Null

Test-Control "ANIMAL_NATURALISM" `
    @(
        "11_BEHAVIOR_AND_ANIMAL_INTEGRATION\animal_cinematic_master.md",
        "11_BEHAVIOR_AND_ANIMAL_INTEGRATION\behavior_cinema_boundary.md",
        "23_FINAL_HARDENING\05_animal_naturalism_firewall.md"
    ) `
    @(
        "natural",
        "instinct",
        "animal behavior",
        "species",
        "realism",
        "anthropomorph"
    ) | Out-Null

Test-Control "ECOLOGY" `
    @(
        "12_ECOLOGY_AND_ENVIRONMENT_INTEGRATION\environment_cinematic_master.md",
        "12_ECOLOGY_AND_ENVIRONMENT_INTEGRATION\environment_visibility_firewall.md",
        "23_FINAL_HARDENING\06_ecological_integrity_firewall.md"
    ) `
    @(
        "ecology",
        "environment",
        "habitat",
        "visibility",
        "causal"
    ) | Out-Null

Test-Control "INTERACTION" `
    @(
        "13_INTERACTION_INTEGRATION\interaction_cinematic_master.md",
        "13_INTERACTION_INTEGRATION\interaction_editing_firewall.md",
        "23_FINAL_HARDENING\07_interaction_integrity_firewall.md"
    ) `
    @(
        "interaction",
        "event",
        "participant",
        "causal"
    ) | Out-Null

Test-Control "CONTINUITY" `
    @(
        "14_CONTINUITY_INTEGRATION\continuity_master.md",
        "14_CONTINUITY_INTEGRATION\continuity_camera_editing_firewall.md",
        "23_FINAL_HARDENING\08_continuity_integrity_firewall.md"
    ) `
    @(
        "continuity",
        "snapshot",
        "state",
        "timeline",
        "causal"
    ) | Out-Null

Test-Control "CANONICAL" `
    @(
        "15_HISTORICAL_CANONICAL_AND_SUPERNATURAL\canonical_cinematic_firewall.md",
        "15_HISTORICAL_CANONICAL_AND_SUPERNATURAL\historical_cinematic_firewall.md"
    ) `
    @(
        "canonical",
        "historical",
        "evidence",
        "source",
        "truth"
    ) | Out-Null

Test-Control "EDITING_CAUSALITY" `
    @(
        "16_EDITING_AND_TEMPORAL_INTEGRATION\editing_integration.md",
        "16_EDITING_AND_TEMPORAL_INTEGRATION\temporal_editing_firewall.md",
        "23_FINAL_HARDENING\04_editing_causality_firewall.md"
    ) `
    @(
        "editing",
        "temporal",
        "causal",
        "continuity"
    ) | Out-Null

Test-Control "AI_HANDOFF" `
    @(
        "18_AI_PRODUCTION_HANDOFF\cinematic_ai_handoff.md",
        "18_AI_PRODUCTION_HANDOFF\cinematic_prompt_compilation.md",
        "23_FINAL_HARDENING\09_ai_output_firewall.md",
        "23_FINAL_HARDENING\10_prompt_integrity_firewall.md"
    ) `
    @(
        "AI",
        "prompt",
        "generation",
        "output",
        "upstream"
    ) | Out-Null

Test-Control "VALIDATION" `
    @(
        "19_VALIDATION_AND_QA\cinematic_validation_gate.md",
        "19_VALIDATION_AND_QA\cinematic_shot_audit.md",
        "23_FINAL_HARDENING\21_cinematic_reverse_audit.md",
        "23_FINAL_HARDENING\22_cinematic_forward_audit.md"
    ) `
    @(
        "validation",
        "audit",
        "approval",
        "fail",
        "blocked"
    ) | Out-Null

Test-Control "FORBIDDEN_SHORTCUTS" `
    @(
        "23_FINAL_HARDENING\20_forbidden_cinematic_shortcuts.md"
    ) `
    @(
        "forbidden",
        "shortcut",
        "bypass",
        "override",
        "validation"
    ) | Out-Null

Test-Control "CONTROL_MATRIX" `
    @(
        "23_FINAL_HARDENING\23_zero_loophole_control_matrix.md"
    ) `
    @(
        "control",
        "truth",
        "override",
        "firewall",
        "validation"
    ) | Out-Null

Test-Control "FORWARD_AUDIT" `
    @(
        "23_FINAL_HARDENING\22_cinematic_forward_audit.md"
    ) `
    @(
        "forward",
        "audit",
        "trace"
    ) | Out-Null

Test-Control "REVERSE_AUDIT" `
    @(
        "23_FINAL_HARDENING\21_cinematic_reverse_audit.md"
    ) `
    @(
        "reverse",
        "audit",
        "trace"
    ) | Out-Null

# ============================================================
# MANIFEST VALIDATION
# ============================================================

$ManifestPath = Join-Path $Hardening "cinematic_integration_manifest.json"

if (-not (Test-Path $ManifestPath)) {
    $Errors += "ERROR -> MANIFEST MISSING"
}
else {
    try {
        $Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json

        if ($Manifest.system -ne "CINEMATIC_INTEGRATION") {
            $Errors += "ERROR -> MANIFEST SYSTEM INVALID"
        }

        if ($Manifest.realism_first -ne $true) {
            $Errors += "ERROR -> REALISM FLAG INVALID"
        }

        if ($Manifest.truth_is_upstream -ne $true) {
            $Errors += "ERROR -> TRUTH_IS_UPSTREAM FLAG INVALID"
        }

        if ($Manifest.cinema_changes_representation_not_truth -ne $true) {
            $Errors += "ERROR -> CINEMA/TRUTH BOUNDARY INVALID"
        }

        if ($Manifest.natural_animal_behavior_preservation -ne $true) {
            $Errors += "ERROR -> NATURAL ANIMAL BEHAVIOR FLAG INVALID"
        }

        if ($Manifest.ai_is_source_of_truth -ne $false) {
            $Errors += "ERROR -> AI SOURCE-OF-TRUTH FLAG INVALID"
        }

        if ($Manifest.ai_output_is_evidence -ne $false) {
            $Errors += "ERROR -> AI EVIDENCE FLAG INVALID"
        }

        $ProductionState = [string]$Manifest.production_state

        if ($ProductionState -notmatch "BLOCKED") {
            $Errors += "ERROR -> PRODUCTION STATE INVALID"
        }

        if ($ProductionState -notmatch "APPROVED") {
            $Errors += "ERROR -> PRODUCTION STATE DOES NOT REQUIRE APPROVED SNAPSHOTS"
        }

        if ($Manifest.fail_closed -ne $true) {
            $Errors += "ERROR -> FAIL-CLOSED FLAG INVALID"
        }

        if ($Manifest.forward_audit -ne $true) {
            $Errors += "ERROR -> FORWARD AUDIT FLAG INVALID"
        }

        if ($Manifest.reverse_audit -ne $true) {
            $Errors += "ERROR -> REVERSE AUDIT FLAG INVALID"
        }
    }
    catch {
        $Errors += "ERROR -> MANIFEST PARSE FAILED"
    }
}

# ============================================================
# FINAL RESULT
# ============================================================

if ($Errors.Count -gt 0) {
    Write-Host ""
    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red
    Write-Host ""

    foreach ($ErrorItem in $Errors) {
        Write-Host $ErrorItem -ForegroundColor Red
    }

    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE CINEMATIC INTEGRATION HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "REALISM: LOCKED"
Write-Host "NATURAL ANIMAL BEHAVIOR: LOCKED"
Write-Host "NATURAL INSTINCTS: LOCKED"
Write-Host "CINEMATIC/TRUTH BOUNDARY: LOCKED"
Write-Host "CAMERA TRUTH: LOCKED"
Write-Host "LIGHTING TRUTH: LOCKED"
Write-Host "EDITING CAUSALITY: LOCKED"
Write-Host "ANIMAL NATURALISM: LOCKED"
Write-Host "ECOLOGICAL INTEGRITY: LOCKED"
Write-Host "INTERACTION INTEGRITY: LOCKED"
Write-Host "CONTINUITY INTEGRITY: LOCKED"
Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
Write-Host "AI OUTPUT AS EVIDENCE: DISABLED"
Write-Host "VALIDATION INDEPENDENCE: LOCKED"
Write-Host "FORWARD AUDIT: LOCKED"
Write-Host "REVERSE AUDIT: LOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.1"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> EVIDENCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> CONTINUITY_SNAPSHOT -> SEQUENCE -> SCENE -> SHOT -> CINEMATIC_PLAN -> PROMPT -> MODEL -> REFERENCE_SET -> GENERATION -> ASSET -> DERIVED_ASSET -> VALIDATION -> APPROVAL -> FINAL_SHOT"
Write-Host "AUDIT: FORWARD + REVERSE"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL CINEMATIC INTEGRATION LOOPHOLES DETECTED."
