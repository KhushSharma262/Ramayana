# SURFACE FEATURE RECORD STANDARD

## Required record template

Copy this template for each production-critical surface feature or coherent
feature family. Use stable IDs rather than relying on filenames as identities.

### Identity
- feature_record_id:
- material_id:
- material_variant_id:
- feature_name:
- feature_class:
- record_version:
- owner:
- status:

### Evidence
- evidence_classification:
- source_reference:
- source_location_or_page:
- measurement_or_observation_method:
- source_date_or_version:
- evidence_strength:
- conflicting_evidence:
- confidence:
- unresolved_questions:

### Physical definition
- physical_origin:
- causal_process:
- physical_scale:
- units:
- dimensional_range:
- orientation_or_direction:
- spatial_distribution:
- spatial_correlation:
- density_or_spacing:
- geometry_or_topology:
- internal_or_surface_location:
- anisotropy:
- layer_relationships:
- feature_interactions:

### Uncertainty and applicability
- measured_or_derived_or_estimated_or_assumed:
- value_uncertainty:
- model_uncertainty:
- validity_range:
- environmental_conditions:
- material_state:
- applicability_limits:
- unsupported_parameters:

### Interactions
- optical_effect:
- mechanical_effect:
- fluid_or_moisture_effect:
- thermal_or_chemical_effect:
- wear_or_damage_effect:
- temporal_evolution:
- relevant_physics_model:

### Digital representation
- representation_type:
- geometry_or_texture_resolution:
- physical_scale_mapping:
- displacement_or_normal_relationship:
- filtering_and_mip_policy:
- lod_policy:
- renderer_dependency:
- approximation_type:
- known_artifacts:
- double_counting_risks:

### Validation
- validation_method:
- reference_measurement_or_image:
- test_scene:
- test_conditions:
- quantitative_metrics:
- visual_review:
- failure_conditions:
- test_result:
- reviewer:
- approval_status:
- approved_version:
- remaining_risks:

## Field rules

Use SI units where applicable and record any conversion. Do not assign fake
precision to estimates. A value derived from another model must retain the
source and assumptions of that derivation.

UNKNOWN means the value or mechanism is not established. N/A means the field
does not apply, with a reason. These statuses are not interchangeable.

A reference image alone rarely establishes physical dimensions, roughness
statistics, refractive properties, or subsurface structure. Record what it
actually supports.

A record can be structurally valid while scientifically incomplete. Approval
must depend on the intended use and the evidence required for that use.
