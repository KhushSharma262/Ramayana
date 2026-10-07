# ============================================================
# 09_CONTINUITY ZERO-LOOPHOLE VALIDATOR v1.1
# ============================================================

$ErrorActionPreference = "Stop"

# IMPORTANT:
# Validator lives inside 16_FINAL_HARDENING.
# Architecture root is its parent directory.

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)

$Errors = @()

function Require-File {
    param([string]$RelativePath)

    $Path = Join-Path $Root $RelativePath

    if (!(Test-Path $Path)) {
        $script:Errors += "FILE MISSING [$RelativePath]"
    }
}

function Require-Text {
    param(
        [string]$RelativePath,
        [string[]]$Patterns,
        [string]$Label
    )

    $Path = Join-Path $Root $RelativePath

    if (!(Test-Path $Path)) {
        $script:Errors += "FILE MISSING [$RelativePath]"
        return
    }

    $Text = Get-Content $Path -Raw
    $Matched = $false

    foreach ($P in $Patterns) {
        if ($Text -match [regex]::Escape($P)) {
            $Matched = $true
            break
        }
    }

    if (!$Matched) {
        $script:Errors += "CONTROL MISSING [$Label] IN $RelativePath"
    }
}

# ------------------------------------------------------------
# Core architecture
# ------------------------------------------------------------

$RequiredFiles = @(
    "01_CORE\continuity_index.md",
    "01_CORE\continuity_definition.md",
    "01_CORE\continuity_ownership_and_boundaries.md",
    "01_CORE\continuity_scope_and_non_goals.md",

    "02_IDENTITY_CONTINUITY\identity_persistence.md",
    "02_IDENTITY_CONTINUITY\entity_identity_continuity_schema.md",

    "03_STATE_SNAPSHOTS\snapshot_definition.md",
    "03_STATE_SNAPSHOTS\composite_snapshot_model.md",
    "03_STATE_SNAPSHOTS\snapshot_immutability_and_integrity.md",

    "04_TIMELINE\timeline_model.md",
    "04_TIMELINE\temporal_ordering_and_simultaneity.md",
    "04_TIMELINE\temporal_precision_and_uncertainty.md",
    "04_TIMELINE\narrative_vs_chronological_order.md",

    "05_SCENE_CONTINUITY\scene_state_inheritance.md",
    "05_SCENE_CONTINUITY\offscreen_existence_firewall.md",
    "05_SCENE_CONTINUITY\scene_transition_control.md",

    "06_EVENT_TRANSITIONS\event_model.md",
    "06_EVENT_TRANSITIONS\state_transition_firewall.md",
    "06_EVENT_TRANSITIONS\event_causality_and_dependencies.md",
    "06_EVENT_TRANSITIONS\event_idempotency_and_duplicate_control.md",
    "06_EVENT_TRANSITIONS\retroactive_event_control.md",

    "07_CROSS_SYSTEM_STATE\domain_authority_matrix.md",
    "07_CROSS_SYSTEM_STATE\cross_system_reconciliation.md",
    "07_CROSS_SYSTEM_STATE\partial_state_update_control.md",
    "07_CROSS_SYSTEM_STATE\dependency_invalidation.md",

    "08_RELATIONSHIP_AND_INTERACTION_CONTINUITY\relationship_continuity.md",
    "08_RELATIONSHIP_AND_INTERACTION_CONTINUITY\interaction_continuity.md",
    "08_RELATIONSHIP_AND_INTERACTION_CONTINUITY\equipment_and_training_continuity.md",

    "09_VISUAL_AND_ASSET_CONTINUITY\visual_continuity.md",
    "09_VISUAL_AND_ASSET_CONTINUITY\asset_continuity_firewall.md",
    "09_VISUAL_AND_ASSET_CONTINUITY\shot_continuity_audit.md",

    "10_BACKGROUND_WORLD\continuous_world_state.md",
    "10_BACKGROUND_WORLD\population_continuity.md",
    "10_BACKGROUND_WORLD\individualization_threshold.md",

    "11_ALTERNATE_TEMPORALITY\flashback_and_memory_policy.md",
    "11_ALTERNATE_TEMPORALITY\dream_vision_and_symbolic_policy.md",
    "11_ALTERNATE_TEMPORALITY\supernatural_temporal_policy.md",
    "11_ALTERNATE_TEMPORALITY\branch_and_timeline_isolation.md",

    "12_RETCON_AND_ROLLBACK\retcon_firewall.md",
    "12_RETCON_AND_ROLLBACK\rollback_policy.md",
    "12_RETCON_AND_ROLLBACK\version_history.md",

    "13_DEATH_REPLACEMENT_AND_REAPPEARANCE\death_policy.md",
    "13_DEATH_REPLACEMENT_AND_REAPPEARANCE\replacement_policy.md",
    "13_DEATH_REPLACEMENT_AND_REAPPEARANCE\reappearance_policy.md",

    "14_RESEARCH_CONTROL\research_and_evidence.md",
    "14_RESEARCH_CONTROL\claim_level_provenance.md",
    "14_RESEARCH_CONTROL\conflicts_and_uncertainty.md",
    "14_RESEARCH_CONTROL\snapshot_validation.md",
    "14_RESEARCH_CONTROL\continuity_audit.md",

    "15_PRODUCTION_HANDOFF\domain_handoffs.md",
    "15_PRODUCTION_HANDOFF\ai_production_handoff.md"
)

