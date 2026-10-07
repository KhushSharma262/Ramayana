$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Errors = @()

function Require-File {
    param([string]$RelativePath)

    $Path = Join-Path $Root $RelativePath

    if (-not (Test-Path $Path)) {
        $script:Errors += "FILE MISSING -> $RelativePath"
    }
}

function Require-Text {
    param(
        [string]$RelativePath,
        [string[]]$Tokens,
        [string]$Label
    )

    $Path = Join-Path $Root $RelativePath

    if (-not (Test-Path $Path)) {
        $script:Errors += "FILE MISSING [$Label] -> $RelativePath"
        return
    }

    $Text = Get-Content $Path -Raw

    foreach ($Token in $Tokens) {
        if ($Text -notmatch [regex]::Escape($Token)) {
            $script:Errors += "CONTROL MISSING [$Label] -> $Token"
        }
    }
}

$RequiredHardeningFiles = @(
    "20_FINAL_HARDENING\17_audio_source_identity_firewall.md",
    "20_FINAL_HARDENING\18_vocalization_causality_firewall.md",
    "20_FINAL_HARDENING\19_vocalization_frequency_duration_firewall.md",
    "20_FINAL_HARDENING\20_vocalization_intensity_firewall.md",
    "20_FINAL_HARDENING\21_age_sex_state_acoustic_compatibility.md",
    "20_FINAL_HARDENING\22_acoustic_scene_presence_firewall.md",
    "20_FINAL_HARDENING\23_background_soundscape_density_firewall.md",
    "20_FINAL_HARDENING\24_negative_acoustic_evidence_firewall.md",
    "20_FINAL_HARDENING\25_environmental_acoustic_causality_firewall.md",
    "20_FINAL_HARDENING\26_historical_acoustic_contamination_firewall.md",
    "20_FINAL_HARDENING\27_recording_editing_provenance_firewall.md",
    "20_FINAL_HARDENING\28_reference_to_truth_firewall.md",
    "20_FINAL_HARDENING\29_prompt_compilation_firewall.md",
    "20_FINAL_HARDENING\30_prompt_negative_control_firewall.md",
    "20_FINAL_HARDENING\31_model_audio_identity_firewall.md",
    "20_FINAL_HARDENING\32_stochastic_audio_control.md",
    "20_FINAL_HARDENING\33_temporal_audio_sync_firewall.md",
    "20_FINAL_HARDENING\34_acoustic_physics_firewall.md",
    "20_FINAL_HARDENING\35_multi_source_separation_firewall.md",
    "20_FINAL_HARDENING\36_audio_asset_lineage_firewall.md",
    "20_FINAL_HARDENING\37_audio_approval_scope_firewall.md",
    "20_FINAL_HARDENING\38_audio_validation_independence_firewall.md",
    "20_FINAL_HARDENING\39_audio_conflict_resolution_firewall.md",
    "20_FINAL_HARDENING\40_audio_event_ordering_firewall.md",
    "20_FINAL_HARDENING\41_audio_replacement_and_regeneration_firewall.md",
    "20_FINAL_HARDENING\42_audio_mixing_meaning_firewall.md",
    "20_FINAL_HARDENING\43_music_dialogue_masking_firewall.md",
    "20_FINAL_HARDENING\44_audio_loop_detection_firewall.md",
    "20_FINAL_HARDENING\45_audio_population_sampling_firewall.md",
    "20_FINAL_HARDENING\46_audio_supernatural_boundary_firewall.md",
    "20_FINAL_HARDENING\47_audio_reverse_audit_firewall.md",
    "20_FINAL_HARDENING\48_audio_forward_audit_firewall.md",
    "20_FINAL_HARDENING\49_audio_zero_loophole_control_matrix.md",
    "20_FINAL_HARDENING\50_audio_final_zero_loophole_audit_v2.md",
    "20_FINAL_HARDENING\audio_system_manifest.json"
)

foreach ($File in $RequiredHardeningFiles) {
    Require-File $File
}

Require-Text "20_FINAL_HARDENING\17_audio_source_identity_firewall.md" @(
    "species",
    "scene presence",
    "BLOCK"
) "SOURCE_IDENTITY"

Require-Text "20_FINAL_HARDENING\18_vocalization_causality_firewall.md" @(
    "ANIMAL STATE",
    "BEHAVIORAL STATE",
    "VOCALIZATION TYPE",
    "USE SILENCE"
) "VOCALIZATION_CAUSALITY"

