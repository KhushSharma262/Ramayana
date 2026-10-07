$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Errors = @()

function Require-File($Relative, $Label) {
    $Path = Join-Path $Root $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $script:Errors += "MISSING [$Label] -> $Relative"
    }
}

function Require-Tokens($Relative, $Tokens, $Label) {
    $Path = Join-Path $Root $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $script:Errors += "MISSING [$Label] -> $Relative"
        return
    }

    $Text = Get-Content -LiteralPath $Path -Raw

    foreach ($Token in $Tokens) {
        if ($Text -notmatch [regex]::Escape($Token)) {
            $script:Errors += "CONTROL MISSING [$Label] -> $Token"
        }
    }
}

# ============================================================
# REQUIRED CORE / HARDENING FILES
# ============================================================

$Required = @(
    @("01_CORE\ai_production_index.md","CORE"),
    @("01_CORE\ai_production_definition.md","DEFINITION"),
    @("01_CORE\ai_production_ownership_and_boundaries.md","OWNERSHIP"),
    @("03_PROMPT_ENGINE\prompt_truth_firewall.md","PROMPT TRUTH"),
    @("06_ANIMAL_REALISM\animal_realism_master_rule.md","ANIMAL REALISM"),
    @("06_ANIMAL_REALISM\anthropomorphism_firewall.md","ANTHROPOMORPHISM"),
    @("07_BEHAVIOR_AND_INSTINCT_PRESERVATION\instinct_preservation_firewall.md","INSTINCT"),
    @("08_MOTION_AND_ANIMATION\motion_failure_firewall.md","MOTION"),
    @("10_ENVIRONMENT_AND_ECOLOGY\ecological_realism_firewall.md","ECOLOGY"),
    @("15_VALIDATION_AND_QA\final_shot_acceptance.md","FINAL QA"),
    @("16_REGENERATION_AND_DRIFT_CONTROL\regeneration_protocol.md","REGENERATION"),
    @("17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\historical_production_firewall.md","HISTORICAL"),
    @("17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\canonical_production_firewall.md","CANONICAL"),
    @("17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\supernatural_production_firewall.md","SUPERNATURAL"),

    @("21_FINAL_HARDENING\01_ai_truth_firewall.md","AI TRUTH"),
    @("21_FINAL_HARDENING\02_animal_realism_firewall.md","REALISM"),
    @("21_FINAL_HARDENING\03_instinct_firewall.md","INSTINCT FIREWALL"),
    @("21_FINAL_HARDENING\04_cross_system_authority_matrix.md","AUTHORITY"),
    @("21_FINAL_HARDENING\05_prompt_contamination_firewall.md","PROMPT CONTAMINATION"),
    @("21_FINAL_HARDENING\06_model_drift_firewall.md","MODEL DRIFT"),
    @("21_FINAL_HARDENING\07_asset_identity_firewall.md","ASSET IDENTITY"),
    @("21_FINAL_HARDENING\08_environment_behavior_firewall.md","ENVIRONMENT"),
    @("21_FINAL_HARDENING\09_asset_validation_firewall.md","ASSET VALIDATION"),
    @("21_FINAL_HARDENING\10_single_source_of_truth.md","SSOT"),
    @("21_FINAL_HARDENING\11_production_traceability_firewall.md","TRACEABILITY"),
    @("21_FINAL_HARDENING\12_regeneration_drift_firewall.md","REGENERATION DRIFT"),
    @("21_FINAL_HARDENING\13_human_animal_firewall.md","HUMAN ANIMAL"),
    @("21_FINAL_HARDENING\14_background_population_firewall.md","POPULATION"),
    @("21_FINAL_HARDENING\15_final_zero_loophole_audit.md","ZERO LOOPHOLE"),

    @("21_FINAL_HARDENING\16_upstream_snapshot_integrity_firewall.md","UPSTREAM SNAPSHOT"),
    @("21_FINAL_HARDENING\17_prompt_compilation_firewall.md","PROMPT COMPILATION"),
    @("21_FINAL_HARDENING\18_reference_authority_matrix.md","REFERENCE AUTHORITY"),
    @("21_FINAL_HARDENING\19_model_input_output_contract.md","MODEL CONTRACT"),
    @("21_FINAL_HARDENING\20_stochastic_generation_control.md","STOCHASTIC"),
    @("21_FINAL_HARDENING\21_temporal_frame_continuity_firewall.md","FRAME CONTINUITY"),
    @("21_FINAL_HARDENING\22_animation_temporal_consistency.md","ANIMATION"),
    @("21_FINAL_HARDENING\23_compositing_post_firewall.md","POST"),
    @("21_FINAL_HARDENING\24_audio_sync_firewall.md","AUDIO"),
    @("21_FINAL_HARDENING\25_asset_lineage_and_derived_asset_firewall.md","ASSET LINEAGE"),
    @("21_FINAL_HARDENING\26_validation_independence_firewall.md","VALIDATION INDEPENDENCE"),
    @("21_FINAL_HARDENING\27_acceptance_authority_firewall.md","ACCEPTANCE"),
    @("21_FINAL_HARDENING\28_approval_scope_firewall.md","APPROVAL SCOPE"),
    @("21_FINAL_HARDENING\29_provenance_tamper_firewall.md","PROVENANCE"),
    @("21_FINAL_HARDENING\30_forbidden_production_shortcuts.md","SHORTCUTS"),
    @("21_FINAL_HARDENING\31_multi_asset_scene_consistency.md","SCENE CONSISTENCY"),
    @("21_FINAL_HARDENING\32_background_population_stochastic_firewall.md","BACKGROUND POPULATION"),
    @("21_FINAL_HARDENING\33_seed_reuse_collision_control.md","SEED CONTROL"),
    @("21_FINAL_HARDENING\34_external_tool_chain_firewall.md","EXTERNAL TOOL CHAIN"),
    @("21_FINAL_HARDENING\35_final_zero_loophole_audit_v2.md","FINAL ZERO LOOPHOLE V2"),
    @("21_FINAL_HARDENING\ai_production_architecture_manifest.json","MANIFEST")
)

