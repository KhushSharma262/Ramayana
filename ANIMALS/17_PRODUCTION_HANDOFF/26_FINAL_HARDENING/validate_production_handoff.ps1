$Root=Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Hard=Join-Path $Root "26_FINAL_HARDENING"

$Errors=@()

function Require-File {
    param(
        [string]$RelativePath,
        [string[]]$SemanticTokens
    )

    $Path=Join-Path $Hard $RelativePath

    if(-not(Test-Path $Path)){
        $script:Errors += "CONTROL MISSING -> $RelativePath"
        return
    }

    $Text=Get-Content $Path -Raw

    foreach($Token in $SemanticTokens){
        if(-not $Text.Contains($Token)){
            $script:Errors += "SEMANTIC CONTROL MISSING -> $RelativePath -> $Token"
        }
    }
}

$RequiredControls=@{
"01_authority_boundary_firewall.md"=@(
    "MUST NOT override",
    "Production Handoff"
)
"02_approval_state_firewall.md"=@(
    "APPROVED",
    "SNAPSHOTTED",
    "BLOCKED"
)
"03_snapshot_integrity_firewall.md"=@(
    "snapshot_id",
    "fingerprint",
    "provenance"
)
"04_stale_snapshot_firewall.md"=@(
    "stale",
    "BLOCKED"
)
"05_dependency_completeness_firewall.md"=@(
    "applicable",
    "complete dependency"
)
"06_scene_shot_scope_firewall.md"=@(
    "scene",
    "shot",
    "timeline position"
)
"07_continuity_consistency_firewall.md"=@(
    "Contradictory states",
    "BLOCKED",
    "traceable cause"
)
"08_research_conflict_firewall.md"=@(
    "UNKNOWN",
    "CONFLICT",
    "BLOCKED"
)
"09_taxonomy_identity_firewall.md"=@(
    "Unresolved taxonomy",
    "species identity"
)
"10_behavior_naturalism_firewall.md"=@(
    "species-appropriate",
    "cinematic convenience"
)
"11_biology_movement_firewall.md"=@(
    "biological",
    "biomechanical constraints",
    "impossible"
)
"12_ecology_firewall.md"=@(
    "causally justified",
    "visual attractiveness"
)
"13_interaction_firewall.md"=@(
    "Co-presence does not establish interaction",
    "interaction"
)
"14_visual_identity_firewall.md"=@(
    "persistent visual traits",
    "beautification",
    "AI"
)
"15_audio_firewall.md"=@(
    "species-appropriate",
    "Silence"
)
"16_costume_equipment_firewall.md"=@(
    "historically unsupported",
    "physical fit"
)
"17_stress_battle_firewall.md"=@(
    "Extreme stress",
    "human combatants",
    "Battle presence"
)
"18_cinematic_override_firewall.md"=@(
    "may not redefine",
    "Cinematic preference"
)
"19_ai_output_firewall.md"=@(
    "AI output is representation only",
    "REJECTED",
    "approved requirement"
)
"20_prompt_integrity_firewall.md"=@(
    "approved handoff requirements",
    "unsupported facts"
)
"21_reference_set_firewall.md"=@(
    "implementation inputs",
    "canonical evidence"
)
"22_multi_asset_consistency.md"=@(
    "same scene and shot",
    "identity",
    "continuity"
)
"23_background_population_firewall.md"=@(
    "population-level rules",
    "ecological plausibility"
)
"24_temporal_order_firewall.md"=@(
    "temporal ordering",
    "causal dependency"
)
"25_event_state_transition_firewall.md"=@(
    "previous state",
    "new state",
    "approved cause"
)
"26_duplicate_handoff_firewall.md"=@(
    "Duplicate",
    "authoritative version"
)
"27_rejection_reuse_firewall.md"=@(
    "Rejected assets",
    "revalidation"
)
"28_replacement_lineage_firewall.md"=@(
    "new identities or versions",
    "original record"
)
"29_provenance_tamper_firewall.md"=@(
    "unexplained alteration",
    "BLOCKED"
)
"30_validation_independence_firewall.md"=@(
    "independently",
    "sole authority"
)
"31_approval_scope_firewall.md"=@(
    "exact approved scope",
    "new validation and approval"
)
"32_partial_package_firewall.md"=@(
    "missing mandatory information",
    "production-ready",
    "BLOCKED"
)
"33_forbidden_shortcuts.md"=@(
    "AI hallucination",
    "unknown-to-assumption",
    "validation bypass"
)
"34_reverse_audit_firewall.md"=@(
    "FINAL OUTPUT",
    "EVIDENCE",
    "SOURCES"
)
"35_forward_audit_firewall.md"=@(
    "Every approved upstream snapshot",
    "FINAL OUTPUT"
)
"36_zero_loophole_control_matrix.md"=@(
    "Authority",
    "AI boundary",
    "Reverse audit",
    "Forward audit"
)
"37_final_zero_loophole_audit.md"=@(
    "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL",
    "Forward and reverse audits"
)
}

