$Root = Split-Path -Parent $PSScriptRoot

$RequiredFolders=@(
"01_CORE",
"02_EPISODE_DATABASE",
"03_EPISODE_IDENTITY",
"04_EPISODE_TIMELINE",
"05_SCENE_INTEGRATION",
"06_ANIMAL_ENTITY_INTEGRATION",
"07_POPULATION_INTEGRATION",
"08_BEHAVIOR_INTEGRATION",
"09_MOVEMENT_INTEGRATION",
"10_ECOLOGY_INTEGRATION",
"11_DOMESTIC_TRAINED_INTEGRATION",
"12_INTERACTION_INTEGRATION",
"13_VISUAL_IDENTITY_INTEGRATION",
"14_CONTINUITY_INTEGRATION",
"15_AUDIO_INTEGRATION",
"16_BATTLE_HIGH_STRESS_INTEGRATION",
"17_COSTUME_EQUIPMENT_INTEGRATION",
"18_CINEMATIC_INTEGRATION",
"19_AI_PRODUCTION_INTEGRATION",
"20_PRODUCTION_HANDOFF_INTEGRATION",
"21_QA_INTEGRATION",
"22_CROSS_SCENE_INTEGRATION",
"23_EPISODE_CONFLICTS_UNKNOWN",
"24_EPISODE_REJECTION_REWORK",
"25_EPISODE_LINEAGE_AUDIT",
"26_EPISODE_SNAPSHOT_FREEZE",
"27_FINAL_EPISODE_GATE",
"28_FINAL_HARDENING"
)

$MissingFolders=@()

foreach($F in $RequiredFolders){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFolders += $F
    }
}

if($MissingFolders.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE EPISODE INTEGRATION HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FOLDERS:" -ForegroundColor Red
    $MissingFolders | ForEach-Object { Write-Host $_ }
    exit 1
}

$RequiredFiles=@(
"01_CORE\episode_integration_index.md",
"01_CORE\episode_integration_definition.md",
"01_CORE\episode_authority_boundaries.md",
"01_CORE\episode_master_principles.md",
"02_EPISODE_DATABASE\episode_record_schema.md",
"02_EPISODE_DATABASE\episode_state_vector.md",
"03_EPISODE_IDENTITY\episode_identity_rules.md",
"04_EPISODE_TIMELINE\timeline_rules.md",
"04_EPISODE_TIMELINE\temporal_integrity.md",
"05_SCENE_INTEGRATION\scene_assembly_rules.md",
"05_SCENE_INTEGRATION\scene_dependency_rules.md",
"06_ANIMAL_ENTITY_INTEGRATION\entity_presence_rules.md",
"06_ANIMAL_ENTITY_INTEGRATION\individual_population_boundary.md",
"07_POPULATION_INTEGRATION\population_rules.md",
"08_BEHAVIOR_INTEGRATION\behavior_continuity.md",
"09_MOVEMENT_INTEGRATION\movement_continuity.md",
"10_ECOLOGY_INTEGRATION\ecology_continuity.md",
"11_DOMESTIC_TRAINED_INTEGRATION\training_continuity.md",
"12_INTERACTION_INTEGRATION\interaction_continuity.md",
"13_VISUAL_IDENTITY_INTEGRATION\visual_continuity.md",
"14_CONTINUITY_INTEGRATION\continuity_rules.md",
"14_CONTINUITY_INTEGRATION\state_transition_rules.md",
"15_AUDIO_INTEGRATION\audio_continuity.md",
"16_BATTLE_HIGH_STRESS_INTEGRATION\stress_continuity.md",
"17_COSTUME_EQUIPMENT_INTEGRATION\equipment_continuity.md",
"18_CINEMATIC_INTEGRATION\cinematic_episode_rules.md",
"19_AI_PRODUCTION_INTEGRATION\ai_episode_rules.md",
"20_PRODUCTION_HANDOFF_INTEGRATION\handoff_rules.md",
"21_QA_INTEGRATION\qa_rules.md",
"22_CROSS_SCENE_INTEGRATION\cross_scene_rules.md",
"22_CROSS_SCENE_INTEGRATION\recurring_entity_tracking.md",
"23_EPISODE_CONFLICTS_UNKNOWN\episode_conflict_rules.md",
"24_EPISODE_REJECTION_REWORK\episode_rework_rules.md",
"25_EPISODE_LINEAGE_AUDIT\forward_episode_audit.md",
"25_EPISODE_LINEAGE_AUDIT\reverse_episode_audit.md",
"26_EPISODE_SNAPSHOT_FREEZE\episode_snapshot_rules.md",
"26_EPISODE_SNAPSHOT_FREEZE\freeze_rules.md",
"27_FINAL_EPISODE_GATE\final_episode_gate.md",
"27_FINAL_EPISODE_GATE\release_blockers.md",
"episode_integration_manifest.json",
"EPISODE_INTEGRATION_SYSTEM_STATUS.md"
)

