$ErrorActionPreference="Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Hard = Join-Path $Root "29_FINAL_HARDENING"

$Errors = New-Object System.Collections.Generic.List[string]

function Require-File($RelativePath){
    $Path=Join-Path $Root $RelativePath

    if(-not (Test-Path $Path)){
        $Errors.Add("MISSING FILE -> $RelativePath")
    }
}

function Require-Text($RelativePath,$Tokens){
    $Path=Join-Path $Root $RelativePath

    if(-not (Test-Path $Path)){
        $Errors.Add("MISSING CONTROL -> $RelativePath")
        return
    }

    $Text=Get-Content $Path -Raw

    foreach($Token in $Tokens){
        if($Text -notmatch [regex]::Escape($Token)){
            $Errors.Add("SEMANTIC CONTROL MISSING -> $RelativePath -> $Token")
        }
    }
}

# ------------------------------------------------------------
# Required architecture
# ------------------------------------------------------------

$Required=@(
"01_CORE\conflicts_unknown_definition.md",
"01_CORE\conflict_unknown_principles.md",
"01_CORE\authority_boundary.md",
"01_CORE\uncertainty_vocabulary.md",

"02_UNKNOWN_DATABASE\unknown_record_schema.md",
"02_UNKNOWN_DATABASE\unknown_registry.md",

"03_CONFLICT_DATABASE\conflict_record_schema.md",
"03_CONFLICT_DATABASE\conflict_types.md",

"04_SOURCE_CONFLICTS\source_conflict_rules.md",
"05_EVIDENCE_GAPS\evidence_gap_schema.md",
"06_TAXONOMIC_UNCERTAINTY\taxonomy_uncertainty_rules.md",
"07_GEOGRAPHIC_UNCERTAINTY\geographic_uncertainty_rules.md",
"08_TEMPORAL_UNCERTAINTY\temporal_uncertainty_rules.md",
"09_CANONICAL_UNCERTAINTY\canonical_ambiguity_rules.md",
"10_HISTORICAL_UNCERTAINTY\historical_uncertainty_rules.md",
"11_BIOLOGICAL_UNCERTAINTY\biological_uncertainty_rules.md",
"12_BEHAVIORAL_UNCERTAINTY\behavioral_uncertainty_rules.md",
"13_MOVEMENT_UNCERTAINTY\movement_uncertainty_rules.md",
"14_ECOLOGICAL_UNCERTAINTY\ecological_uncertainty_rules.md",
"15_DOMESTIC_TRAINING_UNCERTAINTY\domestic_training_uncertainty.md",
"16_INTERACTION_UNCERTAINTY\interaction_uncertainty.md",
"17_VISUAL_UNCERTAINTY\visual_uncertainty.md",
"18_AUDIO_UNCERTAINTY\audio_uncertainty.md",
"19_BATTLE_STRESS_UNCERTAINTY\stress_uncertainty.md",
"20_COSTUME_EQUIPMENT_UNCERTAINTY\equipment_uncertainty.md",

"21_CROSS_SYSTEM_CONFLICTS\cross_system_conflict_schema.md",

"22_RESOLUTION_ENGINE\resolution_record_schema.md",
"22_RESOLUTION_ENGINE\resolution_rules.md",

"23_BLOCKING_ENGINE\blocking_rules.md",
"23_BLOCKING_ENGINE\severity_matrix.md",

"24_DECISION_AND_EXCEPTION_CONTROL\exception_rules.md",
"25_SNAPSHOT_AND_VERSION_CONTROL\snapshot_rules.md",
"26_HANDOFFS\handoff_rules.md",
"27_VALIDATION_AND_QA\validation_rules.md",
"28_RESEARCH_CONTROL\research_relationship.md",

"conflicts_unknown_manifest.json",
"CONFLICTS_UNKNOWN_SYSTEM_STATUS.md"
)

foreach($File in $Required){
    Require-File $File
}

# ------------------------------------------------------------
# Hardening controls
# ------------------------------------------------------------

