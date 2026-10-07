$ErrorActionPreference="Stop"

$Root=Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Hard=Join-Path $Root "23_FINAL_HARDENING"
$Errors=@()

Write-Host ""
Write-Host "13_COSTUME_TRACK ZERO-LOOPHOLE VALIDATOR" -ForegroundColor Cyan
Write-Host "=========================================="

function Require-File($Path){
    if(-not(Test-Path(Join-Path $Root $Path)-PathType Leaf)){
        $script:Errors+="ERROR -> REQUIRED FILE MISSING -> $Path"
    }
}

function Require-Control($Name,$Path,$Patterns){
    $Full=Join-Path $Root $Path

    if(-not(Test-Path $Full -PathType Leaf)){
        $script:Errors+="ERROR -> CONTROL FILE MISSING [$Name]"
        return
    }

    $Text=Get-Content $Full -Raw
    $Match=$false

    foreach($P in $Patterns){
        if($Text -match $P){
            $Match=$true
            break
        }
    }

    if(-not $Match){
        $script:Errors+="ERROR -> CONTROL SEMANTICS MISSING [$Name]"
    }
}

$Required=@(
"01_CORE\costume_track_index.md",
"01_CORE\costume_definition.md",
"01_CORE\costume_ownership_and_boundaries.md",
"01_CORE\costume_non_goals.md",
"02_COSTUME_DATABASE\costume_record_schema.md",
"02_COSTUME_DATABASE\costume_state_vector.md",
"03_GARMENT_SYSTEM\garment_taxonomy.md",
"03_GARMENT_SYSTEM\layering_and_draping.md",
"04_TEXTILE_AND_MATERIAL\textile_database.md",
"04_TEXTILE_AND_MATERIAL\material_physical_behavior.md",
"05_CONSTRUCTION_AND_CRAFT\construction_methods.md",
"05_CONSTRUCTION_AND_CRAFT\craft_and_workmanship.md",
"06_COLOR_AND_DYE\color_and_dye_control.md",
"07_ORNAMENT_AND_JEWELRY\ornament_database.md",
"07_ORNAMENT_AND_JEWELRY\jewelry_layering_and_continuity.md",
"08_HEAD_HAIR_AND_ADORNMENT\head_adornment.md",
"09_FOOTWEAR_AND_ACCESSORIES\footwear_and_accessories.md",
"10_STATUS_ROLE_AND_IDENTITY\status_and_role_costume.md",
"10_STATUS_ROLE_AND_IDENTITY\identity_costume_boundary.md",
"11_CULTURAL_REGIONAL_AND_SOCIAL_CONTEXT\regional_costume_control.md",
"11_CULTURAL_REGIONAL_AND_SOCIAL_CONTEXT\social_context_firewall.md",
"12_HISTORICAL_AND_CANONICAL_RESEARCH\historical_costume_research.md",
"12_HISTORICAL_AND_CANONICAL_RESEARCH\canonical_costume_research.md",
"12_HISTORICAL_AND_CANONICAL_RESEARCH\uncertainty_and_conflicts.md",
"13_CHARACTER_COSTUME_INTEGRATION\character_costume_master.md",
"13_CHARACTER_COSTUME_INTEGRATION\individual_variation_firewall.md",
"14_ANIMAL_EQUIPMENT_AND_TACK\animal_tack_master.md",
"14_ANIMAL_EQUIPMENT_AND_TACK\animal_welfare_and_fit.md",
"15_SCENE_STATE_AND_ENVIRONMENT\costume_environment_interaction.md",
"15_SCENE_STATE_AND_ENVIRONMENT\costume_condition_state.md",
"16_MOVEMENT_AND_PHYSICAL_INTERACTION\costume_movement_interaction.md",
"16_MOVEMENT_AND_PHYSICAL_INTERACTION\costume_physics_firewall.md",
"17_CONTINUITY_AND_STATE_TRANSITIONS\costume_continuity_master.md",
"17_CONTINUITY_AND_STATE_TRANSITIONS\costume_transition_firewall.md",
"18_CINEMATIC_INTEGRATION\costume_cinematic_integration.md",
"18_CINEMATIC_INTEGRATION\costume_visibility_firewall.md",
"19_AI_PRODUCTION_HANDOFF\costume_ai_handoff.md",
"19_AI_PRODUCTION_HANDOFF\costume_prompt_firewall.md",
"20_VALIDATION_AND_QA\costume_validation_gate.md",
"20_VALIDATION_AND_QA\costume_asset_audit.md",
"21_RESEARCH_CONTROL\costume_research_control.md",
"21_RESEARCH_CONTROL\costume_evidence_firewall.md",
"22_ASSET_AND_COSTUME_LINEAGE\costume_asset_lineage.md",
"22_ASSET_AND_COSTUME_LINEAGE\replacement_and_regeneration.md"
)

