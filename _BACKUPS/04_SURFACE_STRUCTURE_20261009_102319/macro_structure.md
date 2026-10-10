# MACRO STRUCTURE

## Scope

Features that define the broad surface form and its large-scale deviations
from ideal geometry. No universal physical-size threshold applies to every
material or shot.

## Feature classes

Consider:
- Overall curvature and silhouette.
- Large folds, wrinkles, ridges, grooves, and waviness.
- Large pores, cavities, cracks, chips, dents, and delamination.
- Grain direction and large-scale anisotropy.
- Layer boundaries and broad thickness changes.
- Tool marks, forming marks, and deformation where evidence supports them.
- Damage, wear, erosion, and deposits when present.

## Physical constraints

Macro features must follow the underlying object shape, manufacturing or
formation process, loading history, and current material state where known.

Do not place a surface imperfection independently of the geometry that causes
it. A crack, fold, chip, or dent must have plausible geometry and spatial
relationships. Do not imply a causal history that is unsupported.

For layered or woven materials, represent the actual topology and layer order
where they affect silhouette, contact, shadowing, or transmission.

## Representation

Choose actual geometry, displacement, normal detail, or a combination based
on feature size, silhouette contribution, parallax, contact, and renderer
capability.

Geometry or displacement may be required for silhouette changes and substantial
parallax. Normal maps cannot change the actual silhouette. A bump or normal
representation must not be described as actual geometry.

Ensure geometry, displacement, and texture maps do not represent the same
feature twice unless the combination is deliberately calibrated.

## Validation

Inspect:
- Silhouette and grazing-angle views.
- Contact and self-shadowing.
- Close, medium, and distant views.
- Deformation and motion, if applicable.
- Intersections and layer continuity.
- Scale against a known dimension or explicitly uncertain reference.

Document missing measurements, uncertain feature sizes, and renderer-specific
limits.