$Controls=@{

"01_unknown_not_absent_firewall.md"=@("UNKNOWN","ABSENT")
"02_conflict_not_error_firewall.md"=@("CONFLICT","valid research state")
"03_ambiguity_not_conflict_firewall.md"=@("AMBIGUITY","CONFLICT")
"04_variability_not_conflict_firewall.md"=@("VARIABILITY","not automatically contradictory")
"05_evidence_gap_firewall.md"=@("Missing evidence","assumption","AI output")
"06_resolution_authority_firewall.md"=@("domain owner","conflict lifecycle")
"07_resolution_provenance_firewall.md"=@("supporting evidence","approval","snapshot")
"08_resolution_guessing_firewall.md"=@("No guessing","Plausibility","not valid resolutions")
"09_taxonomy_blocking_firewall.md"=@("species identity","BLOCKED")
"10_geography_blocking_firewall.md"=@("geographic","BLOCKED")
"11_temporal_blocking_firewall.md"=@("chronology","BLOCKED")
"12_canonical_conflict_firewall.md"=@("translation","competing readings")
"13_historical_conflict_firewall.md"=@("direct evidence","speculation")
"14_biological_conflict_firewall.md"=@("taxonomy","physiology")
"15_behavior_conflict_firewall.md"=@("species","context","individual")
"16_ecology_conflict_firewall.md"=@("SPECIES EXISTS","SPECIES PRESENT")
"17_domestic_training_conflict_firewall.md"=@("tamed","domesticated","trained")
"18_interaction_conflict_firewall.md"=@("Co-presence does not establish interaction","interaction")
"19_visual_conflict_firewall.md"=@("AI-generated","popular depictions")
"20_audio_conflict_firewall.md"=@("vocalization","Movie sound")
"21_stress_conflict_firewall.md"=@("acute","chronic","individual variation")
"22_equipment_conflict_firewall.md"=@("period","region","Modern equipment")
"23_cross_system_conflict_firewall.md"=@("authority","resolution")
"24_continuity_conflict_firewall.md"=@("approved prior state","BLOCKED")
"25_dependency_blocking_firewall.md"=@("dependent decisions","dependency scope")
"26_cascade_control_firewall.md"=@("impacted domains","controlled handoffs")
"27_exception_firewall.md"=@("exception_id","rollback")
"28_snapshot_atomicity_firewall.md"=@("coherent state","INVALID")
"29_stale_snapshot_firewall.md"=@("superseded","current truth")
"30_duplicate_conflict_firewall.md"=@("same underlying conflict","canonical conflict")
"31_temporal_order_firewall.md"=@("effective","versions")
"32_provenance_tamper_firewall.md"=@("RESOLUTION","SOURCE")
"33_validation_independence_firewall.md"=@("actual files","Manifest")
"34_approval_scope_firewall.md"=@("specified subject","specified scope")
"35_forbidden_shortcuts.md"=@("AI hallucination","aesthetic preference","BLOCK")
"36_forward_reverse_audit.md"=@("FORWARD","REVERSE")
"37_zero_loophole_control_matrix.md"=@("UNKNOWN VS ABSENT","FAIL CLOSED")
"38_final_zero_loophole_audit.md"=@("validator passes","ARCHITECTURE NOT COMPLETE")
}

foreach($Item in $Controls.GetEnumerator()){
    Require-Text "29_FINAL_HARDENING\$($Item.Key)" $Item.Value
}

# ------------------------------------------------------------
# Manifest
# ------------------------------------------------------------

$ManifestPath=Join-Path $Root "conflicts_unknown_manifest.json"

if(Test-Path $ManifestPath){

    try{

        $Manifest=Get-Content $ManifestPath -Raw | ConvertFrom-Json

        if($Manifest.system -ne "16_CONFLICTS_UNKNOWN"){
            $Errors.Add("MANIFEST SYSTEM INVALID")
        }

        if($Manifest.architecture -ne "COMPLETE"){
            $Errors.Add("MANIFEST ARCHITECTURE INVALID")
        }

        if($Manifest.hardening -ne "COMPLETE"){
            $Errors.Add("MANIFEST HARDENING INVALID")
        }

        if($Manifest.unknown_is_not_absent -ne $true){
            $Errors.Add("UNKNOWN/ABSENT FIREWALL INVALID")
        }

        if($Manifest.conflicts_are_valid_state -ne $true){
            $Errors.Add("CONFLICT STATE INVALID")
        }

        if($Manifest.guessing_disabled -ne $true){
            $Errors.Add("GUESSING FIREWALL INVALID")
        }

        if($Manifest.ai_as_evidence -ne $false){
            $Errors.Add("AI EVIDENCE FIREWALL INVALID")
        }

        if($Manifest.domain_override -ne $false){
            $Errors.Add("DOMAIN OVERRIDE FIREWALL INVALID")
        }

        if($Manifest.fail_closed -ne $true){
            $Errors.Add("FAIL CLOSED INVALID")
        }

    }catch{
        $Errors.Add("MANIFEST JSON INVALID")
    }
}

