# MATERIAL CONTINUITY

## Purpose and scope
Maintain a traceable history from material definition to instance, asset, state, shot, and approved change.

## Required controls
Record stable IDs, versions, state transitions, causes, source evidence, change approvals, and affected downstream deliverables.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Keep identity changes separate from condition changes and renderer-only adjustments.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.

---

## Legacy migration controls — Material continuity

<!-- MIGRATION-CONTROL-ID: LEGACY_CONTINUITY_LOCK -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- Track material identity and condition across shots, scenes, episodes, and narrative time.
- Record the last approved state, state-changing event, first affected shot, subsequent affected shots, and any repair, replacement, or justified reset.
- Separate persistent object-fixed features from view-dependent reflections, illumination, occlusion, and transient effects.
- Changes to approved identity, construction, or persistent condition require traceable decisions and affected-shot review.
- Unexplained material substitutions and state resets are continuity failures.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.
