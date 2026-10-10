# SURFACE STRUCTURE MASTER STANDARD

## 1. Purpose

Define the physical structure of material surfaces and near-surface volumes
that influence light transport, appearance, contact, wear, and camera-visible
detail in the RAMAYAN production.

This folder defines structure. It does not independently establish the
composition of a material, its complete constitutive physics, or the correctness
of a particular renderer.

## 2. Authority boundaries

- MATERIALS/02_MATERIAL_DATABASE owns material identity, evidence, composition,
  variants, processing history, and material-specific records.
- MATERIALS/03_PHYSICS owns physical properties, constitutive behavior,
  physical models, calibration, and numerical validity.
- MATERIALS/04_SURFACE_STRUCTURE owns geometry and statistical structure at
  multiple scales, surface morphology, spatial correlations, defects, and
  structure-to-renderer requirements.
- MATERIALS/05_BEHAVIOR and MATERIALS/06_STATES, where present, own behavior
  and state transitions within their defined scopes.
- Renderer and lighting implementation own actual light transport and
  rendering execution.
- Continuity and QA own shot-level checks and approved production continuity.

If another folder is absent, do not silently assume its requirements are met.
Record the unresolved dependency.

## 3. Required physical scales

Every applicable material record must consider:

1. Macro geometry: overall form, curvature, large ridges, folds, dents,
   waviness, grain direction, and large defects.
2. Medium structure: visible grain, pores, fibers, scales, weave, pits,
   inclusions, layered boundaries, and repeated structural units.
3. Microstructure: fine roughness, scratches, fine pores, microfacets,
   fine fibers, local slopes, and spatially varying surface features.
4. Sub-microstructure: structures below ordinary direct geometric resolution
   that may affect optical or mechanical behavior. Include only when relevant
   and supported by evidence or a justified model.

These are descriptive scales, not universal fixed size bands. Their boundaries
depend on the material, physical feature size, viewing distance, wavelength,
sampling, and intended model.

## 4. Required causal chain

Material identity and processing
-> internal and surface structure
-> local geometry and statistical distribution
-> interaction with light, contact, fluids, and environment
-> state and temporal evolution
-> renderer or simulation representation
-> camera-space result
-> validation and approval.

A visible texture must not be treated as proof of a physical mechanism.

## 5. Surface record requirements

Each production-critical surface feature must identify, where applicable:

- Stable feature or record ID.
- Material ID and material variant.
- Physical feature and its causal origin.
- Scale and units.
- Geometry, orientation, density, distribution, and spatial correlation.
- Whether the description is measured, source-derived, estimated, assumed,
  procedural, or unknown.
- Source, measurement method, uncertainty, and validity range.
- Dependencies on processing, wear, moisture, temperature, or damage.
- Renderer representation and limitations.
- Intended camera-distance range and sampling constraints.
- Validation method, result, reviewer, and status.

Not every field applies to every feature. Inapplicable fields must be marked
N/A with a reason. Missing knowledge must be marked UNKNOWN, not silently
replaced with invented values.

## 6. Multiple reflection

Surface structure influences light transport, but it does not itself implement
multiple-bounce light transport.

The rendering pipeline must distinguish:

- Surface reflection and transmission at an interface.
- Internal scattering or transport within a material.
- Multiple reflections between surfaces.
- Multiple scattering within a medium.
- Direct illumination, indirect illumination, and emissive contributions.
- Measured material response versus a fitted or approximate model.

Use a physically appropriate renderer and model for the target. State whether
the result uses path tracing, another global-illumination method, an analytic
approximation, or a hybrid.

Do not assume that screen-space reflections, reflection probes, ambient
occlusion, normal maps, or a single environment lookup reproduce all bounces.

## 7. Energy and consistency

For passive systems, reflected, transmitted, absorbed, and otherwise physically
accounted energy must be consistent with the chosen model and its assumptions.
Do not allow passive surfaces to create energy.

For wavelength-dependent transport, evaluate the relevant spectral model or
document the approximation. For layered, translucent, or participating media,
use a model appropriate to the structure and thickness.

Do not bake indirect illumination into albedo and then add the same illumination
again. If an artistic approximation is intentionally used, label it as such
and validate the resulting shot.

## 8. Geometry and statistical integrity

Surface features must have plausible dimensions, spatial distributions,
correlations, and orientations for the material and process that produced them.

Prevent:
- Identical repeated defects that reveal a procedural pattern.
- Unjustified random noise with no physical scale or correlation.
- Contradictory feature sizes between geometry, normal, and displacement maps.
- Impossible intersections, detached surface layers, or floating fibers.
- Features that change scale with camera distance without a defined LOD rule.
- Double representation of the same geometry in multiple map types.
- Surface detail that contradicts known material structure.

Procedural variation is a representation technique, not evidence of a natural
physical distribution.

## 9. Evidence and uncertainty

Use the project evidence classifications where applicable:
direct_canon, derived_canon, traditional_interpretation,
historical_reconstruction, scientific_fact, engineering_reference,
visual_reconstruction, directorial_choice, production_choice, unknown,
uncertain.

A material's appearance in a traditional depiction does not independently
prove its microscopic structure or optical parameters.

Keep sourced facts, physical deductions, fitted values, artistic choices, and
unknowns distinguishable. Preserve conflicting sources rather than silently
selecting a convenient answer.

## 10. Production gate

A surface definition is not production-validated until:
- Its scope and material identity are linked.
- Critical claims have traceable evidence or explicit uncertainty.
- Scale and representation choices are documented.
- Relevant rendering and interaction tests have been run.
- Energy, sampling, and temporal consistency have been checked where applicable.
- Results are reviewed in representative shots.
- Known limitations and approvals are recorded.

A successful file validator is structural evidence only. It is not scientific
certification or proof of renderer correctness.
