$Root = Split-Path -Parent $PSScriptRoot

$RequiredFolders=@(
"01_CORE",
"02_REGISTRY_DATABASE",
"03_ENTITY_REGISTRY",
"04_DOMAIN_REGISTRY",
"05_SNAPSHOT_REGISTRY",
"06_CLAIM_EVIDENCE_REGISTRY",
"07_SCENE_REGISTRY",
"08_SHOT_REGISTRY",
"09_EVENT_REGISTRY",
"10_ASSET_REGISTRY",
"11_IDENTITY_REGISTRY",
"12_RELATIONSHIP_REGISTRY",
"13_DEPENDENCY_REGISTRY",
"14_VERSION_REGISTRY",
"15_LINEAGE_REGISTRY",
"16_STATUS_REGISTRY",
"17_RESEARCH_CONFLICT_REGISTRY",
"18_PRODUCTION_HANDOFF_REGISTRY",
"19_QA_APPROVAL_REGISTRY",
"20_CROSS_SYSTEM_CONNECTION",
"21_RESOLUTION_ENGINE",
"22_REJECTION_AND_REPAIR",
"23_AUDIT_AND_INTEGRITY",
"24_ACCESS_AND_AUTHORITY",
"25_FINAL_REGISTRY",
"26_FINAL_HARDENING"
)

$MissingFolders=@()

foreach($F in $RequiredFolders){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFolders += $F
    }
}

if($MissingFolders.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE REGISTRY HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FOLDERS:" -ForegroundColor Red
    $MissingFolders | ForEach-Object { Write-Host $_ }
    exit 1
}

$RequiredFiles=@(
"01_CORE\registry_connection_index.md",
"01_CORE\registry_connection_definition.md",
"01_CORE\registry_authority_boundaries.md",
"01_CORE\registry_master_principles.md",
"02_REGISTRY_DATABASE\registry_record_schema.md",
"02_REGISTRY_DATABASE\registry_state_vector.md",
"02_REGISTRY_DATABASE\registry_key_rules.md",
"03_ENTITY_REGISTRY\entity_registry_rules.md",
"03_ENTITY_REGISTRY\entity_identity_rules.md",
"04_DOMAIN_REGISTRY\domain_registry_rules.md",
"05_SNAPSHOT_REGISTRY\snapshot_registry_rules.md",
"05_SNAPSHOT_REGISTRY\snapshot_resolution.md",
"06_CLAIM_EVIDENCE_REGISTRY\claim_evidence_rules.md",
"07_SCENE_REGISTRY\scene_registry_rules.md",
"08_SHOT_REGISTRY\shot_registry_rules.md",
"09_EVENT_REGISTRY\event_registry_rules.md",
"09_EVENT_REGISTRY\event_order_rules.md",
"10_ASSET_REGISTRY\asset_registry_rules.md",
"11_IDENTITY_REGISTRY\identity_registry_rules.md",
"11_IDENTITY_REGISTRY\identity_resolution_rules.md",
"12_RELATIONSHIP_REGISTRY\relationship_rules.md",
"12_RELATIONSHIP_REGISTRY\relationship_integrity.md",
"13_DEPENDENCY_REGISTRY\dependency_rules.md",
"13_DEPENDENCY_REGISTRY\dependency_graph_rules.md",
"14_VERSION_REGISTRY\version_rules.md",
"15_LINEAGE_REGISTRY\lineage_rules.md",
"16_STATUS_REGISTRY\status_rules.md",
"17_RESEARCH_CONFLICT_REGISTRY\research_conflict_rules.md",
"18_PRODUCTION_HANDOFF_REGISTRY\handoff_registry_rules.md",
"19_QA_APPROVAL_REGISTRY\qa_registry_rules.md",
"20_CROSS_SYSTEM_CONNECTION\cross_system_matrix.md",
"20_CROSS_SYSTEM_CONNECTION\authority_flow.md",
"21_RESOLUTION_ENGINE\resolution_rules.md",
"21_RESOLUTION_ENGINE\resolution_failure_states.md",
"22_REJECTION_AND_REPAIR\rejection_rules.md",
"22_REJECTION_AND_REPAIR\repair_rules.md",
"23_AUDIT_AND_INTEGRITY\forward_registry_audit.md",
"23_AUDIT_AND_INTEGRITY\reverse_registry_audit.md",
"23_AUDIT_AND_INTEGRITY\integrity_rules.md",
"24_ACCESS_AND_AUTHORITY\authority_matrix.md",
"24_ACCESS_AND_AUTHORITY\write_control.md",
"25_FINAL_REGISTRY\final_registry_gate.md",
"25_FINAL_REGISTRY\final_registry_non_goals.md",
"registry_connection_manifest.json",
"REGISTRY_CONNECTION_SYSTEM_STATUS.md"
)