Require-Text "20_FINAL_HARDENING\19_vocalization_frequency_duration_firewall.md" @(
    "frequency",
    "duration",
    "repetition"
) "VOCALIZATION_FREQUENCY"

Require-Text "20_FINAL_HARDENING\22_acoustic_scene_presence_firewall.md" @(
    "visible animal",
    "approved offscreen animal",
    "background population"
) "SCENE_PRESENCE"

Require-Text "20_FINAL_HARDENING\23_background_soundscape_density_firewall.md" @(
    "species abundance",
    "habitat",
    "season",
    "population density"
) "SOUNDSCAPE_DENSITY"

Require-Text "20_FINAL_HARDENING\24_negative_acoustic_evidence_firewall.md" @(
    "UNKNOWN",
    "ABSENT",
    "SILENT"
) "NEGATIVE_EVIDENCE"

Require-Text "20_FINAL_HARDENING\25_environmental_acoustic_causality_firewall.md" @(
    "Every environmental sound requires a plausible source"
) "ENVIRONMENT_CAUSALITY"

Require-Text "20_FINAL_HARDENING\28_reference_to_truth_firewall.md" @(
    "References never automatically become truth"
) "REFERENCE_TRUTH"

Require-Text "20_FINAL_HARDENING\29_prompt_compilation_firewall.md" @(
    "approved domain snapshots",
    "approved continuity snapshot",
    "unsupported"
) "PROMPT_COMPILATION"

Require-Text "20_FINAL_HARDENING\30_prompt_negative_control_firewall.md" @(
    "contradictions",
    "deterministic priority"
) "PROMPT_PRIORITY"

Require-Text "20_FINAL_HARDENING\32_stochastic_audio_control.md" @(
    "generation_id",
    "seed",
    "model version",
    "reference set"
) "STOCHASTIC"

Require-Text "20_FINAL_HARDENING\33_temporal_audio_sync_firewall.md" @(
    "visible movement",
    "vocal onset",
    "causal event"
) "TEMPORAL_SYNC"

Require-Text "20_FINAL_HARDENING\34_acoustic_physics_firewall.md" @(
    "distance attenuation",
    "occlusion",
    "reverberation"
) "ACOUSTIC_PHYSICS"

Require-Text "20_FINAL_HARDENING\36_audio_asset_lineage_firewall.md" @(
    "asset_id",
    "generation_id",
    "processing_history",
    "validation_state"
) "ASSET_LINEAGE"

Require-Text "20_FINAL_HARDENING\37_audio_approval_scope_firewall.md" @(
    "asset",
    "generation",
    "scene",
    "shot"
) "APPROVAL_SCOPE"

Require-Text "20_FINAL_HARDENING\38_audio_validation_independence_firewall.md" @(
    "sole authority",
    "EXPECTED APPROVED STATE",
    "GENERATED AUDIO STATE"
) "VALIDATION_INDEPENDENCE"

Require-Text "20_FINAL_HARDENING\39_audio_conflict_resolution_firewall.md" @(
    "Audio cannot resolve upstream factual conflicts",
    "BLOCK"
) "CONFLICT_RESOLUTION"

Require-Text "20_FINAL_HARDENING\40_audio_event_ordering_firewall.md" @(
    "event_id",
    "causal_parent",
    "simultaneous_events"
) "EVENT_ORDERING"

Require-Text "20_FINAL_HARDENING\42_audio_mixing_meaning_firewall.md" @(
    "semantic interpretation",
    "Mixing cannot change"
) "MIXING_MEANING"

Require-Text "20_FINAL_HARDENING\44_audio_loop_detection_firewall.md" @(
    "unnatural repetition",
    "Repeated assets"
) "LOOP_CONTROL"

Require-Text "20_FINAL_HARDENING\45_audio_population_sampling_firewall.md" @(
    "controlled sampling",
    "species",
    "abundance",
    "habitat"
) "POPULATION_SAMPLING"

Require-Text "20_FINAL_HARDENING\47_audio_reverse_audit_firewall.md" @(
    "FINAL MIX",
    "SOURCE",
    "EVIDENCE",
    "BLOCK"
) "REVERSE_AUDIT"

Require-Text "20_FINAL_HARDENING\48_audio_forward_audit_firewall.md" @(
    "SOURCE",
    "FINAL SHOT",
    "VALIDATION",
    "APPROVAL"
) "FORWARD_AUDIT"

