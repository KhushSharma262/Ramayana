# MICRO SURFACE

## Scope

Fine geometry and statistical detail affecting local normals, roughness
appearance, highlights, scattering, contact, and unresolved surface response.

## Possible features

- Fine scratches and abrasion.
- Small pores, pits, and asperities.
- Fine grain, fibrils, and fibers.
- Local slope distributions.
- Directional polishing or tool marks.
- Fine coatings and deposits where established.

Material-specific evidence determines which features are appropriate.

## Geometry versus roughness

A geometric height distribution is not identical to a renderer roughness
parameter. Roughness is model-dependent and does not automatically represent
a measured physical height or slope distribution.

A height map, normal map, explicit microgeometry, and fitted BRDF parameter
are not interchangeable.

If explicit geometry and an effective roughness model represent overlapping
scales, define the separation and validate it. Do not count the same
microstructure twice.

## Required descriptors

Where relevant, record feature dimensions, height and slope distributions,
directionality, correlation length, coverage, density, measurement resolution,
wavelength relevance, and renderer assumptions.

## Optical behavior

Fine structure may affect masking, shadowing, interreflection, scattering,
and reflected-light distribution. Effects depend on scale, wavelength,
material response, illumination, and the selected renderer.

A normal map alone does not simulate all microgeometry occlusion or
multiple scattering.

## Validation

Test grazing highlights, different light sizes, view angles, camera distances,
motion, aliasing, sparkle, and denoising. Investigate both implausibly smooth
and excessively noisy results.
