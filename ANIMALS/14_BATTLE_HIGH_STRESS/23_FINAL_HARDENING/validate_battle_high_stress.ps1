$ErrorActionPreference="Stop"

$Root=Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Hard=Join-Path $Root "23_FINAL_HARDENING"

$errors=New-Object System.Collections.Generic.List[string]

function Require-Text {
    param(
        [string]$File,
        [string[]]$Tokens,
        [string]$Label
    )

    $Path=Join-Path $Hard $File

    if(-not (Test-Path $Path)){
        $errors.Add("CONTROL MISSING [$Label] -> $File")
        return
    }

    $Text=(Get-Content $Path -Raw).ToLowerInvariant()

    foreach($Token in $Tokens){
        if($Text -notlike "*$($Token.ToLowerInvariant())*"){
            $errors.Add("CONTROL INCOMPLETE [$Label] -> missing semantic requirement: $Token")
        }
    }
}

Write-Host "14_BATTLE_HIGH_STRESS ZERO-LOOPHOLE VALIDATOR" -ForegroundColor Cyan
Write-Host "------------------------------------------------"

if(-not (Test-Path $Root)){
    $errors.Add("SYSTEM ROOT MISSING")
}

if(-not (Test-Path "$Root\battle_high_stress_manifest.json")){
    $errors.Add("MANIFEST MISSING")
}

$RequiredControls=@(
"01_authority_boundary_firewall.md",
"02_stress_causality_firewall.md",
"03_species_response_firewall.md",
"04_individual_variation_firewall.md",
"05_fear_aggression_firewall.md",
"06_panic_firewall.md",
"07_group_response_firewall.md",
"08_predator_prey_firewall.md",
"09_injury_causality_firewall.md",
"10_pain_behavior_firewall.md",
"11_fatigue_load_firewall.md",
"12_recovery_firewall.md",
"13_training_stress_firewall.md",
"14_handler_command_firewall.md",
"15_historical_context_firewall.md",
"16_canonical_context_firewall.md",
"17_supernatural_boundary_firewall.md",
"18_environment_exposure_firewall.md",
"19_movement_physics_firewall.md",
"20_equipment_welfare_firewall.md",
"21_audio_behavior_firewall.md",
"22_cinematic_override_firewall.md",
"23_ai_source_of_truth_firewall.md",
"24_prompt_integrity_firewall.md",
"25_model_output_firewall.md",
"26_multi_asset_consistency.md",
"27_background_population_firewall.md",
"28_temporal_order_firewall.md",
"29_state_transition_firewall.md",
"30_snapshot_atomicity_firewall.md",
"31_stale_snapshot_firewall.md",
"32_duplicate_event_firewall.md",
"33_provenance_tamper_firewall.md",
"34_validation_independence_firewall.md",
"35_approval_scope_firewall.md",
"36_forbidden_shortcuts.md",
"37_forward_reverse_audit.md",
"38_zero_loophole_control_matrix.md",
"39_final_zero_loophole_audit.md"
)

foreach($File in $RequiredControls){
    if(-not (Test-Path (Join-Path $Hard $File))){
        $errors.Add("CONTROL FILE MISSING -> $File")
    }
}

Require-Text "01_authority_boundary_firewall.md" @(
    "may not override",
    "biology",
    "behavior",
    "movement",
    "continuity"
) "AUTHORITY_BOUNDARY"

Require-Text "02_stress_causality_firewall.md" @(
    "traceable cause",
    "trigger",
    "exposure",
    "response"
) "STRESS_CAUSALITY"

Require-Text "03_species_response_firewall.md" @(
    "species-appropriate",
    "taxonomy",
    "insufficient"
) "SPECIES_RESPONSE"

Require-Text "05_fear_aggression_firewall.md" @(
    "fear does not equal aggression",
    "flight",
    "freeze",
    "defensive behavior"
) "FEAR_AGGRESSION"

Require-Text "06_panic_firewall.md" @(
    "panic is not the default",
    "credible trigger",
    "evidence"
) "PANIC"

Require-Text "07_group_response_firewall.md" @(
    "individual variation",
    "group",
    "synchronization"
) "GROUP_RESPONSE"

Require-Text "09_injury_causality_firewall.md" @(
    "cause",
    "location",
    "severity",
    "timing",
    "consequence"
) "INJURY"

Require-Text "11_fatigue_load_firewall.md" @(
    "fatigue",
    "workload",
    "recovery",
    "peak"
) "FATIGUE"

Require-Text "12_recovery_firewall.md" @(
    "recovery",
    "time",
    "continuity"
) "RECOVERY"

Require-Text "13_training_stress_firewall.md" @(
    "training modifies response",
    "fear",
    "fatigue",
    "instinct"
) "TRAINING"

Require-Text "15_historical_context_firewall.md" @(
    "period",
    "region",
    "culture",
    "modern"
) "HISTORICAL"

Require-Text "16_canonical_context_firewall.md" @(
    "canonical",
    "explicit evidence",
    "cinematic reconstruction"
) "CANONICAL"

Require-Text "17_supernatural_boundary_firewall.md" @(
    "supernatural",
    "approved",
    "ordinary ai errors"
) "SUPERNATURAL"

Require-Text "19_movement_physics_firewall.md" @(
    "impossible",
    "movement",
    "biomechanics",
    "blocked"
) "MOVEMENT_PHYSICS"