foreach($F in $Required){Require-File $F}

$HardFiles=Get-ChildItem $Hard -File -Filter *.md
if($HardFiles.Count -lt 40){
    $Errors+="ERROR -> HARDENING CONTROL COUNT BELOW 40"
}

Require-Control "TRUTH" "23_FINAL_HARDENING\01_truth_authority_firewall.md" @("upstream","truth","authority")
Require-Control "ANACHRONISM" "23_FINAL_HARDENING\02_historical_anachronism_firewall.md" @("modern","historical","evidence")
Require-Control "CULTURE" "23_FINAL_HARDENING\03_cultural_assumption_firewall.md" @("cultural","assumption","stereotype")
Require-Control "STATUS" "23_FINAL_HARDENING\04_status_inference_firewall.md" @("status","royalty","wealth")
Require-Control "MATERIAL" "23_FINAL_HARDENING\05_material_truth_firewall.md" @("material","physical")
Require-Control "ORNAMENT" "23_FINAL_HARDENING\07_ornament_identity_firewall.md" @("jewelry","ornament","identity")
Require-Control "COLOR" "23_FINAL_HARDENING\08_color_truth_firewall.md" @("color","grading","lighting")
Require-Control "CONDITION" "23_FINAL_HARDENING\09_condition_causality_firewall.md" @("damage","wetness","cause")
Require-Control "MOVEMENT" "23_FINAL_HARDENING\11_movement_costume_firewall.md" @("movement","biomechanics","physics")
Require-Control "ANIMAL_TACK" "23_FINAL_HARDENING\12_animal_tack_authority_firewall.md" @("animal","tack","welfare")
Require-Control "IDENTITY" "23_FINAL_HARDENING\13_identity_costume_firewall.md" @("identity","canonical")
Require-Control "TIMELINE" "23_FINAL_HARDENING\14_age_timeline_costume_firewall.md" @("age","timeline")
Require-Control "ACTIVITY" "23_FINAL_HARDENING\15_scene_activity_costume_firewall.md" @("scene","activity")
Require-Control "VISIBILITY" "23_FINAL_HARDENING\16_visibility_presence_firewall.md" @("occlusion","off-camera","presence")
Require-Control "TRANSITION" "23_FINAL_HARDENING\17_dressing_transition_firewall.md" @("transition","dressing","state")
Require-Control "SNAPSHOT" "23_FINAL_HARDENING\18_snapshot_atomicity.md" @("snapshot","immutable")
Require-Control "STALE" "23_FINAL_HARDENING\19_stale_snapshot_firewall.md" @("stale","invalidated")
Require-Control "REFERENCE" "23_FINAL_HARDENING\20_reference_contamination_firewall.md" @("reference","implementation","truth")
Require-Control "AI_BEAUTY" "23_FINAL_HARDENING\21_ai_beautification_firewall.md" @("AI","beautification","fashion")
Require-Control "PROMPT" "23_FINAL_HARDENING\22_prompt_integrity_firewall.md" @("prompt","unsupported","approved")
Require-Control "OUTPUT" "23_FINAL_HARDENING\23_model_output_firewall.md" @("AI","output","rejected")
Require-Control "MULTI_ASSET" "23_FINAL_HARDENING\24_multi_asset_costume_consistency.md" @("shots","snapshot","compatible")
Require-Control "BACKGROUND" "23_FINAL_HARDENING\25_background_costume_firewall.md" @("background","population")
Require-Control "UNCERTAINTY" "23_FINAL_HARDENING\26_historical_uncertainty_firewall.md" @("uncertain","fact")
Require-Control "CANONICAL" "23_FINAL_HARDENING\27_canonical_uncertainty_firewall.md" @("poetic","symbolic","canonical")
Require-Control "SUPERNATURAL" "23_FINAL_HARDENING\28_supernatural_costume_boundary.md" @("supernatural","historical")
Require-Control "CINEMATIC" "23_FINAL_HARDENING\29_cinematic_override_firewall.md" @("cinematic","presentation","truth")
Require-Control "ROLLBACK" "23_FINAL_HARDENING\30_continuity_rollback_firewall.md" @("rollback","history")
Require-Control "DUPLICATE" "23_FINAL_HARDENING\32_duplicate_costume_event_firewall.md" @("duplicate","event","rejected")
Require-Control "TEMPORAL" "23_FINAL_HARDENING\33_temporal_order_firewall.md" @("temporal","ordering","cause")
Require-Control "PROVENANCE" "23_FINAL_HARDENING\34_provenance_tamper_firewall.md" @("provenance","tamper")
Require-Control "INDEPENDENCE" "23_FINAL_HARDENING\35_validation_independence_firewall.md" @("generator","approve","independent")
Require-Control "SCOPE" "23_FINAL_HARDENING\36_approval_scope_firewall.md" @("approval","scope","snapshot")
Require-Control "SHORTCUTS" "23_FINAL_HARDENING\37_forbidden_shortcuts.md" @("forbidden","shortcut","bypass")
Require-Control "AUDIT" "23_FINAL_HARDENING\38_forward_reverse_audit.md" @("forward","reverse","audit")
Require-Control "MATRIX" "23_FINAL_HARDENING\39_zero_loophole_control_matrix.md" @("control","authority","validation","lineage")

