$ErrorActionPreference = "Stop"

$ROOT = Split-Path -Parent $PSScriptRoot
$Errors = @()

function Require-File($Relative) {
    $p = Join-Path $ROOT $Relative
    if (!(Test-Path -LiteralPath $p -PathType Leaf)) {
        $script:Errors += "MISSING FILE: $Relative"
    }
}

function Require-Text($Relative, $Pattern, $Label) {
    $p = Join-Path $ROOT $Relative

    if (!(Test-Path -LiteralPath $p -PathType Leaf)) {
        $script:Errors += "MISSING CONTROL [$Label]: $Relative"
        return
    }

    $text = Get-Content -LiteralPath $p -Raw

    if ([string]::IsNullOrWhiteSpace($text)) {
        $script:Errors += "EMPTY FILE [$Label]: $Relative"
        return
    }

    if ($text -notmatch $Pattern) {
        $script:Errors += "CONTROL MISSING [$Label]: $Relative"
    }
}

Write-Host ""
Write-Host "================================================"
Write-Host " 07_INTERACTION ZERO-LOOPHOLE VALIDATOR v1.1"
Write-Host "================================================"

$RequiredHardening = @(
"17_FINAL_HARDENING\16_relationship_authority_matrix.md",
"17_FINAL_HARDENING\17_environment_object_boundary.md",
"17_FINAL_HARDENING\18_interaction_causality_firewall.md",
"17_FINAL_HARDENING\19_multi_party_participation_firewall.md",
"17_FINAL_HARDENING\20_interaction_ordering_and_simultaneity.md",
"17_FINAL_HARDENING\21_interaction_immutability_and_rollback.md",
"17_FINAL_HARDENING\22_duplicate_interaction_firewall.md",
"17_FINAL_HARDENING\23_consequence_ownership_firewall.md",
"17_FINAL_HARDENING\24_claim_level_evidence_firewall.md",
"17_FINAL_HARDENING\25_temporal_causality_firewall.md",
"17_FINAL_HARDENING\26_population_interaction_sampling_firewall.md",
"17_FINAL_HARDENING\27_final_asset_interaction_verification.md",
"17_FINAL_HARDENING\28_interaction_zero_loophole_hardening_index.md"
)

foreach ($F in $RequiredHardening) {
    Require-File $F
}

Require-Text "17_FINAL_HARDENING\16_relationship_authority_matrix.md" `
    "Interaction|Behavior|Domestic/Trained|Ecology" `
    "RELATIONSHIP AUTHORITY"

Require-Text "17_FINAL_HARDENING\17_environment_object_boundary.md" `
    "Interaction|Movement|Ecology|Domestic/Trained" `
    "ENVIRONMENT OBJECT BOUNDARY"

Require-Text "17_FINAL_HARDENING\18_interaction_causality_firewall.md" `
    "PRECONDITION|INTERACTION|CONSEQUENCE|causal" `
    "CAUSALITY"

Require-Text "17_FINAL_HARDENING\19_multi_party_participation_firewall.md" `
    "OBSERVERS|PARTICIPANTS|NON_PARTICIPANTS" `
    "MULTI-PARTY PARTICIPATION"

Require-Text "17_FINAL_HARDENING\20_interaction_ordering_and_simultaneity.md" `
    "SEQUENTIAL|SIMULTANEOUS|OVERLAPPING|UNKNOWN" `
    "EVENT ORDERING"

Require-Text "17_FINAL_HARDENING\21_interaction_immutability_and_rollback.md" `
    "immutable|INVALIDATION|ROLLBACK|NEW VERSION" `
    "ROLLBACK"

Require-Text "17_FINAL_HARDENING\22_duplicate_interaction_firewall.md" `
    "DUPLICATE|POSSIBLE_DUPLICATE|event_signature" `
    "DUPLICATE CONTROL"

Require-Text "17_FINAL_HARDENING\23_consequence_ownership_firewall.md" `
    "owning_system|Biology|Behavior|Ecology|Domestic/Trained" `
    "CONSEQUENCE OWNERSHIP"

Require-Text "17_FINAL_HARDENING\24_claim_level_evidence_firewall.md" `
    "claim_id|source_id|evidence_scope|confidence" `
    "CLAIM LEVEL EVIDENCE"

Require-Text "17_FINAL_HARDENING\25_temporal_causality_firewall.md" `
    "temporal|causal|BEFORE|AFTER|CONCURRENT" `
    "TEMPORAL CAUSALITY"

