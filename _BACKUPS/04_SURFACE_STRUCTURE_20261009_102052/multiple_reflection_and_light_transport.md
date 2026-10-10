# MULTIPLE REFLECTION AND LIGHT TRANSPORT

## Scope
Defines structural requirements for realistic light transport. Renderer implementation and light settings are owned by LIGHTING/RENDERING.

## Distinguish phenomena
1. Direct specular reflection.
2. Rough-surface/microfacet reflection.
3. Diffuse reflection and subsurface/volumetric scattering.
4. Transmission and refraction.
5. Internal reflection in transparent/translucent materials.
6. Interreflection between separate surfaces.
7. Multiple-bounce global illumination.
8. Cavity/recess reflection and occlusion.
9. Thin-film/interference effects only when physically justified.
10. Wavelength-dependent absorption/scattering.

## Energy and reciprocity
For passive materials, reflected + transmitted + absorbed energy must be consistent with incident energy at relevant wavelengths and angles. Use coherent BRDF/BSDF/BTDF models. Reciprocity applies when the model's physical assumptions require it. Roughness redistributes reflection; it does not create energy.

## Structure affecting bounce light
- geometry, normals and cavity depth
- roughness at relevant spatial scales
- refractive index and absorption
- material layers/coatings
- nearby surface reflectance and geometry
- illumination spectrum/direction
- renderer sampling, denoising and approximation

## Handoff fields
Record global illumination method, bounce limits or equivalent, spectral/RGB assumptions, BRDF/BSDF assumptions, sampling, denoising, caustics/transmission support, energy checks, limitations and shot-specific approximations.

Environment maps, reflection probes, screen-space reflections and AO can be useful approximations but are not equivalent to complete physical multi-bounce transport. AO is not GI. Do not bake bounce illumination into albedo and also compute it through GI. Do not double-count the same reflection path.

## Validation cases
Test under direct, grazing and back lighting; cavities; nearby bright and dark surfaces; transparent/translucent materials; wet/dry states where relevant; close and distant camera scales. Check plausible bounce illumination, reflections, shadows, no energy gain and temporal stability.
