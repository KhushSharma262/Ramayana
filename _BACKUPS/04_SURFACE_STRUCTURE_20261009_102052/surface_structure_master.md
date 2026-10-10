# SURFACE STRUCTURE MASTER

## Authority
This folder defines physical structure that creates surface appearance and affects contact, light transport and material response. It is not merely a texture library. The renderer computes light transport; this folder defines the structure that light interacts with.

## Scale hierarchy
- Macro: object-scale layers, grain direction, large defects and construction features.
- Medium: visible grain, pores, weave, knots, inclusions, pits, chips, ridges and wear.
- Micro: fine pores, fibres, microcracks, scratches and asperities.
- Sub-micro: grains, phases, fine particles, fibre bundles, microvoids and thin films when relevant.
Scale boundaries are operational, not universal constants. Record dimensions and units where known.

## Required record fields
Material ID/version; structure ID/version; feature; scale; dimensions/distribution; orientation; spatial correlation; composition/phase where relevant; formation cause; material state; exposure/processing history; source/provenance; uncertainty; validity; physical effects; representation method; renderer handoff; continuity links.

## Causal realism
Every feature needs a plausible cause: growth, mineral deposition, manufacture, tooling, abrasion, impact, fracture, corrosion, weathering, contamination, biological activity, repair or another supported process. No random “realistic” detail without cause.

## Multiple reflection and indirect light
Represent structure needed for direct reflection, rough-surface reflection, interreflection between surfaces, cavity/recess reflection, subsurface scattering, transmission/refraction and internal reflection where physically appropriate. These are different phenomena and must not be conflated.

Actual multiple-bounce transport belongs to lighting/rendering. Surface structure supplies geometry, normals, cavities, layers and spatial scales that the transport solver needs. Use physically coherent BRDF/BSDF/BTDF models where available. Passive materials must not create energy: reflected, transmitted and absorbed energy must be consistent with incident energy for the modeled wavelength and angle.

A reflection probe, environment map, screen-space reflection or ambient occlusion is an approximation, not equivalent to complete multi-bounce transport. Ambient occlusion is not global illumination. Do not bake bounce light into albedo and then calculate it again.

## Scale consistency
Detail must match physical dimensions and camera footprint. Filter unresolved detail instead of enlarging it into false geometry. Geometry, displacement, normal maps and shading must agree and must not double-count the same feature. LOD may change representation, not physical identity.

## State and continuity
Surface structure must agree with dry/wet/saturated/drying, clean/dusty/muddy, pristine/worn/damaged/repaired, heated/burned/cooled states. Every change requires a physical cause and must persist across shots unless conditions change.

Unknown structure remains UNKNOWN or an explicitly labeled reconstruction. Procedural patterns are not measured evidence. Never invent exact grain sizes, roughness metrics or distributions.
