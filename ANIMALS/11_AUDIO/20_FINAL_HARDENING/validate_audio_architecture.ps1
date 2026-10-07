$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Errors = @()

function Require-Text {
    param(
        [string]$Path,
        [string[]]$Tokens,
        [string]$Label
    )

    if (-not (Test-Path $Path)) {
        $script:Errors += "FILE MISSING [$Label] -> $Path"
        return
    }

    $Text = Get-Content $Path -Raw

    foreach ($Token in $Tokens) {
        if ($Text -notmatch [regex]::Escape($Token)) {
            $script:Errors += "CONTROL MISSING [$Label] -> $Token"
        }
    }
}

$RequiredFiles = @(
    "01_CORE\audio_index.md",
    "01_CORE\audio_definition.md",
    "01_CORE\audio_ownership_and_boundaries.md",
    "02_AUDIO_DATABASE\audio_database_index.md",
    "02_AUDIO_DATABASE\audio_record_schema.md",
    "03_ANIMAL_VOCALIZATION\vocalization_master_rule.md",
    "03_ANIMAL_VOCALIZATION\species_specific_vocalization.md",
    "03_ANIMAL_VOCALIZATION\individual_acoustic_variation.md",
    "04_MOVEMENT_AND_BODY_SOUNDS\movement_audio.md",
    "05_ACOUSTIC_ENVIRONMENT\acoustic_environment_master.md",
    "05_ACOUSTIC_ENVIRONMENT\acoustic_ecology.md",
    "06_BEHAVIORAL_AUDIO\behavior_to_audio_binding.md",
    "06_BEHAVIORAL_AUDIO\silence_and_nonvocal_states.md",
    "07_INTERACTION_AUDIO\interaction_audio_binding.md",
    "08_DOMESTIC_AND_HUMAN_ASSOCIATION\domestic_animal_audio.md",
    "09_AUDIO_CONTINUITY\audio_identity_continuity.md",
    "10_RECORDING_AND_REFERENCE\recording_reference_policy.md",
    "10_RECORDING_AND_REFERENCE\reference_contamination_firewall.md",
    "11_SOUND_DESIGN_AND_PROCESSING\sound_design_master_rule.md",
    "12_SPATIAL_AUDIO\spatial_audio_realism.md",
    "13_AI_AUDIO_PRODUCTION\ai_audio_master_rule.md",
    "13_AI_AUDIO_PRODUCTION\generation_contract.md",
    "13_AI_AUDIO_PRODUCTION\ai_animal_sound_realism.md",
    "14_SCENE_AND_SHOT_AUDIO\scene_audio_pipeline.md",
    "15_AUDIO_VALIDATION_AND_QA\audio_validation_gate.md",
    "15_AUDIO_VALIDATION_AND_QA\natural_animal_sound_qa.md",
    "16_RESEARCH_CONTROL\research_and_evidence.md",
    "16_RESEARCH_CONTROL\audio_fail_closed_policy.md",
    "17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\historical_audio_firewall.md",
    "17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\canonical_audio_firewall.md",
    "17_HISTORICAL_CANONICAL_AND_SUPERNATURAL\supernatural_audio_firewall.md",
    "18_ASSET_AND_LINEAGE\audio_asset_lifecycle.md",
    "18_ASSET_AND_LINEAGE\derived_audio_asset_control.md",
    "19_HANDOFFS\audio_domain_handoffs.md",
    "19_HANDOFFS\final_audio_traceability_chain.md",
    "20_FINAL_HARDENING\audio_system_manifest.json",
    "20_FINAL_HARDENING\16_final_zero_loophole_audit.md"
)

foreach ($Relative in $RequiredFiles) {
    if (-not (Test-Path (Join-Path $Root $Relative))) {
        $Errors += "REQUIRED FILE MISSING -> $Relative"
    }
}

Require-Text (Join-Path $Root "01_CORE\audio_index.md") @(
    "THE ANIMAL SOUNDS LIKE THE ANIMAL",
    "Silence is a valid"
) "NATURALISM"

Require-Text (Join-Path $Root "03_ANIMAL_VOCALIZATION\vocalization_master_rule.md") @(
    "behavioral state",
    "generic cinematic substitutes",
    "silence"
) "VOCALIZATION"

