$ErrorActionPreference = "Stop"

$ROOT = Split-Path -Parent $PSScriptRoot
$HARD = $PSScriptRoot

$Errors = @()
$Warnings = @()

function Require-File($RelativePath) {
    $p = Join-Path $ROOT $RelativePath
    if (!(Test-Path -LiteralPath $p -PathType Leaf)) {
        $script:Errors += "MISSING FILE: $RelativePath"
    }
}

function Require-Hardening($FileName) {
    $p = Join-Path $HARD $FileName
    if (!(Test-Path -LiteralPath $p -PathType Leaf)) {
        $script:Errors += "MISSING HARDENING CONTROL: $FileName"
    }
}

function Require-Text($RelativePath, $Pattern, $Label) {
    $p = Join-Path $ROOT $RelativePath

    if (!(Test-Path -LiteralPath $p -PathType Leaf)) {
        $script:Errors += "MISSING FILE FOR CONTROL [$Label]: $RelativePath"
        return
    }

    $text = Get-Content -LiteralPath $p -Raw

    if ([string]::IsNullOrWhiteSpace($text)) {
        $script:Errors += "EMPTY FILE [$Label]: $RelativePath"
        return
    }

    if ($text -notmatch $Pattern) {
        $script:Errors += "CONTROL MISSING [$Label] IN $RelativePath"
    }
}

Write-Host ""
Write-Host "==============================================="
Write-Host " DOMESTIC / TRAINED ZERO-LOOPHOLE VALIDATOR"
Write-Host "==============================================="
Write-Host ""

# ------------------------------------------------
# 1. REQUIRED HARDENING CONTROLS
# ------------------------------------------------

$RequiredHardening = @(
    "16_canonical_animal_state_vector.md",
    "17_state_transition_firewall.md",
    "18_role_category_firewall.md",
    "19_identity_replacement_firewall.md",
    "20_cross_system_authority_matrix.md",
    "21_scene_state_firewall.md",
    "22_breeding_lineage_control.md",
    "23_welfare_load_and_work_gate.md",
    "24_human_role_firewall.md",
    "25_evidence_inference_decision_firewall.md",
    "26_single_source_of_truth.md",
    "27_final_zero_loophole_audit.md",
    "28_production_traceability_firewall.md",
    "29_regeneration_drift_firewall.md"
)

foreach ($F in $RequiredHardening) {
    Require-Hardening $F
}

# ------------------------------------------------
# 2. CORE ARCHITECTURE
# ------------------------------------------------

$RequiredFiles = @(
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

    "15_FINAL_HARDENING\domestic_trained_manifest.json",
    "15_FINAL_HARDENING\domestic_trained_entity_registry.json",
    "15_FINAL_HARDENING\domestic_trained_production_trace.json",
    "15_FINAL_HARDENING\domestic_trained_ownership_registry.json"
)

foreach ($F in $RequiredFiles) {
    Require-File $F
}

# ------------------------------------------------
# 3. CRITICAL CONTENT CONTROLS
# ------------------------------------------------

Require-Text "01_CORE\domestic_trained_ownership_and_boundaries.md" `
    "Biology|Behavior|Movement|Ecology|AI" `
    "CROSS-SYSTEM OWNERSHIP"

Require-Text "02_DOMESTICATION\domestication_status.md" `
    "WILD|TAMED|DOMESTICATED|FERAL" `
    "DOMESTICATION STATES"

Require-Text "03_TRAINING\training_system.md" `
    "UNTRAINED|BASIC_TRAINING|ADVANCED|WORK_READY" `
    "TRAINING STATE MACHINE"

Require-Text "07_EQUIPMENT\equipment_database.md" `
    "HISTORICAL EQUIPMENT" `
    "HISTORICAL EQUIPMENT"

Require-Text "10_HISTORICAL_RECONSTRUCTION\historical_uncertainty.md" `
    "SUPPORTED|PLAUSIBLE|CONTESTED|UNKNOWN|BLOCKED" `
    "HISTORICAL UNCERTAINTY"

Require-Text "12_RESEARCH_CONTROL\research_and_evidence.md" `
    "SOURCE|EVIDENCE|CLAIM" `
    "RESEARCH TRACEABILITY"