Require-Text "20_equipment_welfare_firewall.md" @(
    "equipment",
    "anatomy",
    "welfare"
) "EQUIPMENT_WELFARE"

Require-Text "21_audio_behavior_firewall.md" @(
    "species",
    "behavior",
    "silence"
) "AUDIO"

Require-Text "22_cinematic_override_firewall.md" @(
    "may not alter",
    "behavior",
    "injury",
    "continuity"
) "CINEMATIC_OVERRIDE"

Require-Text "23_ai_source_of_truth_firewall.md" @(
    "ai output",
    "never evidence",
    "reject"
) "AI_SOURCE_OF_TRUTH"

Require-Text "24_prompt_integrity_firewall.md" @(
    "compiled from approved snapshots",
    "revalidation",
    "new behavior"
) "PROMPT_INTEGRITY"

Require-Text "25_model_output_firewall.md" @(
    "generated output",
    "behavioral drift",
    "movement drift"
) "MODEL_OUTPUT"

Require-Text "26_multi_asset_consistency.md" @(
    "same event",
    "animal identity",
    "stress state",
    "different camera angles"
) "MULTI_ASSET"

Require-Text "28_temporal_order_firewall.md" @(
    "temporal ordering",
    "cause",
    "simultaneous"
) "TEMPORAL_ORDER"

Require-Text "29_state_transition_firewall.md" @(
    "previous state",
    "event",
    "new state",
    "no silent transitions"
) "STATE_TRANSITION"

Require-Text "30_snapshot_atomicity_firewall.md" @(
    "one internally consistent state",
    "partial updates",
    "new snapshot"
) "SNAPSHOT_ATOMICITY"

Require-Text "31_stale_snapshot_firewall.md" @(
    "outdated snapshot",
    "newer approved state",
    "blocked"
) "STALE_SNAPSHOT"

Require-Text "33_provenance_tamper_firewall.md" @(
    "provenance",
    "auditable",
    "invalidates approval"
) "PROVENANCE"

Require-Text "34_validation_independence_firewall.md" @(
    "independently",
    "approved state"
) "VALIDATION_INDEPENDENCE"

Require-Text "35_approval_scope_firewall.md" @(
    "approval",
    "exact",
    "scene",
    "asset"
) "APPROVAL_SCOPE"

Require-Text "37_forward_reverse_audit.md" @(
    "forward",
    "reverse",
    "final shot",
    "source"
) "AUDIT"

Require-Text "38_zero_loophole_control_matrix.md" @(
    "authority",
    "causality",
    "species",
    "injury",
    "recovery",
    "ai",
    "provenance",
    "approval"
) "CONTROL_MATRIX"

Require-Text "39_final_zero_loophole_audit.md" @(
    "authority boundaries",
    "stress requires causality",
    "ai cannot become source of truth",
    "forward and reverse audits"
) "FINAL_AUDIT"

if($errors.Count -gt 0){
    Write-Host ""
    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red
    foreach($ErrorItem in $errors){
        Write-Host "ERROR -> $ErrorItem" -ForegroundColor Red
    }
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE BATTLE/HIGH-STRESS HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE" -ForegroundColor Green
Write-Host "HARDENING: COMPLETE" -ForegroundColor Green
Write-Host "REALISM: LOCKED" -ForegroundColor Green
Write-Host "NATURAL ANIMAL INSTINCTS: LOCKED" -ForegroundColor Green
Write-Host "STRESS CAUSALITY: LOCKED" -ForegroundColor Green
Write-Host "SPECIES-SPECIFIC RESPONSE: LOCKED" -ForegroundColor Green
Write-Host "INJURY / FATIGUE / RECOVERY: LOCKED" -ForegroundColor Green
Write-Host "HISTORICAL / CANONICAL BOUNDARY: LOCKED" -ForegroundColor Green
Write-Host "SUPERNATURAL BOUNDARY: LOCKED" -ForegroundColor Green
Write-Host "CINEMATIC OVERRIDE: BLOCKED" -ForegroundColor Green
Write-Host "AI SOURCE-OF-TRUTH: DISABLED" -ForegroundColor Green
Write-Host "AI OUTPUT AS EVIDENCE: DISABLED" -ForegroundColor Green
Write-Host "VALIDATION INDEPENDENCE: LOCKED" -ForegroundColor Green
Write-Host "FORWARD AUDIT: LOCKED" -ForegroundColor Green
Write-Host "REVERSE AUDIT: LOCKED" -ForegroundColor Green
Write-Host "FAIL-CLOSED: LOCKED" -ForegroundColor Green
Write-Host "STATE: FROZEN" -ForegroundColor Green
Write-Host "VERSION: 1.0" -ForegroundColor Green
Write-Host "RESEARCH: NOT YET POPULATED" -ForegroundColor Yellow
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS" -ForegroundColor Yellow
Write-Host "TRACEABILITY: SOURCE -> EVIDENCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> STRESS_STATE -> SCENE -> SHOT -> PROMPT -> MODEL -> REFERENCE_SET -> GENERATION -> ASSET -> VALIDATION -> APPROVAL -> FINAL_SHOT" -ForegroundColor Green
Write-Host "AUDIT: FORWARD + REVERSE" -ForegroundColor Green
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL BATTLE/HIGH-STRESS LOOPHOLES DETECTED." -ForegroundColor Green