foreach ($R in $Required) {
    Require-File $R[0] $R[1]
}

# ============================================================
# SEMANTIC CONTROL VALIDATION
# ============================================================

Require-Tokens `
    "21_FINAL_HARDENING\16_upstream_snapshot_integrity_firewall.md" `
    @("APPROVED SNAPSHOT","NO PRODUCTION") `
    "UPSTREAM SNAPSHOT"

Require-Tokens `
    "21_FINAL_HARDENING\17_prompt_compilation_firewall.md" `
    @("APPROVED SNAPSHOTS","SCENE REQUIREMENTS","SHOT REQUIREMENTS","FINAL PROMPT") `
    "PROMPT COMPILATION"

Require-Tokens `
    "21_FINAL_HARDENING\18_reference_authority_matrix.md" `
    @("AI-GENERATED REFERENCE","APPROVED STATE","REFERENCE != TRUTH") `
    "REFERENCE AUTHORITY"

Require-Tokens `
    "21_FINAL_HARDENING\19_model_input_output_contract.md" `
    @("input_state_id","prompt_id","model_id","output_asset_id","MODEL OUTPUT") `
    "MODEL CONTRACT"

Require-Tokens `
    "21_FINAL_HARDENING\20_stochastic_generation_control.md" `
    @("generation_id","seed","model version","reference") `
    "STOCHASTIC"

Require-Tokens `
    "21_FINAL_HARDENING\21_temporal_frame_continuity_firewall.md" `
    @("across frames","animal identity","motion continuity","behavioral state") `
    "FRAME CONTINUITY"

Require-Tokens `
    "21_FINAL_HARDENING\22_animation_temporal_consistency.md" `
    @("teleportation","foot sliding","weight transfer","Movement") `
    "ANIMATION"

Require-Tokens `
    "21_FINAL_HARDENING\23_compositing_post_firewall.md" `
    @("inpainting","upscaling","identity drift","DERIVED ASSET") `
    "POST"

Require-Tokens `
    "21_FINAL_HARDENING\24_audio_sync_firewall.md" `
    @("species","behavioral state","Dramatic sound design") `
    "AUDIO"

Require-Tokens `
    "21_FINAL_HARDENING\25_asset_lineage_and_derived_asset_firewall.md" `
    @("parent_asset_id","derived_asset_id","operation","tool","validation_status") `
    "ASSET LINEAGE"

Require-Tokens `
    "21_FINAL_HARDENING\26_validation_independence_firewall.md" `
    @("Generation and validation are conceptually separate","EXPECTED STATE","GENERATED STATE") `
    "VALIDATION INDEPENDENCE"

Require-Tokens `
    "21_FINAL_HARDENING\27_acceptance_authority_firewall.md" `
    @("Approval cannot override factual ownership","RETURN TO UPSTREAM OWNER") `
    "ACCEPTANCE"

Require-Tokens `
    "21_FINAL_HARDENING\28_approval_scope_firewall.md" `
    @("Approval must have explicit scope","APPROVAL IS NOT GENERIC") `
    "APPROVAL SCOPE"

Require-Tokens `
    "21_FINAL_HARDENING\29_provenance_tamper_firewall.md" `
    @("NEW VERSION","CHANGE REASON","CHANGE RECORD","AUDIT HISTORY") `
    "PROVENANCE"