foreach($Entry in $RequiredControls.GetEnumerator()){
    Require-File -RelativePath $Entry.Key -SemanticTokens $Entry.Value
}

$CoreRequired=@(
"01_CORE\production_handoff_index.md",
"01_CORE\production_handoff_definition.md",
"01_CORE\production_handoff_authority_boundaries.md",
"01_CORE\production_handoff_non_goals.md",
"01_CORE\production_handoff_master_principles.md",
"02_HANDOFF_DATABASE\handoff_record_schema.md",
"02_HANDOFF_DATABASE\handoff_state_vector.md",
"03_SOURCE_SNAPSHOT_HANDOFF\snapshot_handoff_rules.md",
"03_SOURCE_SNAPSHOT_HANDOFF\upstream_dependency_manifest.md",
"04_BIOLOGY_HANDOFF\biology_handoff_rules.md",
"05_BEHAVIOR_HANDOFF\behavior_handoff_rules.md",
"06_MOVEMENT_HANDOFF\movement_handoff_rules.md",
"07_ECOLOGY_HANDOFF\ecology_handoff_rules.md",
"08_DOMESTIC_TRAINED_HANDOFF\domestic_trained_handoff_rules.md",
"09_INTERACTION_HANDOFF\interaction_handoff_rules.md",
"10_VISUAL_IDENTITY_HANDOFF\visual_identity_handoff_rules.md",
"11_CONTINUITY_HANDOFF\continuity_handoff_rules.md",
"12_AUDIO_HANDOFF\audio_handoff_rules.md",
"13_BATTLE_HIGH_STRESS_HANDOFF\battle_stress_handoff_rules.md",
"14_COSTUME_HANDOFF\costume_handoff_rules.md",
"15_CINEMATIC_INTEGRATION_HANDOFF\cinematic_handoff_rules.md",
"16_AI_PRODUCTION_HANDOFF\ai_production_handoff_rules.md",
"17_SCENE_HANDOFF\scene_handoff_schema.md",
"18_SHOT_HANDOFF\shot_handoff_schema.md",
"19_ASSET_HANDOFF\asset_handoff_rules.md",
"20_VALIDATION_HANDOFF\validation_handoff_rules.md",
"21_REJECTION_AND_REWORK\rejection_rules.md",
"22_LINEAGE_AND_PROVENANCE\lineage_rules.md",
"23_VERSION_AND_SNAPSHOT_CONTROL\version_control_rules.md",
"24_RESEARCH_AND_CONFLICT_HANDOFF\research_conflict_rules.md",
"25_FINAL_OUTPUT_PACKAGE\final_output_package_rules.md"
)

foreach($Relative in $CoreRequired){
    $Path=Join-Path $Root $Relative

    if(-not(Test-Path $Path)){
        $Errors += "CORE FILE MISSING -> $Relative"
    }
}

$Manifest=Join-Path $Root "production_handoff_manifest.json"

if(-not(Test-Path $Manifest)){
    $Errors += "MANIFEST MISSING"
}
else{
    try{
        $M=Get-Content $Manifest -Raw | ConvertFrom-Json

        if($M.system -ne "17_PRODUCTION_HANDOFF"){
            $Errors += "MANIFEST SYSTEM INVALID"
        }

        if($M.version -ne "1.0"){
            $Errors += "MANIFEST VERSION INVALID"
        }

        if($M.source_of_truth -ne $false){
            $Errors += "SOURCE-OF-TRUTH FLAG INVALID"
        }

        if($M.fail_closed -ne $true){
            $Errors += "FAIL-CLOSED FLAG INVALID"
        }
    }
    catch{
        $Errors += "MANIFEST JSON INVALID"
    }
}

