$ErrorActionPreference = "Stop"

$ROOT = Split-Path -Parent $PSScriptRoot
$Errors = New-Object System.Collections.Generic.List[string]
$Warnings = New-Object System.Collections.Generic.List[string]

function Require-File {
    param([string]$Relative)

    $Path = Join-Path $ROOT $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING: $Relative")
        return
    }

    $Content = Get-Content -LiteralPath $Path -Raw

    if ($Content.Trim().Length -eq 0) {
        $Errors.Add("EMPTY: $Relative")
    }
}

function Require-Text {
    param(
        [string]$Relative,
        [string]$Pattern
    )

    $Path = Join-Path $ROOT $Relative

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING CONTROL FILE: $Relative")
        return
    }

    $Content = Get-Content -LiteralPath $Path -Raw

    if ($Content -notmatch [regex]::Escape($Pattern)) {
        $Errors.Add("CONTROL MISSING [$Pattern] IN $Relative")
    }
}

Write-Host ""
Write-Host "================================================"
Write-Host "RAMAYAN DOMESTIC / TRAINED FINAL VALIDATOR"
Write-Host "================================================"
Write-Host ""

# ------------------------------------------------
# Required directories
# ------------------------------------------------

$Directories = @(
    "01_CORE",
    "02_DOMESTICATION",
    "03_TRAINING",
    "04_HUMAN_ANIMAL_RELATIONSHIPS",
    "05_WORK_AND_USE",
    "06_HUSBANDRY",
    "07_EQUIPMENT",
    "08_MILITARY",
    "09_INDIVIDUAL_ANIMALS",
    "10_HISTORICAL_RECONSTRUCTION",
    "11_CONTINUITY",
    "12_RESEARCH_CONTROL",
    "13_PRODUCTION_HANDOFF",
    "14_BACKGROUND_WORLD",
    "15_FINAL_HARDENING"
)

foreach ($D in $Directories) {

    $Path = Join-Path $ROOT $D

    if (!(Test-Path -LiteralPath $Path)) {
        $Errors.Add("MISSING DIRECTORY: $D")
    }
}

# ------------------------------------------------
# Required control files
# ------------------------------------------------

$Files = @(
    "01_CORE\domestic_trained_index.md",
    "01_CORE\domestic_trained_definition.md",
    "01_CORE\domestic_trained_ownership_and_boundaries.md",

    "02_DOMESTICATION\domestication_status.md",
    "02_DOMESTICATION\taming_habituation_and_captivity.md",
    "02_DOMESTICATION\domestic_species_database.md",

    "03_TRAINING\training_system.md",
    "03_TRAINING\commands_cues_and_signal_learning.md",
    "03_TRAINING\training_progression_and_retraining.md",

    "04_HUMAN_ANIMAL_RELATIONSHIPS\human_animal_relationships.md",
    "04_HUMAN_ANIMAL_RELATIONSHIPS\human_animal_trust_and_fear.md",
    "04_HUMAN_ANIMAL_RELATIONSHIPS\handler_continuity.md",

    "05_WORK_AND_USE\work_roles.md",
    "05_WORK_AND_USE\workload_conditioning_and_recovery.md",
    "05_WORK_AND_USE\specialized_uses.md",

    "06_HUSBANDRY\husbandry_index.md",
    "06_HUSBANDRY\feeding_watering_and_care.md",
    "06_HUSBANDRY\housing_tethering_and_management.md",
    "06_HUSBANDRY\reproduction_and_breeding_management.md",

    "07_EQUIPMENT\equipment_index.md",
    "07_EQUIPMENT\equipment_database.md",
    "07_EQUIPMENT\equipment_animal_compatibility.md",
    "07_EQUIPMENT\equipment_continuity.md",

    "08_MILITARY\military_animals_index.md",
    "08_MILITARY\war_animals_and_training.md",
    "08_MILITARY\military_logistics_and_camp_animals.md",

    "09_INDIVIDUAL_ANIMALS\individual_animal_index.md",
    "09_INDIVIDUAL_ANIMALS\individual_identity_and_variation.md",
    "09_INDIVIDUAL_ANIMALS\background_domestic_populations.md",

    "10_HISTORICAL_RECONSTRUCTION\historical_domestic_animal_policy.md",
    "10_HISTORICAL_RECONSTRUCTION\ancient_breeds_types_and_populations.md",
    "10_HISTORICAL_RECONSTRUCTION\historical_equipment_and_use.md",
    "10_HISTORICAL_RECONSTRUCTION\historical_uncertainty.md",

    "11_CONTINUITY\domestic_trained_continuity.md",
    "11_CONTINUITY\animal_replacement_and_identity.md",
    "11_CONTINUITY\training_equipment_and_handler_continuity.md",

    "12_RESEARCH_CONTROL\research_and_evidence.md",
    "12_RESEARCH_CONTROL\conflicts_and_uncertainty.md",
    "12_RESEARCH_CONTROL\claim_provenance_and_source_version.md",
    "12_RESEARCH_CONTROL\dependency_invalidation.md",
    "12_RESEARCH_CONTROL\approval_and_snapshot_control.md",

    "13_PRODUCTION_HANDOFF\behavior_handoff.md",
    "13_PRODUCTION_HANDOFF\movement_handoff.md",
    "13_PRODUCTION_HANDOFF\ecology_handoff.md",
    "13_PRODUCTION_HANDOFF\ai_production_handoff.md",

    "14_BACKGROUND_WORLD\continuous_domestic_world.md",
    "14_BACKGROUND_WORLD\background_population_behavior.md",

    "15_FINAL_HARDENING\01_entity_identity_and_taxonomy.md",
    "15_FINAL_HARDENING\02_training_state_machine.md",
    "15_FINAL_HARDENING\03_individual_continuity_model.md",
    "15_FINAL_HARDENING\04_equipment_continuity_model.md",
    "15_FINAL_HARDENING\05_human_relationship_continuity.md",
    "15_FINAL_HARDENING\06_historical_practice_firewall.md",
    "15_FINAL_HARDENING\07_evidence_inference_decision_firewall.md",
    "15_FINAL_HARDENING\08_cross_system_dependency_graph.md",
    "15_FINAL_HARDENING\09_scene_to_asset_traceability.md",
    "15_FINAL_HARDENING\10_prompt_contamination_firewall.md",
    "15_FINAL_HARDENING\11_regeneration_drift_control.md",
    "15_FINAL_HARDENING\12_research_record_schema.md",
    "15_FINAL_HARDENING\13_approval_authority.md",
    "15_FINAL_HARDENING\14_rollback_and_version_history.md",
    "15_FINAL_HARDENING\15_final_domestic_trained_audit.md",

    "15_FINAL_HARDENING\domestic_trained_manifest.json",
    "15_FINAL_HARDENING\domestic_trained_entity_registry.json",
    "15_FINAL_HARDENING\domestic_trained_production_trace.json",
    "15_FINAL_HARDENING\domestic_trained_ownership_registry.json",

    "DOMESTIC_TRAINED_SYSTEM_STATUS.md"
)

