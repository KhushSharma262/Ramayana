# SHADER HANDOFF

## Purpose and scope
Translate approved physical properties into documented shader inputs and identify where the shader is only an approximation.

## Required controls
Record shader/model/version, color-space assumptions, base reflectance or albedo source, roughness model, IOR where applicable, metallic behavior, transmission, scattering, layer order, and validity limits.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Do not equate a shader slider with a measured physical quantity unless the mapping is established.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.