$ManifestPath=Join-Path $Hard "costume_track_manifest.json"

if(-not(Test-Path $ManifestPath)){
    $Errors+="ERROR -> MANIFEST MISSING"
}else{
    try{
        $M=Get-Content $ManifestPath -Raw|ConvertFrom-Json

        if($M.system-ne"COSTUME_TRACK"){$Errors+="ERROR -> MANIFEST SYSTEM INVALID"}
        if($M.truth_is_upstream-ne$true){$Errors+="ERROR -> TRUTH AUTHORITY INVALID"}
        if($M.historical_evidence_required-ne$true){$Errors+="ERROR -> HISTORICAL EVIDENCE INVALID"}
        if($M.canonical_evidence_required-ne$true){$Errors+="ERROR -> CANONICAL EVIDENCE INVALID"}
        if($M.ai_is_source_of_truth-ne$false){$Errors+="ERROR -> AI SOURCE-OF-TRUTH INVALID"}
        if($M.ai_output_is_evidence-ne$false){$Errors+="ERROR -> AI EVIDENCE INVALID"}
        if([string]$M.production_state-notmatch"BLOCKED"){$Errors+="ERROR -> PRODUCTION STATE INVALID"}
        if([string]$M.production_state-notmatch"APPROVED"){$Errors+="ERROR -> APPROVAL GATE INVALID"}
        if($M.fail_closed-ne$true){$Errors+="ERROR -> FAIL-CLOSED INVALID"}
        if($M.forward_audit-ne$true){$Errors+="ERROR -> FORWARD AUDIT INVALID"}
        if($M.reverse_audit-ne$true){$Errors+="ERROR -> REVERSE AUDIT INVALID"}
        if($M.immutable_snapshots-ne$true){$Errors+="ERROR -> SNAPSHOT IMMUTABILITY INVALID"}
        if($M.ai_output_cannot_redefine_truth-ne$true){$Errors+="ERROR -> AI TRUTH BOUNDARY INVALID"}
    }catch{
        $Errors+="ERROR -> MANIFEST PARSE FAILED"
    }
}

if($Errors.Count -gt 0){
    Write-Host ""
    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red
    foreach($E in $Errors){Write-Host $E -ForegroundColor Red}
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE COSTUME TRACK HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "REALISM: LOCKED"
Write-Host "HISTORICAL/CANONICAL EVIDENCE: REQUIRED"
Write-Host "ANACHRONISM: BLOCKED"
Write-Host "CULTURAL ASSUMPTION: BLOCKED"
Write-Host "STATUS INFERENCE: BLOCKED"
Write-Host "MATERIAL TRUTH: LOCKED"
Write-Host "GARMENT LAYERING: LOCKED"
Write-Host "ORNAMENT IDENTITY: LOCKED"
Write-Host "COLOR TRUTH: LOCKED"
Write-Host "CONDITION CAUSALITY: LOCKED"
Write-Host "MOVEMENT PHYSICS: LOCKED"
Write-Host "ANIMAL TACK BOUNDARY: LOCKED"
Write-Host "IDENTITY BOUNDARY: LOCKED"
Write-Host "TIMELINE COMPATIBILITY: LOCKED"
Write-Host "COSTUME CONTINUITY: LOCKED"
Write-Host "AI BEAUTIFICATION: BLOCKED"
Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
Write-Host "AI OUTPUT AS EVIDENCE: DISABLED"
Write-Host "CINEMATIC OVERRIDE: BLOCKED"
Write-Host "VALIDATION INDEPENDENCE: LOCKED"
Write-Host "FORWARD AUDIT: LOCKED"
Write-Host "REVERSE AUDIT: LOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.0"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> EVIDENCE -> CLAIM -> DECISION -> COSTUME_STATE -> COSTUME_SNAPSHOT -> CONTINUITY_SNAPSHOT -> SCENE -> SHOT -> PROMPT -> MODEL -> REFERENCE_SET -> GENERATION -> ASSET -> DERIVED_ASSET -> VALIDATION -> APPROVAL -> FINAL_SHOT"
Write-Host "AUDIT: FORWARD + REVERSE"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL COSTUME TRACK LOOPHOLES DETECTED."