foreach ($F in $Files) {
    Require-File $F
}

# ------------------------------------------------
# Mandatory concepts
# ------------------------------------------------

$Checks = @{

"01_CORE\domestic_trained_definition.md" = @(
    "DOMESTICATION",
    "TAMING",
    "HABITUATION",
    "TRAINING",
    "DOMESTIC STATUS"
)

"03_TRAINING\training_system.md" = @(
    "TRAINING STATES",
    "TRAINING MEMORY",
    "FAILURE STATES"
)

"04_HUMAN_ANIMAL_RELATIONSHIPS\human_animal_relationships.md" = @(
    "RELATIONSHIP TYPES",
    "INDIVIDUALITY",
    "CONTINUITY"
)

"07_EQUIPMENT\equipment_database.md" = @(
    "EQUIPMENT DATABASE",
    "HISTORICAL EQUIPMENT"
)

"09_INDIVIDUAL_ANIMALS\individual_animal_index.md" = @(
    "animal_id",
    "species_id",
    "training_level",
    "continuity_state"
)

"10_HISTORICAL_RECONSTRUCTION\historical_domestic_animal_policy.md" = @(
    "EVIDENCE HIERARCHY",
    "INDIA-FIRST",
    "TEMPORAL CONTROL"
)

"11_CONTINUITY\domestic_trained_continuity.md" = @(
    "CONTINUITY STATE",
    "CHANGE EVENTS",
    "AI regeneration"
)

"13_PRODUCTION_HANDOFF\ai_production_handoff.md" = @(
    "Approved domestic/trained snapshot",
    "AI FIREWALL",
    "REGENERATION"
)

"15_FINAL_HARDENING\05_human_relationship_continuity.md" = @(
    "Relationships persist"
)

"15_FINAL_HARDENING\06_historical_practice_firewall.md" = @(
    "Modern husbandry",
    "Modern breed",
    "Modern equipment",
    "Modern training method"
)

"15_FINAL_HARDENING\09_scene_to_asset_traceability.md" = @(
    "scene_id",
    "animal_id",
    "snapshot_id",
    "asset_id",
    "audit_id"
)

"15_FINAL_HARDENING\10_prompt_contamination_firewall.md" = @(
    "PROMPT CONTAMINATION FIREWALL",
    "AI prompts"
)

"15_FINAL_HARDENING\11_regeneration_drift_control.md" = @(
    "REGENERATION DRIFT CONTROL",
    "BLOCKED_DRIFT"
)

"15_FINAL_HARDENING\15_final_domestic_trained_audit.md" = @(
    "Final Domestic / Trained Audit",
    "Animal identity",
    "Training state",
    "Equipment",
    "Historical applicability",
    "Final-shot traceability"
)
}

