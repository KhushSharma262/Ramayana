# MACRO STRUCTURE

## Scope

Large-scale geometry and structural deviations that affect overall form,
silhouette, parallax, contact, self-shadowing, and broad reflection.

## Candidate features

- Curvature, folds, ridges, grooves, and waviness.
- Large pores, cavities, dents, chips, and cracks.
- Layer boundaries and large thickness variations.
- Grain direction and large-scale anisotropy.
- Forming marks and tool traces where supported.
- Damage and wear consistent with the material and its history.

These are candidates, not features to apply indiscriminately to every material.

## Physical constraints

Feature geometry should be consistent with object shape, material structure,
formation or processing, loading, and current state where known.

Cracks, folds, chips, and dents need plausible spatial relationships. Do not
invent a specific causal history from appearance alone.

For layered, woven, fibrous, or assembled materials, preserve topology and
layer order when they affect silhouette, contact, or optical behavior.

## Representation choice

Use actual geometry or displacement when silhouette, parallax, contact, or
significant self-shadowing requires it. Normal and bump maps do not alter the
actual silhouette.

Document whether each feature is represented by geometry, displacement,
normal, color, or another method. Avoid representing the same feature twice
without a defined scale separation.

## Validation

Check silhouette, grazing-angle lighting, self-shadowing, contact, close and
distant views, camera motion, deformation, and layer intersections.

Compare physical dimensions against a measured reference when available.
Otherwise mark the dimensions as estimated or unknown.
