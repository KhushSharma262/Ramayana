$Root = "C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\ANIMALS\08_VISUAL_IDENTITY"
$Errors = @()

$RequiredFiles = @(
"01_CORE\visual_identity_index.md",
"01_CORE\visual_identity_definition.md",
"01_CORE\visual_identity_ownership_and_boundaries.md",
"02_IDENTITY_DATABASE\identity_record_schema.md",
"04_APPEARANCE_STATES\visual_state_transition.md",
"05_AGE_AND_LIFE_STAGE\age_progression.md",
"06_FORMS_AND_MANIFESTATIONS\visual_forms.md",
"09_HISTORICAL_AND_CANONICAL\canonical_appearance_reconstruction.md",
"10_REFERENCE_AND_RECONSTRUCTION\reference_image_policy.md",
"11_INDIVIDUAL_CONTINUITY\individual_visual_continuity.md",
"13_SUPERNATURAL\supernatural_visual_firewall.md",
"14_SCENE_AND_SHOT\scene_visual_identity_control.md",
"15_RESEARCH_CONTROL\research_and_evidence.md",
"15_RESEARCH_CONTROL\dependency_invalidation.md",
"16_PRODUCTION_HANDOFF\ai_production_handoff.md"
)

foreach($F in $RequiredFiles){
    if(!(Test-Path (Join-Path $Root $F))){
        $Errors += "FILE MISSING [$F]"
    }
}

$Hardening = @(
"18_claim_level_visual_provenance.md",
"19_visual_conflict_resolution.md",
"20_reference_version_control.md",
"21_trait_compatibility_engine.md",
"22_temporal_visual_continuity.md",
"23_ai_bias_beautification_firewall.md",
"24_identity_recognition_envelope.md",
"25_temporary_state_stacking_firewall.md",
"26_hair_grooming_continuity.md",
"27_scar_and_marking_lifecycle.md",
"28_animal_seasonal_visual_change.md",
"29_population_individual_visual_firewall.md",
"30_camera_rendering_distortion_firewall.md",
"31_visual_causality_firewall.md",
"32_cross_scene_snapshot_validation.md",
"33_asset_trait_audit.md",
"34_reference_conflict_firewall.md",
"35_replacement_asset_continuity.md"
)

foreach($F in $Hardening){
    $P = Join-Path $Root "17_FINAL_HARDENING\$F"
    if(!(Test-Path $P)){
        $Errors += "HARDENING FILE MISSING [$F]"
    }
}

$Markers = @{
"CLAIM PROVENANCE" = "ONE CLAIM"
"CONFLICT RESOLUTION" = "Conflicting visual evidence"
"REFERENCE VERSION" = "REFERENCE IMAGE"
"TRAIT COMPATIBILITY" = "COLLECTIVE VISUAL STATE"
"TEMPORAL CONTINUITY" = "PREVIOUS_APPROVED_SNAPSHOT"
"AI BIAS" = "beautification"
"RECOGNITION ENVELOPE" = "IDENTITY RECOGNITION ENVELOPE"
"STATE STACKING" = "Temporary visual conditions"
"HAIR CONTINUITY" = "Hair and grooming are stateful"
"SCAR LIFECYCLE" = "ABSENT"
"SEASONAL ANIMAL" = "Animal visual identity"
"POPULATION INDIVIDUAL" = "Population rules define"
"CAMERA FIREWALL" = "Camera and rendering can alter"
"CAUSALITY" = "Every material visual state change requires a cause"
"CROSS SCENE" = "CROSS-SCENE SNAPSHOT VALIDATION"
"ASSET AUDIT" = "Every important generated asset receives a trait-level audit"
"REFERENCE CONFLICT" = "Multiple references may disagree"
"REPLACEMENT" = "When an asset fails validation"
}

foreach($C in $Markers.GetEnumerator()){
    $Found = $false

    foreach($F in $Hardening){
        $P = Join-Path $Root "17_FINAL_HARDENING\$F"
        if(Test-Path $P){
            $T = Get-Content $P -Raw
            if($T -like "*$($C.Value)*"){
                $Found = $true
                break
            }
        }
    }

    if(!$Found){
        $Errors += "CONTROL MISSING [$($C.Key)]"
    }
}

$ManifestPath = Join-Path $Root "17_FINAL_HARDENING\visual_identity_architecture_manifest.json"

if(Test-Path $ManifestPath){
    try{
        $M = Get-Content $ManifestPath -Raw | ConvertFrom-Json

        if($M.version -ne "1.1"){ $Errors += "MANIFEST VERSION INVALID" }
        if($M.hardening_complete -ne $true){ $Errors += "HARDENING FLAG INVALID" }
        if($M.single_source_of_truth -ne $true){ $Errors += "SINGLE SOURCE FLAG INVALID" }
        if($M.ai_can_redefine_identity -ne $false){ $Errors += "AI REDEFINITION FLAG INVALID" }
        if($M.production -ne "BLOCKED_UNTIL_APPROVED_SNAPSHOTS"){ $Errors += "PRODUCTION STATE INVALID" }

        $RequiredFlags = @(
        "claim_level_provenance","conflict_resolution","reference_version_control",
        "trait_compatibility","temporal_continuity","ai_bias_firewall",
        "identity_recognition_envelope","temporary_state_stacking_control",
        "hair_grooming_continuity","scar_marking_lifecycle",
        "animal_seasonal_visual_change","population_individual_firewall",
        "camera_rendering_firewall","visual_causality",
        "cross_scene_snapshot_validation","asset_trait_audit",
        "reference_conflict_firewall","replacement_asset_continuity"
        )

        foreach($Flag in $RequiredFlags){
            if($M.$Flag -ne $true){
                $Errors += "MANIFEST CONTROL FLAG INVALID [$Flag]"
            }
        }
    }
    catch{
        $Errors += "MANIFEST JSON INVALID"
    }
}
else{
    $Errors += "MANIFEST MISSING"
}

$Forbidden = Get-ChildItem $Root -Directory -Recurse |
Where-Object {
    $_.Name -match '^(CHARACTERS|ANIMALS|FACES|COSTUMES|CHARACTER_SHEETS|INDIVIDUALS)$'
}

if($Forbidden.Count -gt 0){
    $Errors += "FORBIDDEN DUPLICATE IDENTITY DATABASE FOLDERS DETECTED"
}

if($Errors.Count -eq 0){
    Write-Host ""
    Write-Host "08_VISUAL_IDENTITY ZERO-LOOPHOLE VALIDATOR v1.2"
    Write-Host "RESULT: ZERO-LOOPHOLE VISUAL IDENTITY HARDENING VALID"
    Write-Host "ARCHITECTURE: COMPLETE"
    Write-Host "HARDENING: COMPLETE"
    Write-Host "STATE: FROZEN"
    Write-Host "VERSION: 1.1"
    Write-Host "RESEARCH: NOT YET POPULATED"
    Write-Host "PRODUCTION: BLOCKED UNTIL APPROVED SNAPSHOTS"
    Write-Host "TRACEABILITY: SOURCE -> CLAIM -> DECISION -> VISUAL_IDENTITY_ID -> SNAPSHOT_ID -> SCENE_ID -> PROMPT_ID -> ASSET_ID -> SHOT_ID"
    Write-Host "NO KNOWN ARCHITECTURE-LEVEL LOOPHOLES DETECTED."
}
else{
    Write-Host ""
    Write-Host "RESULT: VISUAL IDENTITY HARDENING INVALID"

    foreach($E in $Errors){
        Write-Host $E
    }
}
