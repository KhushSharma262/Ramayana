# MATERIAL REGISTRY

## Purpose and scope
Maintain the authoritative index of material identities and their approved versions.

## Required controls
Each entry should link stable material ID, name, category, composition/identity confidence, source class, record path, version, approval status, variants, and dependent assets.

## Evidence and uncertainty
Record the source, provenance, confidence, uncertainty, applicable context, and version for every material-specific claim. Use UNKNOWN when information is not established. Use NOT_APPLICABLE only when the field genuinely does not apply. Label production reconstruction explicitly.

## Ownership and boundaries
This document governs its named MATERIALS domain. It does not silently take ownership of costume design, object identity, architectural layout, environmental simulation, camera, lighting implementation, or compositing. Use stable cross-folder IDs and explicit handoff records.

## Validation and failure handling
Do not register an unverified reconstruction as established fact. Use explicit draft, under-research, approved, deprecated, or blocked status.

Record checks as PASS, PASS_WITH_LIMITATIONS, FAIL, or NOT_TESTED. Do not report a test as passed without evidence. Critical physical, historical, identity, or continuity contradictions block approval.

## Completion status
This document establishes the operational rules for this domain. Material-specific facts, assignments, approvals, and external tests remain pending until supported by records.


## MATERIALS_ONE_PASS_REGISTRY_GATE

The registry is the authoritative index of individual material identities and approved
versions. A registry entry should include:
material ID, canonical name, family, identity confidence, evidence class, source references,
record path, version, status, owner, reviewer, variants, and dependent asset IDs.

Do not register a family overview as an approved individual material identity.
Do not assign an ID merely because a file exists. Check for duplicates and ensure IDs
remain stable across references.

Approval requires a complete record for its intended use, reviewed evidence or an
explicitly authorized reconstruction, no unresolved critical contradiction, and documented
scope. Unknown values must remain explicit.
