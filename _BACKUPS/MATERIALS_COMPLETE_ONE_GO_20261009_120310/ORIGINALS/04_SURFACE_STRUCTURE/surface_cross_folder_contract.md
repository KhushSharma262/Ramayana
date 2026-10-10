# SURFACE STRUCTURE CROSS-FOLDER CONTRACT

## Purpose

Prevent duplicated ownership, missing interfaces, and contradictory data
between surface structure and the rest of the MATERIALS system.

## Required dependencies

### MATERIALS/02_MATERIAL_DATABASE

Expected upstream information:
- Stable material ID and variant.
- Composition and material identity evidence.
- Processing, origin, and relevant material history.
- Material-specific source records and uncertainty.

Surface structure must not invent missing composition or silently change
material identity. Record unresolved links.

### MATERIALS/03_PHYSICS

Expected upstream information:
- Physical properties and applicable constitutive models.
- Units, valid ranges, and model assumptions.
- Calibration, uncertainty, and physical validation status.

Surface structure records morphology and its digital representation. It must
not independently redefine physical constants or claim to validate a
constitutive model.

### Behavior and state folders

Expected interface:
- Relevant wear, moisture, contamination, damage, and state transitions.
- Conditions that change structural features.
- Temporal dependencies and transition limitations.

Do not duplicate the authoritative state-transition definition. Link to it
when available.

### Renderer, lighting, and production QA

Expected interface:
- Renderer and version.
- Actual transport method and limitations.
- Geometry, shader, texture, filtering, and LOD settings.
- Test scenes, measurements, failures, and approvals.

A specification is not proof of implementation.

## Contract validation

For each dependency, record:
- Folder and authoritative file.
- Field or record identifier.
- Version.
- Units and coordinate conventions.
- Required versus optional fields.
- Handling of missing data.
- Validation owner.
- Last compatibility review.

If a dependency is absent, mark BLOCKED or UNVERIFIED. Do not infer that it
is complete because a similarly named file exists.