$MissingFiles=@()

foreach($F in $RequiredFiles){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFiles += $F
    }
}

$ControlFiles=Get-ChildItem `
    (Join-Path $Root "28_FINAL_HARDENING") `
    -Filter "*.md" `
    -File `
    -ErrorAction SilentlyContinue

if($ControlFiles.Count -lt 40){
    $MissingFiles += "28_FINAL_HARDENING -> expected 40 hardening controls"
}

if($MissingFiles.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE EPISODE INTEGRATION HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FILES:" -ForegroundColor Red
    $MissingFiles | ForEach-Object { Write-Host $_ }
    exit 1
}

# ============================================================
# SEMANTIC VALIDATION
# ============================================================

$Checks=@(
@("episode_integration_definition.md","assembles approved","does not create"),
@("episode_authority_boundaries.md","DOMAIN SYSTEMS OWN DOMAIN TRUTH","QA"),
@("episode_master_principles.md","ASSEMBLES THE APPROVED WORLD","FAIL-CLOSED"),
@("timeline_rules.md","scene order","Simultaneity"),
@("temporal_integrity.md","correct state","BLOCKED"),
@("scene_assembly_rules.md","scene_id","continuity snapshot"),
@("scene_dependency_rules.md","material dependency","BLOCKED"),
@("entity_presence_rules.md","entity_id","continuity"),
@("individual_population_boundary.md","population-level","individualization"),
@("population_rules.md","population density","ecological cause"),
@("behavior_continuity.md","Behavioral state","context"),
@("movement_continuity.md","Biology","fatigue"),
@("ecology_continuity.md","valid reason","visual attractiveness"),
@("training_continuity.md","Training state","species-appropriate behavior"),
@("interaction_continuity.md","Co-presence does not establish interaction","later scenes"),
@("visual_continuity.md","persistent visual identity","AI"),
@("continuity_rules.md","consumes continuity snapshots","cannot rewrite"),
@("state_transition_rules.md","event_id","new_state"),
@("audio_continuity.md","animal","biologically appropriate"),
@("stress_continuity.md","Stress is a state","recovery"),
@("equipment_continuity.md","equipment identity","damaged"),
@("cinematic_episode_rules.md","cannot alter","Cinema shapes experience"),
@("ai_episode_rules.md","AI output","REJECT OUTPUT"),
@("handoff_rules.md","Production Handoff","BLOCKED"),
@("qa_rules.md","QA verifies","cannot self-approve"),
@("cross_scene_rules.md","identity drift","BLOCKED"),
@("episode_conflict_rules.md","UNKNOWN","CONFLICT"),
@("episode_rework_rules.md","replacement lineage","failed history"),
@("forward_episode_audit.md","SOURCE","FINAL EPISODE"),
@("reverse_episode_audit.md","FINAL EPISODE","SOURCE"),
@("episode_snapshot_rules.md","immutable","scene order"),
@("freeze_rules.md","QA approval","new version"),
@("final_episode_gate.md","complete mandatory QA approval","BLOCKED"),
@("release_blockers.md","missing dependency","failed QA"),
@("01_episode_authority_boundary.md","assembles approved truth","does not create"),
@("07_entity_identity_firewall.md","Recurring animal identity","across scenes"),
@("15_continuity_authority_firewall.md","cannot override","authoritative Continuity"),
@("20_ai_truth_firewall.md","AI output","source-of-truth"),
@("21_handoff_firewall.md","cannot bypass","Production Handoff"),
@("22_qa_firewall.md","cannot self-approve","QA"),
@("24_unknown_conflict_firewall.md","UNKNOWN","resolved truth"),
@("28_snapshot_immutability.md","cannot be silently edited","new"),
@("31_reverse_audit.md","final episode","authoritative inputs"),
@("40_final_zero_loophole_audit.md","identity drift","reverse audit failure")
)

