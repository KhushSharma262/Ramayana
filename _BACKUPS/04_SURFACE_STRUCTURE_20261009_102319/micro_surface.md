# MICRO SURFACE

## Scope

Fine surface geometry and statistical detail that influence local normals,
roughness appearance, highlights, scattering, and contact at small scales.

Potential features include:
- Fine scratches and abrasion.
- Small pits, pores, and asperities.
- Fine grain, fibrils, and small fibers.
- Local slope distributions.
- Directional polishing and tool marks.
- Fine coatings, deposits, and surface contamination where established.

These examples are not a universal prescription. Material-specific evidence
determines which structures are relevant.

## Geometry versus optical parameters

Surface geometry and a fitted optical roughness parameter are not identical.
A renderer's roughness value generally summarizes behavior under a specific
model; it is not automatically a measured physical feature height.

Do not assume that a normal map, a height map, a measured height distribution,
and a microfacet roughness parameter are interchangeable.

If both explicit fine geometry and a roughness model represent overlapping
scales, define their scale separation. Avoid double-counting the same
variation in geometry and the BRDF.

## Required descriptors where relevant

- Feature height and lateral dimensions.
- Slope and normal distribution.
- Directionality and anisotropy.
- Spatial frequency and correlation length.
- Surface coverage and density.
- Relationship to larger structures.
- Measurement method and resolution.
- Applicable wavelength and observation conditions.
- Renderer model and unresolved-scale approximation.

Use measured values when available. If values are estimated from images, record
the image scale, assumptions, ambiguity, and uncertainty.

## Optical implications

Fine geometry may influence masking, shadowing, interreflection, scattering,
and the distribution of reflected light. Which effects are resolved depends on
feature size, wavelength, material properties, illumination, and renderer.

A conventional normal map does not automatically simulate microgeometry
shadowing, multiple scattering, or wavelength-dependent transport.

## Validation

Test grazing highlights, moving highlights, multiple light sizes, different
view angles, and multiple camera distances. Look for sparkle instability,
aliasing, excessive uniform noise, unrealistically smooth highlights, and
disagreement between geometric detail and roughness.
