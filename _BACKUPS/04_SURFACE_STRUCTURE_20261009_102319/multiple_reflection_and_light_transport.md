# MULTIPLE REFLECTION AND LIGHT TRANSPORT

## 1. Purpose and boundary

This document specifies surface-structure requirements for physically
plausible light transport. It does not implement a renderer or certify a
rendering engine.

Keep distinct:
- Local surface scattering.
- Reflection and transmission at interfaces.
- Internal absorption and scattering.
- Multiple scattering inside a material.
- Interreflection between separate surfaces.
- Direct and indirect illumination.
- Emission and other energy sources.
- Approximations used to reproduce any of these effects.

## 2. Interface model

Choose an appropriate reflection and transmission model for the material.
Where applicable, account for wavelength, incidence angle, viewing angle,
surface orientation, polarization assumptions, and material state.

Document whether the model is measured, physically derived, fitted, or
art-directed. A fitted model can match a reference while still failing outside
the fitted conditions.

For layered or coated materials, account for interfaces and layer order when
they materially affect the result. Do not assume that a single homogeneous
surface model represents a multilayer structure correctly.

## 3. Multiple-bounce transport

Multiple reflections may occur between surfaces and within layered or
participating materials. Their contribution depends on geometry, material
response, illumination, absorption, scattering, and the transport model.

A production setup must identify which mechanism is actually represented and
which mechanisms are omitted or approximated.

Possible techniques include path tracing, other global-illumination methods,
specialized material models, reflection probes, screen-space methods, and
hybrid systems. Their capabilities and limitations differ.

- Reflection probes sample precomputed or captured environments and may not
  reflect current local geometry correctly.
- Screen-space reflections depend on visible screen data and cannot generally
  recover all off-screen or hidden geometry.
- Ambient occlusion approximates a subset of local occlusion and is not a
  general global-illumination solution.
- A normal map changes shading normals but does not by itself provide actual
  microgeometry or all microfacet shadowing and interreflection.
- A single environment lookup does not represent arbitrary scene-dependent
  multi-bounce transport.
- A high sample count does not correct an incorrect material or transport model.

## 4. Energy accounting

For passive materials, the selected model must not produce net energy from
nothing. Reflected, transmitted, absorbed, and other relevant contributions
must be consistent with the model's definitions and assumptions.

Check:
- Fresnel/interface behavior where applicable.
- Directional and hemispherical energy accounting as supported by the model.
- Spectral or RGB approximation assumptions.
- Layer absorption and transmission.
- Internal scattering assumptions.
- Emission separated from passive reflection.
- Direct versus indirect contribution accounting.
- Importance-sampling and numerical bias where relevant.
- Denoising and clamping effects on energy and detail.

Do not apply universal scalar rules blindly to a complex participating medium
or layered system. Use the conservation conditions appropriate to the chosen
physical model and clearly document any approximation.

## 5. Prevent double counting

Do not:
- Bake indirect light into albedo and then calculate it again.
- Combine a measured effective scattering response with a second model that
  represents the same scattering without a justified separation.
- Use explicit microgeometry and roughness to represent overlapping scales
  without calibration.
- Stack ambient occlusion, baked occlusion, and renderer occlusion blindly.
- Add reflection compensation that duplicates a reflection already produced
  by the transport solver.
- Treat a beauty-reference match as evidence that the energy model is correct.

For every baked map or precomputed contribution, document what it contains,
what it excludes, and how it is combined at render time.

## 6. Geometry and surface structure

Surface normals, height, displacement, topology, and roughness must have
consistent scale and meaning. Geometry that changes silhouette or creates
significant parallax may need actual geometry or displacement.

Use enough geometric and sampling resolution for the required effect. Do not
claim that normal maps reproduce physical occlusion or silhouette changes.

For layered materials, preserve layer order and interface relationships where
they affect transport. For participating materials, do not confuse surface
reflection with transport through the volume.

## 7. Scale, wavelength, and model validity

The suitability of geometric optics, effective roughness, or a scattering
approximation depends on the relevant physical scales and wavelength. Do not
assert that a single model is correct for every scale or material.

Record the chosen model, assumptions, relevant scales, and limits. When
microstructure cannot be resolved directly, use a documented effective model
and validate it against appropriate measurements or references.

## 8. Validation scenes

Use controlled tests that isolate the effects under examination:
- A simple diffuse surface.
- A reflective surface in a known environment.
- A rough reflective surface under small and large light sources.
- A layered or transmissive sample when relevant.
- A concave scene with interreflection.
- A bright surface adjacent to a darker surface.
- A high-contrast grazing-angle test.
- A scene with occluded and off-screen reflecting geometry.
- A multi-scale surface under camera motion.

Not every test applies to every material. State why a test is inapplicable
rather than silently skipping it.

## 9. Validation criteria

Where supported, evaluate:
- Energy consistency and known limiting cases.
- Agreement with a measured or calibrated reference.
- Highlight shape and motion.
- Reflection and transmission behavior at changing angles.
- Indirect-light contribution.
- Sensitivity to sampling and denoising.
- Screen-space or probe limitations.
- Stability under camera and object motion.
- Double counting and baked-light contamination.
- Repeatability across render settings.

Record renderer version, material model, lighting, exposure, color management,
sampling settings, denoising, and reference conditions.

## 10. Acceptance

A test passes only for its documented conditions. Passing a few simple scenes
does not certify every material, scale, lighting condition, or shot.

Record unresolved renderer limitations and use an approved alternative or
explicit production exception when needed. Never label an approximation as
fully physical without evidence.
