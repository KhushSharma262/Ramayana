# MULTIPLE REFLECTION AND LIGHT TRANSPORT

## Scope

Define structural requirements and validation for realistic light transport.
This document does not itself implement a renderer.

Distinguish:
- Reflection and transmission at an interface.
- Local surface scattering.
- Internal absorption and scattering.
- Multiple scattering inside a material.
- Interreflection between separate surfaces.
- Direct and indirect illumination.
- Emission and other energy sources.
- Measured response and approximations.

## Interface behavior

Select an appropriate interface and material model. Where relevant, document
wavelength assumptions, incidence and viewing angles, material state, layer
order, and whether parameters are measured, derived, fitted, or artistic.

A model fitted to one image or lighting condition may fail under other
conditions. Record the valid range.

## Multiple-bounce transport

Multiple reflections depend on geometry, material response, illumination,
absorption, scattering, and the transport method.

Document whether the production uses path tracing, another global-illumination
method, analytic approximations, reflection probes, screen-space techniques,
or a hybrid. Record which mechanisms are represented and omitted.

Reflection probes may not represent current local geometry. Screen-space
methods cannot generally recover hidden or off-screen surfaces. Ambient
occlusion approximates a subset of occlusion and is not general GI. A normal
map does not by itself create actual microgeometry or all microfacet
interreflection. A single environment lookup does not solve arbitrary
scene-dependent multi-bounce transport.

Increasing sample count cannot repair an incorrect material or transport model.

## Energy accounting

For passive systems, the chosen model must not create net energy from nothing.
Reflected, transmitted, absorbed, and other relevant contributions must be
consistent with the model's definitions and assumptions.

Check applicable interface behavior, layered absorption, transmission,
internal scattering, direct versus indirect contributions, numerical bias,
sampling, clamping, and denoising.

Do not apply a universal scalar energy rule blindly to complex layered or
participating systems. Use the conservation conditions appropriate to the
chosen physical model.

## Prevent double counting

Do not:
- Bake indirect illumination into albedo and calculate it again.
- Combine an effective scattering model with another model of the same
  scattering without a justified separation.
- Represent the same microstructure in explicit geometry and roughness
  without scale separation.
- Stack baked, material, and renderer occlusion blindly.
- Add reflection compensation that duplicates the transport solver.
- Treat a beauty-image match as proof of correct energy transport.

Document exactly what every baked or precomputed map contains and excludes.

## Geometry and structure

Keep normals, height, displacement, topology, and roughness consistent in
scale and meaning. Use geometry or displacement when silhouette and significant
parallax require them. Preserve layer order where it affects transport.

Do not claim a texture map reproduces effects it does not model.

## Scale and wavelength

Model suitability depends on relevant scales and wavelength. Document why
the selected model applies and where it may fail. Use effective models only
with explicit assumptions and appropriate validation.

## Controlled test scenes

Test applicable cases:
1. Diffuse surface under known illumination.
2. Reflective surface in a controlled environment.
3. Rough surface under small and large lights.
4. Concave geometry with interreflection.
5. Bright and dark neighboring surfaces.
6. Grazing-angle surface detail.
7. Hidden and off-screen reflecting geometry.
8. Layered or transmissive sample.
9. Camera motion and multi-scale detail.

Record inapplicable tests with a reason.

## Acceptance metrics

Where applicable, evaluate energy consistency, reference agreement, highlight
shape and motion, reflection/transmission changes with angle, indirect-light
contribution, denoising sensitivity, off-screen limitations, and repeatability.

Record renderer/version, material model, lighting, exposure, color management,
sampling, denoising, and reference conditions.

A test validates only the conditions tested. It does not certify every
material, lighting setup, or production shot.