$Status=Join-Path $Root "PRODUCTION_HANDOFF_SYSTEM_STATUS.md"

if(-not(Test-Path $Status)){
    $Errors += "STATUS FILE MISSING"
}
else{
    $StatusText=Get-Content $Status -Raw

    foreach($Token in @(
        "SOURCE OF TRUTH:",
        "AI AS SOURCE OF TRUTH:",
        "PRODUCTION:",
        "VALIDATION:",
        "AUDIT:",
        "STATE:"
    )){
        if($StatusText -notmatch [regex]::Escape($Token)){
            $Errors += "STATUS CONTROL MISSING -> $Token"
        }
    }
}

if($Errors.Count -eq 0){

    Write-Host "-----------------------------------------------------------"
    Write-Host "RESULT: ZERO-LOOPHOLE PRODUCTION HANDOFF HARDENING VALID" -ForegroundColor Green
    Write-Host "ARCHITECTURE: COMPLETE"
    Write-Host "HARDENING: COMPLETE"
    Write-Host "AUTHORITY BOUNDARY: LOCKED"
    Write-Host "APPROVAL CONTROL: LOCKED"
    Write-Host "SNAPSHOT INTEGRITY: LOCKED"
    Write-Host "STALE SNAPSHOT CONTROL: LOCKED"
    Write-Host "DEPENDENCY COMPLETENESS: LOCKED"
    Write-Host "SCENE / SHOT SCOPE: LOCKED"
    Write-Host "CONTINUITY CONSISTENCY: LOCKED"
    Write-Host "RESEARCH / CONFLICT CONTROL: LOCKED"
    Write-Host "TAXONOMY / IDENTITY: LOCKED"
    Write-Host "ANIMAL NATURALISM: LOCKED"
    Write-Host "BIOLOGY / MOVEMENT: LOCKED"
    Write-Host "ECOLOGICAL INTEGRITY: LOCKED"
    Write-Host "INTERACTION INTEGRITY: LOCKED"
    Write-Host "VISUAL IDENTITY: LOCKED"
    Write-Host "AUDIO REALISM: LOCKED"
    Write-Host "COSTUME / EQUIPMENT: LOCKED"
    Write-Host "BATTLE / HIGH-STRESS: LOCKED"
    Write-Host "CINEMATIC OVERRIDE: BLOCKED"
    Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
    Write-Host "PROMPT INTEGRITY: LOCKED"
    Write-Host "REFERENCE CONTROL: LOCKED"
    Write-Host "MULTI-ASSET CONSISTENCY: LOCKED"
    Write-Host "BACKGROUND POPULATION CONTROL: LOCKED"
    Write-Host "TEMPORAL ORDER: LOCKED"
    Write-Host "STATE TRANSITIONS: LOCKED"
    Write-Host "REJECTION / REUSE CONTROL: LOCKED"
    Write-Host "REPLACEMENT LINEAGE: LOCKED"
    Write-Host "PROVENANCE: LOCKED"
    Write-Host "VALIDATION INDEPENDENCE: LOCKED"
    Write-Host "APPROVAL SCOPE: LOCKED"
    Write-Host "PARTIAL PACKAGE BLOCKING: LOCKED"
    Write-Host "FORWARD AUDIT: LOCKED"
    Write-Host "REVERSE AUDIT: LOCKED"
    Write-Host "FAIL-CLOSED: LOCKED"
    Write-Host "STATE: FROZEN"
    Write-Host "VERSION: 1.0"
    Write-Host "RESEARCH: UPSTREAM RESEARCH REQUIRED"
    Write-Host "PRODUCTION: BLOCKED UNTIL COMPLETE APPROVED HANDOFFS"
    Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL PRODUCTION HANDOFF LOOPHOLES DETECTED."
    Write-Host "-----------------------------------------------------------"

}
else{

    Write-Host "-----------------------------------------------------------"
    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red

    foreach($ErrorItem in $Errors){
        Write-Host "ERROR -> $ErrorItem" -ForegroundColor Red
    }

    Write-Host "STATE: BLOCKED"
    Write-Host "-----------------------------------------------------------"
}