Require-Text "12_RESEARCH_CONTROL\approval_and_snapshot_control.md" `
    "APPROVED|SNAPSHOT|BLOCKED" `
    "APPROVAL / SNAPSHOT"

Require-Text "13_PRODUCTION_HANDOFF\ai_production_handoff.md" `
    "SOURCE|SNAPSHOT|PROMPT|ASSET" `
    "AI PRODUCTION TRACE"

# ------------------------------------------------
# 4. HARDENING CONTENT CHECKS
# ------------------------------------------------

Require-Text "15_FINAL_HARDENING\16_canonical_animal_state_vector.md" `
    "animal_id|snapshot" `
    "CANONICAL STATE VECTOR"

Require-Text "15_FINAL_HARDENING\17_state_transition_firewall.md" `
    "CURRENT STATE|EVENT|EVIDENCE|APPROVED TRANSITION|NEW STATE" `
    "STATE TRANSITION FIREWALL"

Require-Text "15_FINAL_HARDENING\18_role_category_firewall.md" `
    "role|category" `
    "ROLE CATEGORY FIREWALL"

Require-Text "15_FINAL_HARDENING\19_identity_replacement_firewall.md" `
    "animal_id|replacement|identity" `
    "IDENTITY / REPLACEMENT"

Require-Text "15_FINAL_HARDENING\20_cross_system_authority_matrix.md" `
    "Biology|Behavior|Movement|Ecology|Domestic" `
    "AUTHORITY MATRIX"

Require-Text "15_FINAL_HARDENING\21_scene_state_firewall.md" `
    "scene|snapshot|animal_id" `
    "SCENE STATE FIREWALL"

Require-Text "15_FINAL_HARDENING\22_breeding_lineage_control.md" `
    "offspring|parentage|lineage" `
    "BREEDING / LINEAGE"

Require-Text "15_FINAL_HARDENING\23_welfare_load_and_work_gate.md" `
    "welfare|load|fatigue|biological|biomechanical" `
    "WELFARE / LOAD GATE"

Require-Text "15_FINAL_HARDENING\24_human_role_firewall.md" `
    "OWNER|TRAINER|RIDER|HERDER|HANDLER" `
    "HUMAN ROLE FIREWALL"

Require-Text "15_FINAL_HARDENING\25_evidence_inference_decision_firewall.md" `
    "SOURCE|EVIDENCE|INFERENCE|DECISION|APPROVAL" `
    "EVIDENCE / INFERENCE FIREWALL"

Require-Text "15_FINAL_HARDENING\26_single_source_of_truth.md" `
    "single source|canonical|competing" `
    "SINGLE SOURCE OF TRUTH"

Require-Text "15_FINAL_HARDENING\27_final_zero_loophole_audit.md" `
    "identity|training|equipment|continuity|evidence" `
    "ZERO LOOPHOLE AUDIT"

Require-Text "15_FINAL_HARDENING\28_production_traceability_firewall.md" `
    "SOURCE|CLAIM|SNAPSHOT|SCENE|PROMPT|ASSET|SHOT" `
    "PRODUCTION TRACEABILITY"

Require-Text "15_FINAL_HARDENING\29_regeneration_drift_firewall.md" `
    "regeneration|drift|identity|asset" `
    "REGENERATION DRIFT"

# ------------------------------------------------
# 5. LEGACY / DUPLICATE STRUCTURE CHECK
# ------------------------------------------------

$ForbiddenFolders = @(
    "CEREMONIAL_ANIMALS",
    "COMPANION_ANIMALS",
    "DOMESTIC_ANIMALS",
    "MOUNTED_ANIMALS",
    "ROYAL_ANIMALS",
    "TRAINING",
    "WORKING_ANIMALS"
)

foreach ($F in $ForbiddenFolders) {
    $p = Join-Path $ROOT $F

    if (Test-Path -LiteralPath $p) {
        $script:Errors += "DUPLICATE / LEGACY CATEGORY FOLDER STILL EXISTS: $F"
    }
}

# ------------------------------------------------
# 6. EMPTY DIRECTORY CHECK
# ------------------------------------------------

$EmptyDirs = Get-ChildItem -LiteralPath $ROOT -Directory -Recurse |
    Where-Object {
        @(Get-ChildItem -LiteralPath $_.FullName -Force).Count -eq 0
    }