foreach ($Entry in $Checks.GetEnumerator()) {

    foreach ($Pattern in $Entry.Value) {
        Require-Text $Entry.Key $Pattern
    }
}

# ------------------------------------------------
# JSON validation
# ------------------------------------------------

$JSONFiles = @(
    "15_FINAL_HARDENING\domestic_trained_manifest.json",
    "15_FINAL_HARDENING\domestic_trained_entity_registry.json",
    "15_FINAL_HARDENING\domestic_trained_production_trace.json",
    "15_FINAL_HARDENING\domestic_trained_ownership_registry.json"
)

foreach ($J in $JSONFiles) {

    $Path = Join-Path $ROOT $J

    try {
        Get-Content -LiteralPath $Path -Raw | ConvertFrom-Json | Out-Null
    }
    catch {
        $Errors.Add("INVALID JSON: $J")
    }
}

# ------------------------------------------------
# Manifest validation
# ------------------------------------------------

$ManifestPath = Join-Path $ROOT "15_FINAL_HARDENING\domestic_trained_manifest.json"

if (Test-Path -LiteralPath $ManifestPath) {

    $Manifest = Get-Content -LiteralPath $ManifestPath -Raw | ConvertFrom-Json

    if ($Manifest.architecture_version -ne "1.0") {
        $Errors.Add("WRONG ARCHITECTURE VERSION")
    }

    if ($Manifest.status -ne "FROZEN") {
        $Errors.Add("ARCHITECTURE NOT FROZEN")
    }

    if ($Manifest.production_status -notmatch "BLOCKED") {
        $Errors.Add("PRODUCTION FIREWALL FAILURE")
    }

    if ($Manifest.ai_output_is_evidence -ne $false) {
        $Errors.Add("AI EVIDENCE FIREWALL FAILURE")
    }

    if ($Manifest.individual_identity_required -ne $true) {
        $Errors.Add("INDIVIDUAL IDENTITY CONTROL FAILURE")
    }

    if ($Manifest.training_state_required -ne $true) {
        $Errors.Add("TRAINING STATE CONTROL FAILURE")
    }

    if ($Manifest.equipment_continuity_required -ne $true) {
        $Errors.Add("EQUIPMENT CONTINUITY CONTROL FAILURE")
    }
}

# ------------------------------------------------
# Forbidden contamination
# ------------------------------------------------

$MarkdownFiles = Get-ChildItem -LiteralPath $ROOT -Recurse -File -Filter "*.md"

foreach ($File in $MarkdownFiles) {

    $Content = Get-Content -LiteralPath $File.FullName -Raw

    $Forbidden = @(
        "AI GENERATED EVIDENCE",
        "AI OUTPUT IS EVIDENCE",
        "VISUAL PLAUSIBILITY IS HISTORICAL EVIDENCE",
        "MODERN PRACTICE IS ANCIENT FACT"
    )

    foreach ($F in $Forbidden) {

        if ($Content -match [regex]::Escape($F)) {
            $Errors.Add("FORBIDDEN CONTAMINATION IN $($File.FullName): $F")
        }
    }
}

# ------------------------------------------------
# Legacy warning
# ------------------------------------------------

$Legacy = Get-ChildItem -LiteralPath $ROOT -Recurse -Directory |
    Where-Object { $_.Name -like "_LEGACY_REVIEW_*" }

if ($Legacy.Count -gt 0) {
    $Warnings.Add("LEGACY QUARANTINE EXISTS. REVIEW BEFORE PROMOTION.")
}

# ------------------------------------------------
# Research status
# ------------------------------------------------

$Warnings.Add("RESEARCH DATABASE IS NOT YET POPULATED. THIS IS EXPECTED.")

# ------------------------------------------------
# Result
# ------------------------------------------------

Write-Host ""

if ($Warnings.Count -gt 0) {

    Write-Host "WARNINGS:"
    
    foreach ($W in $Warnings) {
        Write-Host "  - $W"
    }

    Write-Host ""
}

if ($Errors.Count -gt 0) {

    Write-Host "ERRORS:"

    foreach ($E in $Errors) {
        Write-Host "  - $E"
    }

    Write-Host ""
    Write-Host "RESULT: DOMESTIC / TRAINED ARCHITECTURE INVALID"
    exit 1
}

Write-Host "RESULT: DOMESTIC / TRAINED ARCHITECTURE VALID"
Write-Host "VERSION: 1.0"
Write-Host "STATE: FROZEN"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOT"
Write-Host "TRACEABILITY: SOURCE -> FINAL SHOT"
Write-Host ""

