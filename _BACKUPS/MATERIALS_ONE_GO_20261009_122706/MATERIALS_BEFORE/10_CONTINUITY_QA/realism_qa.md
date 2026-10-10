# MATERIAL REALISM QA

## Purpose and scope
Evaluate whether the depiction follows the approved material identity, causal history, physical response, and evidence limitations.

## Required controls
Inspect structure scale, orientation, roughness versus topography, reflections, transmission, shadows, contact, wet/dry response, wear, and continuity.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Use UNKNOWN or NOT_TESTED where evidence or tests are absent. Do not substitute subjective realism scores for required physical checks.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.

---

## Legacy migration controls — Material QA requirements

<!-- MIGRATION-CONTROL-ID: LEGACY_MATERIAL_QA -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- QA must examine material identity, physical plausibility, feature scale, condition state, continuity, AI artifacts, and implementation limitations.
- Check that geometry, texture, roughness, displacement, transmission, subsurface response, and reflections do not contradict one another.
- Check relevant lighting conditions and neighboring materials; do not use generic shader settings as substitutes for physical definitions.
- Classify checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED, and preserve evidence and reviewer notes.
- Unresolved critical identity, causal, physical, or continuity contradictions block approval.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.

---

## Legacy requirement: detailed material QA

<!-- MIGRATION-CONTROL-ID: LEGACY_DETAILED_QA_CHECKLIST -->

- Identity: verify the base material and category; reject unsupported substitutions and AI material drift.
- Physical response: check roughness, reflectivity, transparency, scattering, weight or mechanical behavior where relevant, and interaction with light.
- Scale: check texture, grain, weave, scratches, pores, and imperfections against the object's physical scale and camera distance.
- State: verify that aging, weathering, damage, and repairs have plausible causes and persist correctly.
- Continuity: verify material identity, construction, surface character, and tracked state changes across shots.
- AI artifacts: inspect for plastic-looking skin, synthetic-looking silk, arbitrary metallic changes, repeated textures, and impossible material response.
- Rendering: verify shader assumptions, texture/map suitability, displacement, subsurface scattering, and transmission where applicable.
- Record unsupported or untested properties as UNKNOWN or NOT_TESTED. Do not claim validation without evidence.

**Verification status:** NOT_VERIFIED. Confirm against the legacy source and production evidence before sign-off.


## MATERIALS_ONE_PASS_PRODUCTION_QA

### Identity
- Confirm material ID and canonical identity.
- Reject unsupported substitution and material drift.
- Keep identity separate from finish and temporary state.

### Physical response
- Check roughness, reflectivity, transparency, translucency, scattering, absorption,
  mechanical behavior, weight-related behavior, and thermal response where relevant.
- Do not require irrelevant properties for materials that do not exhibit them.

### Scale and construction
- Check grain, weave, pores, scratches, chips, layer thickness, seams, and displacement
  against physical scale and asset dimensions.
- Inspect texture repetition, UV seams, filtering, aliasing, and LOD behavior.

### State and continuity
- Require a plausible cause for dust, wetness, soot, damage, wear, aging, or repair.
- Preserve state across shots unless a documented event, repair, replacement, restoration,
  or narrative time transition justifies a change.
- Track state changes separately from identity changes.

### AI and rendering
- Inspect plastic-looking skin, synthetic-looking silk, random metal changes, repeated
  texture patterns, impossible reflections, inconsistent transmission, and implausible
  light response.
- Validate shaders, maps, displacement, subsurface scattering, transmission, and
  anisotropy only where applicable.

### Test outcomes
Use PASS, PASS_WITH_LIMITATIONS, FAIL, INCONCLUSIVE, or NOT_TESTED.
A PASS applies only to the recorded material, renderer/version, scene, settings, lighting,
camera, color management, and tested conditions. Documentation alone is not test evidence.