Require-Text (Join-Path $Root "06_BEHAVIORAL_AUDIO\behavior_to_audio_binding.md") @(
    "Behavior determines whether an animal should produce an audible signal",
    "generic cinematic sound"
) "BEHAVIOR_BINDING"

Require-Text (Join-Path $Root "10_RECORDING_AND_REFERENCE\recording_reference_policy.md") @(
    "Verified real-world animal recordings",
    "AI-generated audio is never evidence"
) "REFERENCE_AUTHORITY"

Require-Text (Join-Path $Root "13_AI_AUDIO_PRODUCTION\generation_contract.md") @(
    "generation_id",
    "audio_prompt_id",
    "model_version",
    "reference_set_id",
    "output_asset_id"
) "GENERATION_CONTRACT"

Require-Text (Join-Path $Root "13_AI_AUDIO_PRODUCTION\ai_animal_sound_realism.md") @(
    "species authenticity",
    "behavioral appropriateness",
    "absence of repeated synthetic loops"
) "AI_REALISM"

Require-Text (Join-Path $Root "15_AUDIO_VALIDATION_AND_QA\audio_validation_gate.md") @(
    "BIOLOGICAL CHECK",
    "BEHAVIORAL CHECK",
    "ECOLOGICAL CHECK",
    "CONTINUITY CHECK",
    "PROVENANCE CHECK"
) "VALIDATION"

Require-Text (Join-Path $Root "20_FINAL_HARDENING\audio_system_manifest.json") @(
    '"realism_first": true',
    '"natural_animal_sound_priority": true',
    '"natural_instinct_preservation": true',
    '"silence_is_valid_state": true',
    '"ai_is_source_of_truth": false',
    '"ai_output_is_evidence": false',
    '"fail_closed": true'
) "MANIFEST"

$ManifestPath = Join-Path $Root "20_FINAL_HARDENING\audio_system_manifest.json"

try {
    $Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json

    if ($Manifest.system -ne "AUDIO") {
        $Errors += "MANIFEST SYSTEM INVALID"
    }

    if ($Manifest.realism_first -ne $true) {
        $Errors += "REALISM FLAG INVALID"
    }

    if ($Manifest.natural_animal_sound_priority -ne $true) {
        $Errors += "NATURAL ANIMAL SOUND PRIORITY INVALID"
    }

    if ($Manifest.ai_is_source_of_truth -ne $false) {
        $Errors += "AI SOURCE-OF-TRUTH FLAG INVALID"
    }

    if ($Manifest.ai_output_is_evidence -ne $false) {
        $Errors += "AI EVIDENCE FLAG INVALID"
    }

    if ($Manifest.fail_closed -ne $true) {
        $Errors += "FAIL-CLOSED FLAG INVALID"
    }
}
catch {
    $Errors += "MANIFEST JSON INVALID"
}

Write-Host ""
Write-Host "11_AUDIO ZERO-LOOPHOLE ARCHITECTURE VALIDATOR"
Write-Host "=============================================="

if ($Errors.Count -gt 0) {
    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red
    Write-Host ""
    foreach ($E in $Errors) {
        Write-Host "ERROR -> $E" -ForegroundColor Red
    }
    exit 1
}

Write-Host "RESULT: AUDIO ARCHITECTURE VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "REALISM: LOCKED"
Write-Host "NATURAL ANIMAL SOUNDS: LOCKED"
Write-Host "SILENCE AS VALID STATE: LOCKED"
Write-Host "AI IS NOT SOURCE OF TRUTH: LOCKED"
Write-Host "STATE: READY FOR HARDENING REVIEW"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> EVIDENCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> CONTINUITY_SNAPSHOT -> SCENE -> SHOT -> AUDIO_REQUIREMENT -> AUDIO_PROMPT -> MODEL_OR_RECORDING -> REFERENCE_SET -> GENERATION -> ASSET -> DERIVED_ASSET -> VALIDATION -> APPROVAL -> FINAL_MIX -> FINAL_SHOT"
Write-Host "NO INITIAL ARCHITECTURE GAPS DETECTED."
Write-Host ""