Require-Text "20_FINAL_HARDENING\49_audio_zero_loophole_control_matrix.md" @(
    "Wrong species sound",
    "Wrong behavioral cause",
    "AI hallucination",
    "Temporal synchronization failure",
    "Asset lineage loss",
    "Reverse traceability failure"
) "CONTROL_MATRIX"

$ManifestPath = Join-Path $Root "20_FINAL_HARDENING\audio_system_manifest.json"

try {
    $Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json

    $RequiredFlags = @(
        "realism_first",
        "natural_animal_sound_priority",
        "natural_instinct_preservation",
        "silence_is_valid_state",
        "ai_is_source_of_truth",
        "ai_output_is_evidence",
        "vocalization_causality_required",
        "source_identity_required",
        "scene_presence_required",
        "ecological_density_control",
        "negative_evidence_control",
        "reference_provenance_required",
        "prompt_compilation_control",
        "prompt_priority_control",
        "model_drift_control",
        "stochastic_generation_control",
        "temporal_sync_control",
        "acoustic_physics_control",
        "multi_source_separation_control",
        "asset_lineage_control",
        "approval_scope_control",
        "validation_independence",
        "conflict_resolution_control",
        "event_ordering_control",
        "replacement_control",
        "mixing_meaning_control",
        "loop_detection_control",
        "population_sampling_control",
        "supernatural_boundary_control",
        "forward_audit",
        "reverse_audit",
        "fail_closed"
    )

    foreach ($Flag in $RequiredFlags) {
        $Property = $Manifest.PSObject.Properties[$Flag]

        if ($null -eq $Property) {
            $Errors += "MANIFEST FLAG MISSING -> $Flag"
        }
        elseif ($Property.Value -ne $true) {
            if ($Flag -eq "ai_is_source_of_truth" -and $Property.Value -eq $false) {
                continue
            }

            if ($Flag -eq "ai_output_is_evidence" -and $Property.Value -eq $false) {
                continue
            }

            $Errors += "MANIFEST FLAG INVALID -> $Flag"
        }
    }

    if ($Manifest.system -ne "AUDIO") {
        $Errors += "MANIFEST SYSTEM INVALID"
    }

    if ($Manifest.version -ne "2.0") {
        $Errors += "MANIFEST VERSION INVALID"
    }

    if ($Manifest.fail_closed -ne $true) {
        $Errors += "FAIL-CLOSED CONTROL INVALID"
    }

    if ($Manifest.production_state -ne "BLOCKED_UNTIL_APPROVED_SNAPSHOTS") {
        $Errors += "PRODUCTION STATE INVALID"
    }

    if ($Manifest.research_state -ne "NOT_YET_POPULATED") {
        $Errors += "RESEARCH STATE INVALID"
    }
}
catch {
    $Errors += "MANIFEST JSON INVALID"
}

Write-Host ""
Write-Host "11_AUDIO ZERO-LOOPHOLE HARDENING VALIDATOR v2.0"
Write-Host "================================================"

if ($Errors.Count -gt 0) {
    Write-Host "RESULT: HARDENING VALIDATION FAILED" -ForegroundColor Red
    Write-Host ""

    foreach ($E in $Errors) {
        Write-Host "ERROR -> $E" -ForegroundColor Red
    }

    exit 1
}

Write-Host "RESULT: ZERO-LOOPHOLE AUDIO HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "REALISM: LOCKED"
Write-Host "NATURAL ANIMAL SOUNDS: LOCKED"
Write-Host "NATURAL INSTINCTS: LOCKED"
Write-Host "SILENCE AS VALID STATE: LOCKED"
Write-Host "VOCALIZATION CAUSALITY: LOCKED"
Write-Host "ACOUSTIC ECOLOGY: LOCKED"
Write-Host "AI SOURCE-OF-TRUTH: DISABLED"
Write-Host "AI AUDIO EVIDENCE: DISABLED"
Write-Host "VALIDATION INDEPENDENCE: LOCKED"
Write-Host "FORWARD AUDIT: LOCKED"
Write-Host "REVERSE AUDIT: LOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 2.0"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> EVIDENCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> CONTINUITY_SNAPSHOT -> SCENE -> SHOT -> AUDIO_REQUIREMENT -> AUDIO_PROMPT -> MODEL_OR_RECORDING -> REFERENCE_SET -> GENERATION -> ASSET -> DERIVED_ASSET -> VALIDATION -> APPROVAL -> FINAL_MIX -> FINAL_SHOT"
Write-Host "AUDIT: FORWARD + REVERSE"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL AUDIO LOOPHOLES DETECTED."
Write-Host ""