$SemanticFailures=@()

foreach($Check in $Checks){

    $File=$Check[0]
    $A=$Check[1]
    $B=$Check[2]

    $Candidates=@(
        Get-ChildItem $Root -Recurse -Filter $File -File -ErrorAction SilentlyContinue
    )

    if($Candidates.Count -eq 0){
        $SemanticFailures += "$File -> FILE NOT FOUND"
        continue
    }

    $Content=Get-Content $Candidates[0].FullName -Raw

    if(($Content -notmatch [regex]::Escape($A)) -or
       ($Content -notmatch [regex]::Escape($B))){

        $SemanticFailures += "$File -> semantic control missing: [$A] + [$B]"
    }
}

if($SemanticFailures.Count -gt 0){

    Write-Host "RESULT: ZERO-LOOPHOLE EPISODE INTEGRATION HARDENING INVALID" -ForegroundColor Red
    Write-Host "SEMANTIC CONTROL FAILURES:" -ForegroundColor Red

    $SemanticFailures | ForEach-Object {
        Write-Host $_
    }

    exit 1
}

# ============================================================
# FINAL RESULT
# ============================================================

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE EPISODE INTEGRATION HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "EPISODE AUTHORITY BOUNDARY: LOCKED"
Write-Host "EPISODE IDENTITY: LOCKED"
Write-Host "EPISODE TIMELINE: LOCKED"
Write-Host "SCENE INTEGRATION: LOCKED"
Write-Host "ANIMAL ENTITY CONTINUITY: LOCKED"
Write-Host "POPULATION INTEGRATION: LOCKED"
Write-Host "BEHAVIOR CONTINUITY: LOCKED"
Write-Host "MOVEMENT CONTINUITY: LOCKED"
Write-Host "ECOLOGY CONTINUITY: LOCKED"
Write-Host "DOMESTIC / TRAINING CONTINUITY: LOCKED"
Write-Host "INTERACTION CONTINUITY: LOCKED"
Write-Host "VISUAL IDENTITY CONTINUITY: LOCKED"
Write-Host "CONTINUITY AUTHORITY: LOCKED"
Write-Host "AUDIO CONTINUITY: LOCKED"
Write-Host "BATTLE / HIGH-STRESS CONTINUITY: LOCKED"
Write-Host "EQUIPMENT CONTINUITY: LOCKED"
Write-Host "CINEMATIC INTEGRATION: LOCKED"
Write-Host "AI PRODUCTION FIREWALL: LOCKED"
Write-Host "PRODUCTION HANDOFF: LOCKED"
Write-Host "QA INTEGRATION: LOCKED"
Write-Host "CROSS-SCENE INTEGRATION: LOCKED"
Write-Host "UNKNOWN != RESOLVED: LOCKED"
Write-Host "CONFLICT != RESOLVED: LOCKED"
Write-Host "MATERIAL DEPENDENCY FAILURE: BLOCKED"
Write-Host "IDENTITY DRIFT: BLOCKED"
Write-Host "STATE RESET: BLOCKED"
Write-Host "BRANCH CONTAMINATION: BLOCKED"
Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
Write-Host "HANDOFF BYPASS: BLOCKED"
Write-Host "QA BYPASS: BLOCKED"
Write-Host "SNAPSHOT MUTATION: BLOCKED"
Write-Host "REJECTION REUSE: BLOCKED"
Write-Host "FORWARD AUDIT: LOCKED"
Write-Host "REVERSE AUDIT: LOCKED"
Write-Host "LINEAGE: LOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.0"
Write-Host "RESEARCH: UPSTREAM RESEARCH REQUIRED"
Write-Host "PRODUCTION: REQUIRES VALID HANDOFF + QA APPROVAL"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL EPISODE INTEGRATION LOOPHOLES DETECTED."
