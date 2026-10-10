# SURFACE STRUCTURE MASTER STANDARD

## Purpose

Define the physical organization of material surfaces and near-surface
structure for the RAMAYAN production. The goal is physically credible
appearance, stable scale, coherent interactions, traceable evidence, and
repeatable production results.

Surface structure is not merely texture decoration. It may affect silhouette,
parallax, local normals, occlusion, reflection, transmission, scattering,
contact, wear, fluid interaction, and temporal behavior.

## Authority boundaries

- MATERIALS/02_MATERIAL_DATABASE owns material identity, composition,
  variants, origin, processing evidence, and material-specific records.
- MATERIALS/03_PHYSICS owns physical properties, constitutive models,
  numerical models, calibration, and physical validity.
- MATERIALS/04_SURFACE_STRUCTURE owns spatial structure, morphology,
  feature scales, spatial statistics, structural defects, and the mapping
  from physical structure to digital representation.
- Behavior and state folders own the processes and state transitions within
  their defined scopes.
- The renderer owns actual light transport execution.
- Continuity and QA own approved shot continuity and production acceptance.

A folder's existence does not prove its contents are complete. Missing
dependencies must be recorded explicitly.

## Four structural scales

1. MACRO: overall form, curvature, folds, waviness, large defects, broad
   ridges, cracks, and features affecting silhouette.
2. MEDIUM: grains, pores, fibers, weave, pits, inclusions, veins, scales,
   layers, and other intermediate structural units.
3. MICRO: fine asperities, scratches, small pores, microgeometry, local
   slopes, fine fibers, and structure affecting unresolved surface response.
4. SUB-MICRO: below-direct-resolution structure that matters to optical,
   mechanical, chemical, thermal, or fluid behavior.

These are functional categories, not universal fixed size ranges. Their
boundaries depend on material, physical feature size, wavelength, camera,
sampling, and representation.

## Mandatory causal chain

Material identity and processing
-> physical structure
-> feature geometry and statistics
-> optical/mechanical/fluid/thermal interaction
-> environmental and temporal state
-> digital representation
-> renderer or simulation
-> camera-space result
-> validation
-> approval.

Do not infer a physical cause from visual similarity alone.

## Material-specific record requirements

Every production-critical feature must link to:
- A stable feature ID.
- A material ID and, where applicable, variant ID.
- Physical scale and units.
- A causal hypothesis or an explicit UNKNOWN status.
- Evidence and source location.
- Measured, derived, estimated, assumed, or artistic status.
- Uncertainty and applicability limits.
- Spatial distribution and correlation.
- Representation choice and renderer limitations.
- Validation method, results, and approval scope.

Use N/A only when a field genuinely does not apply and the reason is stated.
UNKNOWN means the information is not established. Neither status is a pass.

## Multiple reflection

Structure definition and light transport implementation are separate
responsibilities. This folder defines the structures that affect transport
and the tests needed to evaluate them. It cannot make a renderer implement
multiple reflection merely by documenting it.

Record the chosen transport method, supported effects, approximations,
known omissions, energy-accounting assumptions, and test evidence.

## Physical consistency

Do not permit:
- Unsupported feature scales or impossible topology.
- Contradictory geometry, displacement, normal, and roughness descriptions.
- Accidental double-counting of the same physical feature or illumination.
- Passive material models that violate their applicable energy constraints.
- A normal map being described as actual geometry.
- Ambient occlusion being described as complete global illumination.
- Reflection probes or screen-space methods being described as complete
  arbitrary-scene multi-bounce transport.
- Unjustified procedural repetition or scale changes.
- Unsupported microscopic composition claims.

## Evidence classifications

Use project classifications where applicable:
direct_canon, derived_canon, traditional_interpretation,
historical_reconstruction, scientific_fact, engineering_reference,
visual_reconstruction, directorial_choice, production_choice, unknown,
uncertain.

A canonical description of an object's appearance does not automatically
establish its microscopic structure or optical constants.

## Acceptance states

STRUCTURAL_PASS: required files and sections exist.
EVIDENCE_REVIEWED: critical claims have traceable supporting evidence.
PHYSICAL_REVIEWED: applicable physical constraints and assumptions checked.
RENDERER_TESTED: implementation tested under documented conditions.
SHOT_APPROVED: accepted for a defined production scope.

These states are separate. Never promote one state into another automatically.

## Change control

Record changes to feature definitions, scale, distribution, representation,
renderer settings, and approval. Keep prior approved versions and test results.
Re-run affected tests when a change can invalidate earlier results.