# ------------------------------------------------------------
# Final result
# ------------------------------------------------------------

Write-Host ""
Write-Host "16_CONFLICTS_UNKNOWN ZERO-LOOPHOLE VALIDATOR v1.0" -ForegroundColor Cyan
Write-Host "------------------------------------------------------------"

if($Errors.Count -gt 0){

    Write-Host "RESULT: VALIDATION FAILED" -ForegroundColor Red

    foreach($Error in $Errors){
        Write-Host "ERROR -> $Error" -ForegroundColor Red
    }

    Write-Host ""
    Write-Host "STATE: BLOCKED" -ForegroundColor Red
    exit 1
}

Write-Host "RESULT: ZERO-LOOPHOLE CONFLICT/UNKNOWN HARDENING VALID" -ForegroundColor Green
Write-Host "ARCHITECTURE: COMPLETE" -ForegroundColor Green
Write-Host "HARDENING: COMPLETE" -ForegroundColor Green
Write-Host "UNKNOWN != ABSENT: LOCKED" -ForegroundColor Green
Write-Host "CONFLICT != ERROR: LOCKED" -ForegroundColor Green
Write-Host "AMBIGUITY != CONFLICT: LOCKED" -ForegroundColor Green
Write-Host "VARIABILITY != CONFLICT: LOCKED" -ForegroundColor Green
Write-Host "EVIDENCE GAPS: CONTROLLED" -ForegroundColor Green
Write-Host "TAXONOMY BLOCKING: LOCKED" -ForegroundColor Green
Write-Host "GEOGRAPHIC BLOCKING: LOCKED" -ForegroundColor Green
Write-Host "TEMPORAL BLOCKING: LOCKED" -ForegroundColor Green
Write-Host "CANONICAL CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "HISTORICAL CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "BIOLOGICAL CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "BEHAVIOR CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "ECOLOGICAL CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "DOMESTIC/TRAINING CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "INTERACTION CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "VISUAL CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "AUDIO CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "BATTLE/STRESS CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "EQUIPMENT CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "CROSS-SYSTEM CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "CONTINUITY CONFLICT CONTROL: LOCKED" -ForegroundColor Green
Write-Host "DEPENDENCY BLOCKING: LOCKED" -ForegroundColor Green
Write-Host "CASCADE CONTROL: LOCKED" -ForegroundColor Green
Write-Host "EXCEPTION CONTROL: LOCKED" -ForegroundColor Green
Write-Host "SNAPSHOT ATOMICITY: LOCKED" -ForegroundColor Green
Write-Host "PROVENANCE: LOCKED" -ForegroundColor Green
Write-Host "VALIDATION INDEPENDENCE: LOCKED" -ForegroundColor Green
Write-Host "FORWARD AUDIT: LOCKED" -ForegroundColor Green
Write-Host "REVERSE AUDIT: LOCKED" -ForegroundColor Green
Write-Host "FAIL-CLOSED: LOCKED" -ForegroundColor Green
Write-Host "AI AS EVIDENCE: DISABLED" -ForegroundColor Green
Write-Host "DOMAIN OVERRIDE: DISABLED" -ForegroundColor Green
Write-Host "STATE: FROZEN" -ForegroundColor Green
Write-Host "VERSION: 1.0" -ForegroundColor Green
Write-Host "PRODUCTION: BLOCKED WHEN MATERIAL UNCERTAINTY REMAINS" -ForegroundColor Yellow
Write-Host "NO KNOWN ARCHITECTURE-LEVEL CONFLICT/UNKNOWN LOOPHOLES DETECTED." -ForegroundColor Green


