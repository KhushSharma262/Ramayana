# LIGHTING HANDOFF

## Purpose and scope
Communicate material response requirements and the tests needed under shot lighting; actual light transport implementation belongs to LIGHTING/RENDERING.

## Required controls
Record renderer/version, BRDF/BSDF assumptions, light spectrum or RGB assumptions, GI method, bounce limits, sampling, denoising, caustics/transmission support, and limitations when known.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Do not bake bounce illumination into albedo and calculate it again. AO is not global illumination.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.