Require-Text "17_FINAL_HARDENING\26_population_interaction_sampling_firewall.md" `
    "population density|species|season|habitat" `
    "POPULATION SAMPLING"

Require-Text "17_FINAL_HARDENING\27_final_asset_interaction_verification.md" `
    "MATCH|CONFLICT|UNVERIFIABLE|REJECTED|AI ASSET" `
    "FINAL ASSET VERIFICATION"

Require-Text "17_FINAL_HARDENING\28_interaction_zero_loophole_hardening_index.md" `
    "relationship authority|causality|duplicate|claim-level evidence" `
    "HARDENING INDEX"

# Manifest validity
$Manifest = Join-Path $ROOT "17_FINAL_HARDENING\interaction_architecture_manifest.json"

try {
    $M = Get-Content -LiteralPath $Manifest -Raw | ConvertFrom-Json

    if ($M.version -ne "1.1") {
        $Errors += "MANIFEST VERSION IS NOT 1.1"
    }

    if ($M.single_source_of_truth -ne $true) {
        $Errors += "SINGLE SOURCE OF TRUTH FLAG INVALID"
    }

    if ($M.final_asset_verification_required -ne $true) {
        $Errors += "FINAL ASSET VERIFICATION FLAG INVALID"
    }
}
catch {
    $Errors += "INVALID INTERACTION MANIFEST JSON"
}

# Check empty directories
$Empty = Get-ChildItem -LiteralPath $ROOT -Directory -Recurse |
    Where-Object {
        @(Get-ChildItem -LiteralPath $_.FullName -Force).Count -eq 0
    }

foreach ($D in $Empty) {
    $rel = $D.FullName.Substring($ROOT.Length).TrimStart('\')
    $Errors += "EMPTY DIRECTORY: $rel"
}

# Check forbidden duplicate databases
$Forbidden = @(
"CEREMONIAL_INTERACTIONS",
"HUMAN_INTERACTIONS",
"ANIMAL_INTERACTIONS",
"PREDATOR_PREY_DATABASE",
"COOPERATION_DATABASE",
"CONFLICT_DATABASE",
"RELATIONSHIP_DATABASE"
)

foreach ($F in $Forbidden) {
    if (Test-Path -LiteralPath (Join-Path $ROOT $F)) {
        $Errors += "DUPLICATE CATEGORY DATABASE/FOLDER: $F"
    }
}

# Production state
$Status = Join-Path $ROOT "INTERACTION_SYSTEM_STATUS.md"

if (!(Test-Path -LiteralPath $Status)) {
    $Errors += "MISSING SYSTEM STATUS"
}
else {
    $S = Get-Content -LiteralPath $Status -Raw

    if ($S -notmatch "PRODUCTION: BLOCKED") {
        $Errors += "PRODUCTION NOT BLOCKED"
    }

    if ($S -notmatch "RESEARCH: NOT YET POPULATED") {
        $Errors += "RESEARCH STATUS INVALID"
    }
}

Write-Host ""
Write-Host "-----------------------------------------------"
Write-Host "FINAL VALIDATION RESULT"
Write-Host "-----------------------------------------------"

if ($Errors.Count -gt 0) {

    Write-Host ""
    Write-Host "ERRORS:"

    foreach ($E in $Errors) {
        Write-Host "ERROR: $E"
    }

    Write-Host ""
    Write-Host "RESULT: INTERACTION HARDENING INVALID"
    Write-Host "STATE: NOT FROZEN"
    Write-Host "PRODUCTION: BLOCKED"
    exit 1
}

Write-Host ""
Write-Host "RESULT: ZERO-LOOPHOLE INTERACTION HARDENING VALID"
Write-Host "ARCHITECTURE: COMPLETE"
Write-Host "HARDENING: COMPLETE"
Write-Host "STATE: FROZEN"
Write-Host "RESEARCH: NOT YET POPULATED"
Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
Write-Host "TRACEABILITY: SOURCE -> CLAIM -> DECISION -> INTERACTION_ID -> SNAPSHOT_ID -> SCENE_ID -> PROMPT_ID -> ASSET_ID -> SHOT_ID"
Write-Host ""
Write-Host "NO KNOWN ARCHITECTURE-LEVEL LOOPHOLES DETECTED."
Write-Host ""