foreach ($F in $RequiredFiles) {
    Require-File $F
}

# ------------------------------------------------------------
# Hardened controls
# ------------------------------------------------------------

$HardeningFiles = @(
    "01_continuity_state_vector.md",
    "02_snapshot_immutability_firewall.md",
    "03_identity_persistence_firewall.md",
    "04_timeline_ordering_firewall.md",
    "05_scene_inheritance_firewall.md",
    "06_event_causality_firewall.md",
    "07_cross_system_reconciliation_firewall.md",
    "08_contradiction_detection_firewall.md",
    "09_retcon_firewall.md",
    "10_branch_timeline_isolation_firewall.md",
    "11_offscreen_existence_firewall.md",
    "12_asset_continuity_firewall.md",
    "13_population_individualization_firewall.md",
    "14_canonical_time_authority.md",
    "15_dependency_invalidation_firewall.md",
    "16_production_traceability_firewall.md",
    "17_concurrent_event_firewall.md",
    "18_partial_state_reconciliation_firewall.md",
    "19_retroactive_dependency_firewall.md",
    "20_final_zero_loophole_audit.md",
    "21_snapshot_atomicity_firewall.md",
    "22_stale_domain_reference_firewall.md",
    "23_causal_cycle_firewall.md",
    "24_temporal_boundary_firewall.md",
    "25_state_at_time_firewall.md",
    "26_branch_contamination_firewall.md",
    "27_three_way_branch_merge.md",
    "28_event_replay_firewall.md",
    "29_orphan_record_firewall.md",
    "30_approval_invalidation_firewall.md",
    "31_temporal_contradiction_firewall.md",
    "32_closed_state_firewall.md",
    "33_inter_scene_change_firewall.md",
    "34_noop_transition_control.md",
    "35_snapshot_fingerprint_integrity.md",
    "36_reverse_audit_firewall.md",
    "37_continuity_completeness_firewall.md",
    "38_state_diff_firewall.md",
    "39_history_integrity_firewall.md",
    "40_final_zero_loophole_audit_v11.md"
)