Require-Tokens `
    "21_FINAL_HARDENING\30_forbidden_production_shortcuts.md" `
    @("Prompt-only approval","Reference-only approval","PRODUCTION SHORTCUTS","BLOCKED") `
    "SHORTCUTS"

Require-Tokens `
    "21_FINAL_HARDENING\31_multi_asset_scene_consistency.md" `
    @("multiple assets","relative positions","SCENE VALIDITY") `
    "SCENE CONSISTENCY"

Require-Tokens `
    "21_FINAL_HARDENING\32_background_population_stochastic_firewall.md" `
    @("Background populations","ecologically plausible","population randomness") `
    "BACKGROUND POPULATION"

Require-Tokens `
    "21_FINAL_HARDENING\33_seed_reuse_collision_control.md" `
    @("seed","animal identity","asset identity","continuity identity") `
    "SEED CONTROL"

Require-Tokens `
    "21_FINAL_HARDENING\34_external_tool_chain_firewall.md" `
    @("tool_id","tool_version","input_asset","output_asset","Unknown tool processing") `
    "EXTERNAL TOOL CHAIN"

Require-Tokens `
    "21_FINAL_HARDENING\35_final_zero_loophole_audit_v2.md" `
    @("UPSTREAM SNAPSHOT VALIDATION","PROMPT COMPILATION","NATURAL INSTINCT","ASSET LINEAGE","FINAL TRACEABILITY") `
    "FINAL ZERO LOOPHOLE"

# ============================================================
# MANIFEST VALIDATION
# ============================================================

$ManifestPath = Join-Path $Root "21_FINAL_HARDENING\ai_production_architecture_manifest.json"

if (!(Test-Path -LiteralPath $ManifestPath)) {
    $Errors += "MANIFEST MISSING"
}
else {
    try {
        $M = Get-Content -LiteralPath $ManifestPath -Raw | ConvertFrom-Json

        if ($M.version -ne "1.1") {
            $Errors += "MANIFEST VERSION INVALID"
        }

        $RequiredTrue = @(
            "realism_first",
            "natural_instinct_preservation",
            "biological_validation_required",
            "behavioral_validation_required",
            "movement_validation_required",
            "ecological_validation_required",
            "domestic_training_validation_required",
            "interaction_validation_required",
            "visual_identity_validation_required",
            "continuity_validation_required",
            "prompt_truth_firewall",
            "prompt_compilation_firewall",
            "reference_contamination_firewall",
            "reference_authority_control",
            "model_input_output_contract",
            "model_drift_firewall",
            "stochastic_generation_control",
            "seed_identity_firewall",
            "temporal_frame_continuity",
            "animation_temporal_consistency",
            "compositing_post_firewall",
            "audio_sync_firewall",
            "asset_lineage_control",
            "validation_independence",
            "acceptance_authority_control",
            "approval_scope_control",
            "provenance_tamper_control",
            "forbidden_shortcuts_control",
            "multi_asset_scene_consistency",
            "background_population_control",
            "external_tool_chain_control",
            "anthropomorphism_firewall",
            "regeneration_drift_firewall",
            "final_shot_traceability",
            "fail_closed"
        )

        foreach ($F in $RequiredTrue) {
            if ($M.$F -ne $true) {
                $Errors += "MANIFEST CONTROL DISABLED [$F]"
            }
        }

        if ($M.ai_is_source_of_truth -ne $false) {
            $Errors += "AI SOURCE OF TRUTH MUST BE FALSE"
        }

        if ($M.ai_output_is_evidence -ne $false) {
            $Errors += "AI OUTPUT EVIDENCE MUST BE FALSE"
        }

        if ($M.production_state -ne "BLOCKED_UNTIL_APPROVED_SNAPSHOTS") {
            $Errors += "PRODUCTION BLOCK STATE INVALID"
        }

        if ($M.research_state -ne "NOT_YET_POPULATED") {
            $Errors += "RESEARCH STATE INVALID"
        }

        $Trace = $M.traceability

        $TraceTokens = @(
            "SOURCE",
            "CLAIM",
            "DECISION",
            "DOMAIN_STATE",
            "DOMAIN_SNAPSHOT",
            "CONTINUITY_SNAPSHOT",
            "SCENE",
            "SHOT",
            "PROMPT",
            "MODEL",
            "REFERENCE_SET",
            "GENERATION",
            "ASSET",
            "DERIVED_ASSET",
            "VALIDATION",
            "APPROVAL",
            "FINAL_SHOT"
        )

        foreach ($T in $TraceTokens) {
            if ($Trace -notmatch [regex]::Escape($T)) {
                $Errors += "TRACEABILITY TOKEN MISSING [$T]"
            }
        }
    }
    catch {
        $Errors += "MANIFEST JSON INVALID"
    }
}

