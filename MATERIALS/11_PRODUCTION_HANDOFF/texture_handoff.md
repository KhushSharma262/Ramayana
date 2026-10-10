# TEXTURE HANDOFF

## Purpose and scope
Specify texture and map requirements derived from approved physical features.

## Required controls
Record map purpose, material/structure IDs, physical dimensions, UV scale, resolution, bit depth/color space where relevant, projection, filtering, mip/LOD policy, source, and reconstruction status.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Separate color/albedo, roughness, normal, displacement, masks, and volumetric data. Avoid encoding lighting into base color unless explicitly justified.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.
