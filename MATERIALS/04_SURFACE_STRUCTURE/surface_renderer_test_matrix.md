# SURFACE RENDERER TEST MATRIX

## Purpose

Record actual renderer tests. Documentation alone is not evidence that a
renderer implements the desired behavior.

## Test record template

- test_id:
- date:
- renderer_name:
- renderer_version:
- hardware_or_execution_context:
- material_id:
- feature_record_ids:
- scene_version:
- test_hypothesis:
- physical_mechanism:
- reference_data:
- lighting_setup:
- camera_setup:
- color_management:
- sampling_settings:
- denoising_settings:
- representation_settings:
- expected_result:
- measured_result:
- quantitative_metrics:
- observed_artifacts:
- uncertainty:
- pass_fail_inconclusive:
- reviewer:
- linked_issue:
- approved_scope:

## Core test families

### Geometry and scale
- Silhouette and parallax.
- Contact and self-shadowing.
- Macro-to-micro scale consistency.
- Geometry/displacement/normal overlap.
- UV seams and directional mapping.

### Fine structure
- Grazing highlights.
- Multiple light sizes.
- Camera movement and temporal stability.
- Texture filtering and LOD.
- Aliasing and denoising.

### Light transport
- Controlled diffuse and reflective surfaces.
- Concave interreflection.
- Bright/dark neighboring surfaces.
- Layered or transmissive samples where relevant.
- Off-screen and hidden reflecting geometry.
- Baked versus dynamic illumination.
- Applicable energy-consistency tests.

### State and continuity
- Relevant wet/dry, worn/unworn, clean/contaminated, or damaged/intact states.
- Transitions over time.
- Repeated shots and lighting changes.
- Material identity and scale consistency.

## Test interpretation

A pass applies only to the recorded renderer, version, settings, scene,
material, and conditions. It does not prove universal physical correctness.

A visual match can be caused by compensating errors. Use quantitative
measurements or controlled comparisons where possible.

Record inconclusive results as INCONCLUSIVE, not PASS.

## Approval gate

Critical failures block approval unless a documented production authority
accepts a clearly scoped exception. Preserve the failed result, reason,
mitigation, and affected shots.
