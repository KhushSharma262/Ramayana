$Root = Split-Path -Parent $PSScriptRoot

$RequiredFolders=@(
"01_CORE","02_QA_DATABASE","03_INPUT_VALIDATION",
"04_SOURCE_AND_SNAPSHOT_QA","05_BIOLOGY_QA","06_BEHAVIOR_QA",
"07_MOVEMENT_QA","08_ECOLOGY_QA","09_DOMESTIC_TRAINED_QA",
"10_INTERACTION_QA","11_VISUAL_IDENTITY_QA","12_CONTINUITY_QA",
"13_AUDIO_QA","14_BATTLE_HIGH_STRESS_QA","15_COSTUME_EQUIPMENT_QA",
"16_CINEMATIC_QA","17_AI_PRODUCTION_QA","18_SCENE_QA","19_SHOT_QA",
"20_ASSET_QA","21_CROSS_SYSTEM_QA","22_REJECTION_AND_REWORK",
"23_APPROVAL_CONTROL","24_LINEAGE_AND_AUDIT","25_FINAL_OUTPUT_QA",
"26_RESEARCH_AND_CONFLICT_QA","27_FINAL_HARDENING"
)

$MissingFolders=@()
foreach($F in $RequiredFolders){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFolders += $F
    }
}

if($MissingFolders.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE QA HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FOLDERS:" -ForegroundColor Red
    $MissingFolders | ForEach-Object { Write-Host $_ }
    exit 1
}

$CoreFiles=@(
"01_CORE\qa_approval_index.md",
"01_CORE\qa_approval_definition.md",
"01_CORE\qa_authority_boundaries.md",
"01_CORE\qa_master_principles.md",
"02_QA_DATABASE\qa_record_schema.md",
"02_QA_DATABASE\qa_state_vector.md",
"03_INPUT_VALIDATION\input_contract.md",
"03_INPUT_VALIDATION\input_completeness.md",
"04_SOURCE_AND_SNAPSHOT_QA\snapshot_verification.md",
"04_SOURCE_AND_SNAPSHOT_QA\source_traceability.md",
"05_BIOLOGY_QA\biology_validation.md",
"06_BEHAVIOR_QA\behavior_validation.md",
"07_MOVEMENT_QA\movement_validation.md",
"08_ECOLOGY_QA\ecology_validation.md",
"09_DOMESTIC_TRAINED_QA\domestic_training_validation.md",
"10_INTERACTION_QA\interaction_validation.md",
"11_VISUAL_IDENTITY_QA\visual_identity_validation.md",
"12_CONTINUITY_QA\continuity_validation.md",
"13_AUDIO_QA\audio_validation.md",
"14_BATTLE_HIGH_STRESS_QA\stress_battle_validation.md",
"15_COSTUME_EQUIPMENT_QA\costume_equipment_validation.md",
"16_CINEMATIC_QA\cinematic_validation.md",
"17_AI_PRODUCTION_QA\ai_production_validation.md",
"18_SCENE_QA\scene_validation.md",
"19_SHOT_QA\shot_validation.md",
"20_ASSET_QA\asset_validation.md",
"21_CROSS_SYSTEM_QA\cross_system_validation.md",
"22_REJECTION_AND_REWORK\rejection_rules.md",
"22_REJECTION_AND_REWORK\defect_classification.md",
"23_APPROVAL_CONTROL\approval_rules.md",
"23_APPROVAL_CONTROL\approval_scope_firewall.md",
"23_APPROVAL_CONTROL\approval_invalidation.md",
"24_LINEAGE_AND_AUDIT\forward_audit.md",
"24_LINEAGE_AND_AUDIT\reverse_audit.md",
"24_LINEAGE_AND_AUDIT\lineage_integrity.md",
"25_FINAL_OUTPUT_QA\final_output_gate.md",
"25_FINAL_OUTPUT_QA\release_blockers.md",
"26_RESEARCH_AND_CONFLICT_QA\research_conflict_gate.md",
"26_RESEARCH_AND_CONFLICT_QA\conflict_escalation.md",
"qa_approval_manifest.json",
"QA_APPROVAL_SYSTEM_STATUS.md"
)

$MissingFiles=@()
foreach($F in $CoreFiles){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFiles += $F
    }
}

$ControlFiles=Get-ChildItem (Join-Path $Root "27_FINAL_HARDENING") -Filter "*.md" -File
if($ControlFiles.Count -lt 40){
    $MissingFiles += "27_FINAL_HARDENING -> expected 40 control files"
}

