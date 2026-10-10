# RENDER VALIDATION

## Purpose and scope
Record actual renderer validation; documentation or a planned test is not a passed test.

## Required controls
Each test records renderer/version, scene, material/structure IDs, lighting, camera scale, settings, expected behavior, observed result, images/logs, energy or continuity checks, limitations, reviewer, and status.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Use NOT_RUN until the test is actually executed. Distinguish FAIL, PASS_WITH_LIMITATIONS, and PASS.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.

---

## Legacy migration controls — Renderer validation requirements

<!-- MIGRATION-CONTROL-ID: LEGACY_RENDER_VALIDATION -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- A planned test is not a passed test; use NOT_TESTED until the renderer test is actually executed.
- Record renderer and version, scene, material and structure IDs, lighting, camera scale, relevant settings, expected behavior, observed result, evidence, limitations, reviewer, and status.
- Test applicable direct and grazing illumination, reflections, transmission, indirect light, feature scale, filtering, and temporal consistency.
- Do not bake indirect illumination into base color and then count it again; ambient occlusion is not a substitute for global illumination.
- Unexecuted renderer tests must remain open and must not be represented as validated results.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.
