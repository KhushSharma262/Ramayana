# VFX MATERIAL HANDOFF

## Purpose and scope
Define material interactions needed for effects such as dust, smoke, liquid, debris, fire, erosion, impact, and transferred residue.

## Required controls
Record source and receiver materials, mechanism, units and scales where known, state transitions, temporal behavior, dependencies, and renderer/simulation assumptions.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
VFX owns effect implementation; MATERIALS defines substance identity and supported response.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.
