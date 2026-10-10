# MATERIAL STATE MODEL

## Purpose and scope
Represent a material instance as a stable material identity plus a versioned condition state and relevant environmental conditions.

## Required controls
Record material ID/version, instance ID, state ID/version, initial condition, causes, transition history, affected layers, evidence, uncertainty, and dependent shots/assets.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Keep permanent identity, reversible conditions, irreversible damage, and material transformation distinct.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.

---

## Legacy migration controls — Material state model

<!-- MIGRATION-CONTROL-ID: LEGACY_STATE_MODEL -->

The following controls preserve requirements recovered from the previous
MATERIALS system. Their inclusion does not by itself establish historical,
scientific, or production validation.

- Material identity is distinct from temporary condition and visual appearance.
- Track pristine, used, aged, weathered, dusty, wet, muddy, scratched, cracked, chipped, stained, sooted, burnt, repaired, restored, or destroyed conditions only where applicable.
- State transitions require a plausible cause and must be compatible with the material and event.
- Dirt, moisture, wear, damage, and repairs persist until a justified event changes, removes, or replaces them.
- Record unknown state causes as unknown; do not invent an event to make continuity appear consistent.

**Verification status:** NOT_VERIFIED  
Compare these controls with the recovered source and actual production records.
Record evidence and reviewer approval before marking them verified.
