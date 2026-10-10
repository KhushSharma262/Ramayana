# SURFACE SCALE, FILTERING, SAMPLING, AND LOD

## Physical scale

Store feature dimensions in physical units where possible. Keep them separate
from texture resolution, UV scale, pixel coverage, and renderer roughness.

Camera movement does not change physical feature size.

## Representation selection

Choose geometry, displacement, normal, bump, texture-driven shading, or an
effective model according to physical scale, silhouette, parallax, contact,
occlusion, optical importance, renderer capability, and camera resolution.

Document which effects are reproduced and which are approximated.

## Sampling and filtering

Fine detail can exceed image sampling limits. Evaluate supported mipmapping,
anisotropic filtering, displacement filtering, geometric tessellation,
stochastic sampling, and temporal stability.

Check shimmer, crawling detail, moire, repeated patterns, disappearing
structure, excessive blur, and filtered-normal artifacts.

Filtering is an approximation; it must be tested.

## LOD

Define transitions based on screen coverage and renderer constraints while
preserving relevant appearance and physical behavior.

Test popping, feature scale changes, highlight discontinuities, shadow
changes, tiling, double representation, flicker, and abrupt roughness changes.

## UV integrity

Document coordinate systems, UV scale, directionality, seams, and distortion.
Directional structures such as fibers, grain, weave, and scratches may be
incorrectly represented by isotropic mapping.

## Validation

Inspect close, medium, and distant views, motion, grazing angles, representative
focal lengths, and target output resolution. Record the approved range and
known limits.

A single still image cannot establish temporal stability.