foreach ($F in $HardeningFiles) {
    Require-File ("16_FINAL_HARDENING\" + $F)
}

# ------------------------------------------------------------
# Semantic controls
# ------------------------------------------------------------

$SemanticChecks = @(
    @{
        File="01_CORE\continuity_ownership_and_boundaries.md"
        Patterns=@("Continuity does not own","Continuity references these authorities")
        Label="DOMAIN AUTHORITY"
    },
    @{
        File="03_STATE_SNAPSHOTS\snapshot_immutability_and_integrity.md"
        Patterns=@("Approved snapshots are immutable","Correction = new snapshot/version")
        Label="SNAPSHOT IMMUTABILITY"
    },
    @{
        File="04_TIMELINE\temporal_ordering_and_simultaneity.md"
        Patterns=@("BEFORE","AFTER","SIMULTANEOUS","UNKNOWN_ORDER")
        Label="TEMPORAL ORDERING"
    },
    @{
        File="05_SCENE_CONTINUITY\offscreen_existence_firewall.md"
        Patterns=@("OFF-SCREEN != NONEXISTENT")
        Label="OFF-SCREEN EXISTENCE"
    },
    @{
        File="06_EVENT_TRANSITIONS\state_transition_firewall.md"
        Patterns=@("PROMPT","ASSET","AI OUTPUT","BLOCKED")
        Label="STATE TRANSITION FIREWALL"
    },
    @{
        File="07_CROSS_SYSTEM_STATE\cross_system_reconciliation.md"
        Patterns=@("Conflicts are not resolved by majority vote","Unresolved conflict = BLOCKED")
        Label="CROSS-SYSTEM RECONCILIATION"
    },
    @{
        File="11_ALTERNATE_TEMPORALITY\branch_and_timeline_isolation.md"
        Patterns=@("States do not leak between branches","Conflict = merge blocked")
        Label="BRANCH ISOLATION"
    },
    @{
        File="12_RETCON_AND_ROLLBACK\retcon_firewall.md"
        Patterns=@("No silent historical rewrite","Old versions remain auditable")
        Label="RETCON CONTROL"
    },
    @{
        File="13_DEATH_REPLACEMENT_AND_REAPPEARANCE\replacement_policy.md"
        Patterns=@("Replacement is a new identity","Visual resemblance never establishes identity")
        Label="REPLACEMENT CONTROL"
    },
    @{
        File="09_VISUAL_AND_ASSET_CONTINUITY\asset_continuity_firewall.md"
        Patterns=@("ASSET = REJECTED","approved continuity snapshot")
        Label="ASSET CONTINUITY"
    },
    @{
        File="14_RESEARCH_CONTROL\claim_level_provenance.md"
        Patterns=@("claim_id","source_id","decision","approval")
        Label="CLAIM PROVENANCE"
    },
    @{
        File="16_FINAL_HARDENING\16_production_traceability_firewall.md"
        Patterns=@("SOURCE","CONTINUITY_SNAPSHOT","SCENE","PROMPT","ASSET","SHOT")
        Label="PRODUCTION TRACEABILITY"
    },
    @{
        File="16_FINAL_HARDENING\21_snapshot_atomicity_firewall.md"
        Patterns=@("atomic","MIXED-TIME","MIXED-BRANCH")
        Label="SNAPSHOT ATOMICITY"
    },
    @{
        File="16_FINAL_HARDENING\23_causal_cycle_firewall.md"
        Patterns=@("directed acyclic causal graph","Cycle detected = BLOCKED")
        Label="CAUSAL CYCLE CONTROL"
    },
    @{
        File="16_FINAL_HARDENING\24_temporal_boundary_firewall.md"
        Patterns=@("inter-scene","Unexplained inter-scene change = BLOCKED")
        Label="TEMPORAL BOUNDARY"
    },
    @{
        File="16_FINAL_HARDENING\25_state_at_time_firewall.md"
        Patterns=@("EVENT_TIME","STATE_VALIDITY_INTERVAL","Temporal mismatch = BLOCKED")
        Label="STATE AT TIME"
    },
    @{
        File="16_FINAL_HARDENING\27_three_way_branch_merge.md"
        Patterns=@("BASE STATE","BRANCH A","BRANCH B","CONFLICT")
        Label="THREE-WAY MERGE"
    },
    @{
        File="16_FINAL_HARDENING\28_event_replay_firewall.md"
        Patterns=@("EVENT_ID + SOURCE_SNAPSHOT_ID","REPLAY = BLOCKED")
        Label="EVENT REPLAY"
    },
    @{
        File="16_FINAL_HARDENING\29_orphan_record_firewall.md"
        Patterns=@("EVENT → PREVIOUS SNAPSHOT","SHOT → ASSET + SCENE")
        Label="ORPHAN RECORDS"
    },
    @{
        File="16_FINAL_HARDENING\30_approval_invalidation_firewall.md"
        Patterns=@("REVALIDATION_REQUIRED","Approval does not override invalidation")
        Label="APPROVAL INVALIDATION"
    },
    @{
        File="16_FINAL_HARDENING\31_temporal_contradiction_firewall.md"
        Patterns=@("impossible temporal sequences","CONTRADICTION = BLOCKED")
        Label="TEMPORAL CONTRADICTION"
    },
    @{
        File="16_FINAL_HARDENING\32_closed_state_firewall.md"
        Patterns=@("closed states cannot silently reopen","BLOCKED")
        Label="CLOSED STATE"
    },
    @{
        File="16_FINAL_HARDENING\35_snapshot_fingerprint_integrity.md"
        Patterns=@("integrity fingerprint","FINGERPRINT MISMATCH = BLOCKED")
        Label="SNAPSHOT FINGERPRINT"
    },
    @{
        File="16_FINAL_HARDENING\36_reverse_audit_firewall.md"
        Patterns=@("SHOT","SOURCE","Reverse audit")
        Label="REVERSE AUDIT"
    },
    @{
        File="16_FINAL_HARDENING\37_continuity_completeness_firewall.md"
        Patterns=@("IDENTITY","TIMELINE","LIFE STATE","Required unresolved state = BLOCKED")
        Label="CONTINUITY COMPLETENESS"
    },
    @{
        File="16_FINAL_HARDENING\38_state_diff_firewall.md"
        Patterns=@("PREVIOUS SNAPSHOT","NEW SNAPSHOT","Unclassified change = BLOCKED")
        Label="STATE DIFF"
    },
    @{
        File="16_FINAL_HARDENING\39_history_integrity_firewall.md"
        Patterns=@("append-only","No destructive rewrite")
        Label="HISTORY INTEGRITY"
    },
    @{
        File="16_FINAL_HARDENING\40_final_zero_loophole_audit_v11.md"
        Patterns=@("ARCHITECTURE = INVALID","PRODUCTION = BLOCKED")
        Label="FINAL ZERO-LOOPHOLE AUDIT"
    }
)

foreach ($Check in $SemanticChecks) {
    Require-Text $Check.File $Check.Patterns $Check.Label
}

# ------------------------------------------------------------
# Manifest
# ------------------------------------------------------------

$ManifestPath = Join-Path $Root "16_FINAL_HARDENING\continuity_architecture_manifest.json"

if (!(Test-Path $ManifestPath)) {
    $Errors += "MANIFEST MISSING"
}
else {
    try {
        $Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json

        if ($Manifest.version -ne "1.1") {
            $Errors += "MANIFEST VERSION INVALID"
        }

        $RequiredControls = @(
            "domain_authority",
            "immutable_snapshots",
            "composite_snapshots",
            "timeline_isolation",
            "scene_inheritance",
            "event_causality",
            "event_idempotency",
            "simultaneity_control",
            "cross_system_reconciliation",
            "contradiction_detection",
            "offscreen_persistence",
            "population_individualization_control",
            "retcon_control",
            "rollback_control",
            "branch_isolation",
            "death_replacement_control",
            "asset_continuity",
            "dependency_invalidation",
            "retroactive_event_control",
            "claim_provenance",
            "ai_truth_firewall",
            "final_shot_traceability",
            "zero_loophole_hardening",
            "snapshot_atomicity",
            "stale_reference_control",
            "causal_cycle_control",
            "temporal_boundary_control",
            "state_at_time_validation",
            "branch_contamination_control",
            "three_way_branch_merge",
            "event_replay_control",
            "orphan_record_control",
            "approval_invalidation_control",
            "temporal_contradiction_control",
            "closed_state_control",
            "inter_scene_change_control",
            "noop_transition_control",
            "snapshot_fingerprint_integrity",
            "reverse_audit",
            "continuity_completeness",
            "state_diff_control",
            "history_integrity"
        )

        foreach ($C in $RequiredControls) {
            if ($Manifest.$C -ne $true) {
                $Errors += "MANIFEST CONTROL DISABLED [$C]"
            }
        }

        if ($Manifest.production_state -ne "BLOCKED_UNTIL_APPROVED_SNAPSHOTS") {
            $Errors += "PRODUCTION BLOCK STATE INVALID"
        }

        if ($Manifest.research_state -ne "NOT_YET_POPULATED") {
            $Errors += "RESEARCH STATE INVALID"
        }
    }
    catch {
        $Errors += "MANIFEST INVALID JSON"
    }
}

# ------------------------------------------------------------
# Forbidden duplicate databases
# ------------------------------------------------------------

$ForbiddenNames = @(
    "biology_database.md",
    "behavior_database.md",
    "movement_database.md",
    "ecology_database.md",
    "domestic_trained_database.md",
    "interaction_database.md",
    "visual_identity_database.md"
)

foreach ($Name in $ForbiddenNames) {
    $Matches = Get-ChildItem -Path $Root -Recurse -File -Filter $Name -ErrorAction SilentlyContinue

    foreach ($M in $Matches) {
        $Errors += "FORBIDDEN DUPLICATE TRUTH DATABASE [$($M.FullName)]"
    }
}

# ------------------------------------------------------------
# Empty directories
# ------------------------------------------------------------

$EmptyDirs = Get-ChildItem -Path $Root -Recurse -Directory |
    Where-Object {
        @(Get-ChildItem -Path $_.FullName -Force).Count -eq 0
    }

foreach ($D in $EmptyDirs) {
    $Errors += "EMPTY DIRECTORY [$($D.FullName)]"
}

# ------------------------------------------------------------
# Validator self-check
# ------------------------------------------------------------

$ExpectedRootName = "09_CONTINUITY"

if ((Split-Path $Root -Leaf) -ne $ExpectedRootName) {
    $Errors += "VALIDATOR ROOT RESOLUTION INVALID [$Root]"
}

# ------------------------------------------------------------
# FINAL RESULT
# ------------------------------------------------------------

Write-Host ""
Write-Host "===================================================="
Write-Host "09_CONTINUITY ZERO-LOOPHOLE VALIDATOR v1.1"
Write-Host "===================================================="

if ($Errors.Count -gt 0) {

    Write-Host ""
    Write-Host "RESULT: CONTINUITY ARCHITECTURE INVALID"
    Write-Host ""

    foreach ($E in $Errors) {
        Write-Host "ERROR: $E"
    }

    Write-Host ""
    Write-Host "PRODUCTION: BLOCKED"
    Write-Host "ARCHITECTURE: NOT FROZEN"
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE CONTINUITY HARDENING VALID"
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.1"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> CLAIM -> DECISION -> DOMAIN_STATE -> DOMAIN_SNAPSHOT -> CONTINUITY_SNAPSHOT -> TIMELINE -> EVENT -> SCENE -> PROMPT -> ASSET -> SHOT"
Write-Host "AUDIT: FORWARD + REVERSE"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL LOOPHOLES DETECTED."
Write-Host ""