foreach ($D in $EmptyDirs) {
    $rel = $D.FullName.Substring($ROOT.Length).TrimStart('\')
    $script:Errors += "EMPTY DIRECTORY: $rel"
}

# ------------------------------------------------
# 7. MANIFEST JSON VALIDITY
# ------------------------------------------------

$JsonFiles = @(
    "15_FINAL_HARDENING\domestic_trained_manifest.json",
    "15_FINAL_HARDENING\domestic_trained_entity_registry.json",
    "15_FINAL_HARDENING\domestic_trained_production_trace.json",
    "15_FINAL_HARDENING\domestic_trained_ownership_registry.json"
)

foreach ($F in $JsonFiles) {
    $p = Join-Path $ROOT $F

    if (Test-Path -LiteralPath $p) {
        try {
            Get-Content -LiteralPath $p -Raw | ConvertFrom-Json | Out-Null
        }
        catch {
            $script:Errors += "INVALID JSON: $F"
        }
    }
}

# ------------------------------------------------
# 8. PRODUCTION MUST REMAIN BLOCKED
# ------------------------------------------------

$Status = Join-Path $ROOT "DOMESTIC_TRAINED_SYSTEM_STATUS.md"

if (Test-Path -LiteralPath $Status) {
    $StatusText = Get-Content -LiteralPath $Status -Raw

    if ($StatusText -notmatch "PRODUCTION.*BLOCKED|BLOCKED.*PRODUCTION") {
        $script:Errors += "PRODUCTION STATUS DOES NOT EXPLICITLY REMAIN BLOCKED"
    }
}
else {
    $script:Errors += "MISSING SYSTEM STATUS FILE"
}

# ------------------------------------------------
# 9. RESEARCH / PRODUCTION STATE INTEGRITY
# ------------------------------------------------
# Do not scan the validator itself for forbidden status
# phrases. The validator contains those phrases as
# validation rules, which would otherwise create false
# positives.

$FilesToCheck = Get-ChildItem -LiteralPath $ROOT -Recurse -File |
    Where-Object {
        $_.FullName -ne $VALIDATOR -and
        $_.Extension -in @(".md", ".json")
    }

$ForbiddenProductionClaims = @(
    "RESEARCH COMPLETE",
    "ALL SPECIES VERIFIED",
    "ALL CLAIMS APPROVED",
    "PRODUCTION READY"
)

foreach ($Marker in $ForbiddenProductionClaims) {

    foreach ($File in $FilesToCheck) {

        $hits = Select-String `
            -LiteralPath $File.FullName `
            -SimpleMatch $Marker `
            -ErrorAction SilentlyContinue

        if ($hits) {
            $relative = $File.FullName.Substring($ROOT.Length).TrimStart('\')

            $script:Errors += `
                "UNAUTHORIZED RESEARCH/PRODUCTION CLAIM [$Marker] IN: $relative"
        }
    }
}

# ------------------------------------------------
# 10. REPORT
# ------------------------------------------------

Write-Host ""
Write-Host "-----------------------------------------------"
Write-Host "VALIDATION RESULT"
Write-Host "-----------------------------------------------"

if ($Warnings.Count -gt 0) {
    Write-Host ""
    Write-Host "WARNINGS:"
    foreach ($W in $Warnings) {
        Write-Host "WARNING: $W"
    }
}

if ($Errors.Count -gt 0) {

    Write-Host ""
    Write-Host "ERRORS:"
    foreach ($E in $Errors) {
        Write-Host "ERROR: $E"
    }

    Write-Host ""
    Write-Host "RESULT: HARDENING INVALID"
    Write-Host "STATE: NOT FROZEN"
    Write-Host "PRODUCTION: BLOCKED"
    Write-Host "ACTION: FIX EVERY ERROR BEFORE FREEZE"
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE HARDENING VALID"
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "STATE: READY FOR FREEZE"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> CLAIM -> DECISION -> SNAPSHOT -> SCENE -> PROMPT -> ASSET -> SHOT"
Write-Host ""
Write-Host "NO KNOWN ARCHITECTURE-LEVEL LOOPHOLES DETECTED."
Write-Host ""