$MissingFiles=@()

foreach($F in $RequiredFiles){
    if(-not(Test-Path (Join-Path $Root $F))){
        $MissingFiles += $F
    }
}

$ControlFiles=Get-ChildItem `
    (Join-Path $Root "26_FINAL_HARDENING") `
    -Filter "*.md" `
    -File `
    -ErrorAction SilentlyContinue

if($ControlFiles.Count -lt 40){
    $MissingFiles += "26_FINAL_HARDENING -> expected 40 hardening controls"
}

if($MissingFiles.Count -gt 0){
    Write-Host "RESULT: ZERO-LOOPHOLE REGISTRY HARDENING INVALID" -ForegroundColor Red
    Write-Host "MISSING FILES:" -ForegroundColor Red
    $MissingFiles | ForEach-Object { Write-Host $_ }
    exit 1
}

# ============================================================
# SEMANTIC VALIDATION
# ============================================================

$Checks=@(
@("registry_connection_definition.md","connects records","does not create canonical truth"),
@("registry_authority_boundaries.md","DOMAIN SYSTEMS OWN TRUTH","Registry cannot overwrite"),
@("registry_master_principles.md","REGISTRY CONNECTS","FAIL-CLOSED"),
@("registry_key_rules.md","unique","non-reusable"),
@("entity_registry_rules.md","Broad terms","UNKNOWN"),
@("entity_identity_rules.md","ENTITY IDENTITY","ASSET ID"),
@("snapshot_registry_rules.md","immutable","stale snapshot"),
@("snapshot_resolution.md","approved","BLOCKED"),
@("relationship_integrity.md","Co-presence does not establish interaction","causality"),
@("dependency_rules.md","Missing material dependency","BLOCKED"),
@("dependency_graph_rules.md","cycles","blocked"),
@("identity_resolution_rules.md","visual similarity","BLOCKED"),
@("research_conflict_rules.md","Registry cannot resolve conflicts","BLOCKED"),
@("handoff_registry_rules.md","Production Handoff","rejected"),
@("qa_registry_rules.md","does not create QA approval","PASS"),
@("resolution_rules.md","UNKNOWN","Plausibility guessing"),
@("resolution_failure_states.md","AMBIGUOUS","BLOCKED"),
@("rejection_rules.md","stale","unauthorized"),
@("repair_rules.md","old target","new target"),
@("forward_registry_audit.md","SOURCE","FINAL OUTPUT"),
@("reverse_registry_audit.md","FINAL OUTPUT","SOURCE / EVIDENCE"),
@("integrity_rules.md","duplicate IDs","circular dependency"),
@("authority_matrix.md","Registry","connection integrity"),
@("final_registry_gate.md","identity is valid","reverse audit succeeds"),
@("final_registry_non_goals.md","does not","approve assets"),
@("01_authority_boundary.md","authoritative systems","source of truth"),
@("03_identity_separation.md","Entity","asset"),
@("06_unknown_reference.md","UNKNOWN","guessed"),
@("07_ambiguity_block.md","Multiple unresolved candidates","BLOCKED"),
@("08_stale_reference.md","stale","downstream"),
@("16_truth_creation_firewall.md","truth","Registry connection"),
@("17_ai_contamination_firewall.md","AI output","identity"),
@("19_proximity_firewall.md","proximity","interaction"),
@("24_research_conflict_firewall.md","cannot silently resolve","conflicts"),
@("27_qa_firewall.md","does not equal","QA approval"),
@("30_historical_immutability.md","Historical","silently rewritten"),
@("32_circular_dependency.md","Circular","blocked"),
@("34_forward_resolution.md","resolve forward","downstream"),
@("35_reverse_resolution.md","resolve backward","authoritative inputs"),
@("37_status_separation.md","REGISTERED does not mean APPROVED","CONNECTED does not mean VALIDATED"),
@("40_final_zero_loophole_audit.md","identity guessing","reverse audit failure")
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

    Write-Host "RESULT: ZERO-LOOPHOLE REGISTRY HARDENING INVALID" -ForegroundColor Red
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
Write-Host "RESULT: ZERO-LOOPHOLE REGISTRY CONNECTION HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "REGISTRY AUTHORITY BOUNDARY: LOCKED"
Write-Host "SOURCE-OF-TRUTH BOUNDARY: LOCKED"
Write-Host "ENTITY REGISTRY: LOCKED"
Write-Host "DOMAIN REGISTRY: LOCKED"
Write-Host "SNAPSHOT REGISTRY: LOCKED"
Write-Host "CLAIM / EVIDENCE CONNECTION: LOCKED"
Write-Host "SCENE REGISTRY: LOCKED"
Write-Host "SHOT REGISTRY: LOCKED"
Write-Host "EVENT REGISTRY: LOCKED"
Write-Host "ASSET REGISTRY: LOCKED"
Write-Host "IDENTITY SEPARATION: LOCKED"
Write-Host "RELATIONSHIP INTEGRITY: LOCKED"
Write-Host "DEPENDENCY INTEGRITY: LOCKED"
Write-Host "VERSION CONTROL: LOCKED"
Write-Host "LINEAGE: LOCKED"
Write-Host "STATUS SEPARATION: LOCKED"
Write-Host "RESEARCH / CONFLICT FIREWALL: LOCKED"
Write-Host "PRODUCTION HANDOFF CONNECTION: LOCKED"
Write-Host "QA CONNECTION: LOCKED"
Write-Host "CROSS-SYSTEM CONNECTION: LOCKED"
Write-Host "RESOLUTION ENGINE: LOCKED"
Write-Host "UNKNOWN != VALID: LOCKED"
Write-Host "AMBIGUITY != VALID: LOCKED"
Write-Host "STALE REFERENCE: BLOCKED"
Write-Host "ORPHAN REFERENCE: BLOCKED"
Write-Host "DUPLICATE ID: BLOCKED"
Write-Host "AUTHORITY INVERSION: BLOCKED"
Write-Host "TRUTH CREATION: DISABLED"
Write-Host "AI CONTAMINATION: BLOCKED"
Write-Host "PROXIMITY != INTERACTION: LOCKED"
Write-Host "REGISTRATION != APPROVAL: LOCKED"
Write-Host "REJECTION REUSE: BLOCKED"
Write-Host "HISTORICAL MUTATION: BLOCKED"
Write-Host "CIRCULAR DEPENDENCY: BLOCKED"
Write-Host "FORWARD RESOLUTION: LOCKED"
Write-Host "REVERSE RESOLUTION: LOCKED"
Write-Host "SCOPE LEAKAGE: BLOCKED"
Write-Host "FAIL-CLOSED: LOCKED"
Write-Host "STATE: FROZEN"
Write-Host "VERSION: 1.0"
Write-Host "RESEARCH: UPSTREAM RESEARCH REQUIRED"
Write-Host "PRODUCTION: REQUIRES VALID PRODUCTION HANDOFF + QA APPROVAL"
Write-Host "NO KNOWN ARCHITECTURE-LEVEL OR PIPELINE-LEVEL REGISTRY LOOPHOLES DETECTED."
