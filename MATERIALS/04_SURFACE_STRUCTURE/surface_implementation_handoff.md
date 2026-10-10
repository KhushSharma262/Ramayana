# SURFACE STRUCTURE IMPLEMENTATION HANDOFF

## Purpose

Transfer an approved physical surface definition into a digital asset and
renderer without losing scale, uncertainty, or physical meaning.

## Required inputs

- Material and variant IDs.
- Approved feature records.
- Evidence and uncertainty notes.
- Physical dimensions and units.
- Applicable physics references.
- Required camera and lighting conditions.
- Target renderer and version.
- Known model limitations.
- Required validation tests.

## Required implementation decisions

For every feature, document:
- Geometry, displacement, normal, bump, texture, volume, or hybrid method.
- Physical scale to digital coordinate mapping.
- UV and coordinate conventions.
- Resolution and filtering.
- LOD and temporal behavior.
- Relationship to shader parameters.
- Whether geometry or optical response is approximated.
- Known artifacts and failure limits.

## Non-equivalence warnings

- Color texture is not physical geometry.
- Normal mapping is not actual silhouette or full microgeometry.
- Roughness is not automatically a measured height statistic.
- Ambient occlusion is not complete indirect illumination.
- Reflection probes are not complete scene-dependent transport.
- A visually matched shader is not necessarily a physically identified model.
- A successful still frame does not prove temporal stability.

## Change control

Record renderer, shader, texture, geometry, and pipeline versions. If the
representation changes, assess which validation tests must be repeated.

## Handoff acceptance

- Required inputs linked.
- Assumptions and unknowns visible.
- Renderer limitations documented.
- Validation matrix completed for required cases.
- Critical failures resolved or explicitly excepted.
- Approval scoped to a material, renderer, and use case.