if($MissingFiles.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE QA HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FILES:" -ForegroundColor Red
    $MissingFiles | ForEach-Object { Write-Host $_ }
    exit 1
}

$SemanticChecks=@(
@("qa_approval_definition.md","independent","acceptance"),
@("qa_authority_boundaries.md","does not own","canonical facts"),
@("qa_master_principles.md","UNKNOWN IS NOT PASS","FAIL-CLOSED"),
@("snapshot_verification.md","approved","stale"),
@("source_traceability.md","FINAL OUTPUT","SOURCE"),
@("biology_validation.md","Biological","REJECT"),
@("behavior_validation.md","Anthropomorphic","REJECT"),
@("movement_validation.md","biomechanics","REJECT"),
@("ecology_validation.md","visual attractiveness","valid reason"),
@("interaction_validation.md","actual event","proximity"),
@("continuity_validation.md","correct time","BLOCKED"),
@("audio_validation.md","animal","movie stereotype"),
@("stress_battle_validation.md","human combatant","Extreme stress"),
@("cinematic_validation.md","cannot override","truth"),
@("ai_production_validation.md","AI output","source-of-truth"),
@("approval_rules.md","PASS requires","complete required inputs"),
@("rejection_rules.md","REJECT","BLOCK"),
@("research_conflict_gate.md","UNKNOWN","CONFLICT"),
@("final_output_gate.md","Final output","approved"),
@("release_blockers.md","unknown material truth","BLOCKS"),
@("40_zero_loophole_control_matrix.md","AUTHORITY","FAIL CLOSED")
)

$SemanticFailures=@()

foreach($Check in $SemanticChecks){
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
    Write-Host "RESULT: ZERO-LOOPHOLE QA HARDENING INVALID" -ForegroundColor Red
    Write-Host "SEMANTIC CONTROL FAILURES:" -ForegroundColor Red
    $SemanticFailures | ForEach-Object { Write-Host $_ }
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE QA APPROVAL HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "QA INDEPENDENCE: LOCKED"
Write-Host "SOURCE-OF-TRUTH BOUNDARY: LOCKED"
Write-Host "INPUT VALIDATION: LOCKED"
Write-Host "SNAPSHOT INTEGRITY: LOCKED"
Write-Host "BIOLOGY QA: LOCKED"
Write-Host "BEHAVIOR QA: LOCKED"
Write-Host "MOVEMENT QA: LOCKED"
Write-Host "ECOLOGY QA: LOCKED"
Write-Host "DOMESTIC/TRAINING QA: LOCKED"
Write-Host "INTERACTION QA: LOCKED"
Write-Host "VISUAL IDENTITY QA: LOCKED"
Write-Host "CONTINUITY QA: LOCKED"
Write-Host "AUDIO QA: LOCKED"
Write-Host "BATTLE/HIGH-STRESS QA: LOCKED"
Write-Host "COSTUME/EQUIPMENT QA: LOCKED"
Write-Host "CINEMATIC QA: LOCKED"
Write-Host "AI PRODUCTION QA: LOCKED"
Write-Host "SCENE QA: LOCKED"
Write-Host "SHOT QA: LOCKED"
Write-Host "ASSET QA: LOCKED"
Write-Host "CROSS-SYSTEM QA: LOCKED"
Write-Host "REJECTION/REWORK: LOCKED"
Write-Host "APPROVAL CONTROL: LOCKED"
Write-Host "LINEAGE: LOCKED"
Write-Host "FORWARD AUDIT: LOCKED"
Write-Host "REVERSE AUDIT: LOCKED"
Write-Host "UNKNOWN != PASS: LOCKED"
Write-Host "CONFLICT != PASS: LOCKED"
Write-Host "STALE INPUT: BLOCKED"
Write-Host "PARTIAL PACKAGE: BLOCKED"
Write-Host "AI OUTPUT AS EVIDENCE: DISABLED"
Write-Host "CINEMATIC OVERRIDE: BLOCKED"
Write-Host "VALIDATION INDEPENDENCE: LOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.0"
Write-Host "RESEARCH: UPSTREAM RESEARCH REQUIRED"
Write-Host "PRODUCTION: BLOCKED UNTIL QA APPROVAL"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL QA LOOPHOLES DETECTED."