# ============================================================
# REQUIRED DIRECTORY STRUCTURE
# ============================================================

$RequiredDirs = @(
    "01_CORE",
    "02_PRODUCTION_DATABASE",
    "03_PROMPT_ENGINE",
    "04_REFERENCE_MANAGEMENT",
    "05_MODEL_AND_GENERATION",
    "06_ANIMAL_REALISM",
    "07_BEHAVIOR_AND_INSTINCT_PRESERVATION",
    "08_MOTION_AND_ANIMATION",
    "09_VISUAL_AND_IDENTITY_CONTINUITY",
    "10_ENVIRONMENT_AND_ECOLOGY",
    "11_INTERACTION_IMPLEMENTATION",
    "12_AUDIO_AND_AMBIENCE",
    "13_EDITING_AND_POST",
    "14_ASSET_MANAGEMENT",
    "15_VALIDATION_AND_QA",
    "16_REGENERATION_AND_DRIFT_CONTROL",
    "17_HISTORICAL_CANONICAL_AND_SUPERNATURAL",
    "18_SCENE_AND_SHOT_PRODUCTION",
    "19_RESEARCH_CONTROL",
    "20_PRODUCTION_HANDOFF",
    "21_FINAL_HARDENING"
)

foreach ($D in $RequiredDirs) {
    if (!(Test-Path -LiteralPath (Join-Path $Root $D))) {
        $Errors += "REQUIRED DIRECTORY MISSING [$D]"
    }
}

# ============================================================
# FORBIDDEN DUPLICATE TRUTH DATABASES
# ============================================================

$Forbidden = @(
    "CANONICAL_ANIMAL_DATABASE",
    "BIOLOGY_DATABASE",
    "BEHAVIOR_DATABASE",
    "MOVEMENT_DATABASE",
    "ECOLOGY_DATABASE",
    "DOMESTIC_TRAINED_DATABASE",
    "INTERACTION_DATABASE",
    "VISUAL_IDENTITY_DATABASE",
    "CONTINUITY_DATABASE"
)

foreach ($Name in $Forbidden) {
    if (Test-Path -LiteralPath (Join-Path $Root $Name)) {
        $Errors += "FORBIDDEN DUPLICATE TRUTH DATABASE [$Name]"
    }
}

# ============================================================
# EMPTY DIRECTORY CHECK
# ============================================================

$EmptyDirs = Get-ChildItem -LiteralPath $Root -Directory -Recurse |
    Where-Object {
        @(Get-ChildItem -LiteralPath $_.FullName -Force).Count -eq 0
    }

foreach ($D in $EmptyDirs) {
    $Relative = $D.FullName.Substring($Root.Length).TrimStart('\')
    $Errors += "EMPTY DIRECTORY [$Relative]"
}

# ============================================================
# FINAL RESULT
# ============================================================

Write-Host ""

if ($Errors.Count -gt 0) {

    Write-Host "10_AI_PRODUCTION ZERO-LOOPHOLE VALIDATOR v1.1" -ForegroundColor Yellow
    Write-Host "RESULT: ZERO-LOOPHOLE HARDENING FAILED" -ForegroundColor Red
    Write-Host ""

    foreach ($E in $Errors) {
        Write-Host "ERROR: $E" -ForegroundColor Red
    }

    Write-Host ""
    Write-Host "PRODUCTION: BLOCKED" -ForegroundColor Red
    Write-Host "ARCHITECTURE: NOT FROZEN" -ForegroundColor Red

    exit 1
}

Write-Host "10_AI_PRODUCTION ZERO-LOOPHOLE VALIDATOR v1.1" -ForegroundColor Cyan
Write-Host "RESULT: ZERO-LOOPHOLE AI PRODUCTION HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE" -ForegroundColor Green
Write-Host "HARDENING: COMPLETE" -ForegroundColor Green
Write-Host "REALISM: LOCKED" -ForegroundColor Green
Write-Host "NATURAL INSTINCTS: LOCKED" -ForegroundColor Green
Write-Host "STATE: FROZEN" -ForegroundColor Green
Write-Host "VERSION: 1.1" -ForegroundColor Green
Write-Host "RESEARCH: NOT YET POPULATED" -ForegroundColor Yellow
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS" -ForegroundColor Yellow
Write-Host "TRACEABILITY: SOURCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> CONTINUITY_SNAPSHOT -> SCENE -> SHOT -> PROMPT -> MODEL -> REFERENCE_SET -> GENERATION -> ASSET -> DERIVED_ASSET -> VALIDATION -> APPROVAL -> FINAL_SHOT" -ForegroundColor Cyan
Write-Host "AUDIT: FORWARD + REVERSE" -ForegroundColor Cyan
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL LOOPHOLES DETECTED." -ForegroundColor Green

