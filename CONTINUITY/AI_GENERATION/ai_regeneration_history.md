# AI REGENERATION HISTORY

## PURPOSE

Records every regeneration attempt made during AI production.

A regeneration occurs when an existing generation is:

- regenerated
- retried
- repaired
- corrected
- continued
- reproduced
- replaced
- extended
- re-rendered
- re-generated with different parameters
- re-generated with a different model
- re-generated with different references
- re-generated after a continuity error
- re-generated after a QA failure
- re-generated after a user-requested change


This file records the relationship between:

ORIGINAL GENERATION
→ REGENERATION REQUEST
→ REGENERATION REASON
→ CHANGED CONDITIONS
→ REGENERATED OUTPUT
→ VALIDATION
→ APPROVAL
→ NEXT ACTION


It does not replace:

ai_generation_history.md

ai_generation_state.md

ai_generation_version.md

ai_generation_parameters.md

ai_previous_output.md

ai_change_history.md


Those files retain their respective authoritative information.


## CORE PRINCIPLE

A regeneration is NOT a reset.

A regeneration must preserve every valid authoritative state that was not explicitly changed.

Therefore:

ORIGINAL VALID STATE
+
AUTHORIZED CHANGE
=
REGENERATED STATE


Not:

REGENERATE FROM SCRATCH
=
FORGET PREVIOUS STATE


The regeneration must preserve continuity unless an authorized state transition requires something to change.


## REGENERATION_ID

regeneration_id:

regeneration_version:

regeneration_event_number:

regeneration_timestamp:

regeneration_timezone:


Every regeneration attempt must have a unique identifier.


## ORIGINAL_GENERATION

original_generation_id:

original_generation_version:

original_output_id:

original_output_version:

original_asset_id:

original_asset_type:

original_generation_timestamp:

original_generation_status:

original_approval_status:


The original generation must remain identifiable even if it is later rejected or superseded.


## REGENERATION_RELATIONSHIP

relationship_type:

regenerated_from:

regeneration_parent:

regeneration_child:

lineage_id:

branch_id:

replacement_relationship:

correction_relationship:

continuation_relationship:


Possible relationship types:

retry

correction

repair

replacement

continuation

extension

reproduction

restoration

parameter_change

model_change

reference_change

prompt_change

state_change

technical_recovery

user_requested_revision

qa_correction

continuity_correction

other


## REGENERATION_SCOPE

scope:

frame

shot

scene

sequence

episode

asset

character_asset

costume_asset

prop_asset

weapon_asset

animal_asset

location_asset

environment_asset

animation

audio

vfx

other


regeneration_scope_reference:

affected_components:


Only the affected production scope should be regenerated when practical.


## REGENERATION_REASON

regeneration_reason:

primary_reason:

secondary_reason:

requested_by:

request_source:

request_timestamp:


Possible reasons include:

identity_error

appearance_error

anatomy_error

costume_error

jewelry_error

prop_error

weapon_error

animal_error

location_error

environment_error

spatial_error

performance_error

physiology_error

human_realism_error

physics_error

timeline_error

knowledge_error

relationship_error

transformation_error

camera_error

lighting_error

audio_error

vfx_error

canon_error

research_error

reference_error

prompt_error

model_error

parameter_error

technical_error

ai_artifact

continuity_drift

state_reset

persistent_state_failure

user_revision

production_revision

other


## ERROR_TRIGGER

triggered_by:

trigger_generation_id:

trigger_output_id:

trigger_error_id:

trigger_qa_record:

trigger_change_record:

trigger_user_instruction:

trigger_continuity_state:

trigger_reference:


The regeneration must remain traceable to the event that caused it.


## FAILURE_CLASSIFICATION

failure_present:

failure_type:

failure_description:

failure_severity:

failure_scope:

failure_first_detected:

failure_detected_by:


Possible severity:

critical

high

medium

low

informational


## ORIGINAL_STATE

original_continuity_state:

original_continuity_state_version:

original_generation_state:

original_generation_state_version:

original_state_timestamp:


The original authoritative state must be preserved.


## TARGET_STATE

target_continuity_state:

target_continuity_state_version:

target_generation_state:

target_generation_state_version:

target_state_timestamp:

state_change_required:

state_change_reference:


The target state must be explicitly identified when the regeneration is intended to change state.


## PRESERVED_STATE

preserved_identity:

preserved_appearance:

preserved_age:

preserved_costume:

preserved_jewelry:

preserved_props:

preserved_weapons:

preserved_animals:

preserved_location:

preserved_environment:

preserved_spatial_state:

preserved_performance:

preserved_physiology:

preserved_human_realism:

preserved_physics:

preserved_timeline:

preserved_knowledge:

preserved_relationships:

preserved_transformation:

preserved_camera:

preserved_lighting:

preserved_audio:

preserved_vfx:


Every unaffected authoritative state must remain preserved.


## AUTHORIZED_CHANGES

authorized_changes:

changed_identity:

changed_appearance:

changed_costume:

changed_jewelry:

changed_props:

changed_weapons:

changed_animals:

changed_location:

changed_environment:

changed_spatial_state:

changed_performance:

changed_physiology:

changed_human_realism:

changed_physics:

changed_timeline:

changed_knowledge:

changed_relationships:

changed_transformation:

changed_camera:

changed_lighting:

changed_audio:

changed_vfx:


Only explicitly authorized changes may be introduced.


## UNAUTHORIZED_CHANGES

unauthorized_changes:

unexpected_identity_change:

unexpected_appearance_change:

unexpected_costume_change:

unexpected_prop_change:

unexpected_weapon_change:

unexpected_animal_change:

unexpected_location_change:

unexpected_environment_change:

unexpected_spatial_change:

unexpected_performance_change:

unexpected_physiology_change:

unexpected_physics_change:

unexpected_timeline_change:

unexpected_relationship_change:

unexpected_transformation:

unexpected_camera_change:

unexpected_lighting_change:

unexpected_audio_change:

unexpected_vfx_change:


Any unauthorized change must trigger validation.


## PERSISTENT_STATE

persistent_state_required: yes

injury:

healing:

scar:

blood:

dirt:

sweat:

wetness:

fatigue:

pain:

costume_damage:

costume_wear:

costume_stains:

prop_damage:

weapon_damage:

environment_damage:

environment_residue:

ownership:

knowledge:

relationship:

transformation:


Regeneration must not erase persistent consequences.


## RESET_DETECTION

reset_detection_required: yes

identity_reset:

appearance_reset:

costume_reset:

prop_reset:

weapon_reset:

location_reset:

environment_reset:

performance_reset:

physiology_reset:

timeline_reset:

damage_reset:

wear_reset:

ownership_reset:

knowledge_reset:

transformation_reset:


A reset is an error unless explicitly authorized.


## REGENERATION_STATE_TRANSITION

previous_state:

event:

required_change:

expected_consequence:

target_state:

transition_validated:


The regeneration must represent the correct state transition rather than merely produce a visually similar image.


## PREVIOUS_OUTPUT_REFERENCE

previous_output_reference:

previous_output_status:

previous_output_authority:

previous_output_valid_elements:

previous_output_invalid_elements:

previous_output_uncertain_elements:

previous_output_reuse_allowed:


Previous output must be treated as evidence, not as the source of truth.


## REFERENCE_ASSETS

previous_reference_set:

new_reference_set:

added_references:

removed_references:

replaced_references:

reference_change_reason:

reference_validation:

reference_conflicts:


A changed reference set must be explicitly recorded.


## IDENTITY_ANCHORS

previous_identity_anchor_set:

new_identity_anchor_set:

identity_anchor_change:

identity_anchor_reason:

identity_anchor_validation:


Identity anchors must remain stable unless an authorized identity change occurs.


## PROMPT

previous_prompt_id:

previous_prompt_version:

new_prompt_id:

new_prompt_version:

prompt_change:

prompt_change_reason:

prompt_validation:


Prompt changes must be traceable.


## MODEL

previous_model:

previous_model_version:

new_model:

new_model_version:

model_change:

model_change_reason:

model_compatibility:

model_validation:


Changing the model does not automatically authorize a continuity change.


## PARAMETERS

previous_parameter_set:

previous_parameter_version:

new_parameter_set:

new_parameter_version:

changed_parameters:

parameter_change_reason:

continuity_impact:

reproducibility_impact:


Only changed parameters should be changed when the regeneration is intended to isolate a particular problem.


## SEED

previous_seed:

new_seed:

seed_changed:

seed_change_reason:

seed_reproducibility:

seed_effect:


Changing the seed does not authorize changes to identity or continuity state.


## GENERATION_METHOD

generation_method:

generation_workflow:

generation_pipeline:

generation_mode:

generation_stage:

technical_environment:


## REGENERATION_ATTEMPT

attempt_number:

attempt_timestamp:

attempt_status:

execution_start:

execution_end:

execution_duration:

execution_environment:

execution_error:

execution_warning:


Every attempt must be recorded, including failed attempts when identifiable.


## OUTPUT

regenerated_output_id:

regenerated_output_version:

output_file:

output_format:

output_resolution:

output_duration:

output_frame_count:

output_frame_rate:

output_hash:

output_integrity:

output_timestamp:


## OUTPUT_COMPARISON

comparison_required: yes

original_output:

regenerated_output:

preserved_elements:

improved_elements:

changed_elements:

removed_elements:

new_elements:

unexpected_elements:

state_difference:

visual_difference:

performance_difference:

physics_difference:

human_realism_difference:


The comparison must distinguish intended correction from unintended variation.


## IDENTITY_COMPARISON

identity_match:

identity_similarity:

face_consistency:

body_consistency:

eye_consistency:

hair_consistency:

distinctive_features_consistency:

identity_drift:

identity_correction:


## COSTUME_COMPARISON

costume_identity_match:

material_match:

color_match:

pattern_match:

ornamentation_match:

damage_match:

wear_match:

dirt_match:

stain_match:

wetness_match:

drape_match:

fold_match:


## PROP_COMPARISON

prop_identity_match:

owner_match:

position_match:

orientation_match:

condition_match:

damage_match:

wear_match:

usage_state_match:


## SPATIAL_COMPARISON

position_match:

orientation_match:

gaze_match:

hand_position_match:

foot_position_match:

prop_position_match:

camera_position_match:

relative_distance_match:

contact_match:

blocking_match:


## PERFORMANCE_COMPARISON

action_match:

movement_phase_match:

gesture_match:

posture_match:

expression_match:

micro_expression_match:

listening_match:

reaction_match:

momentum_match:


## PHYSIOLOGY_COMPARISON

breathing_match:

blink_realism:

eye_movement_match:

muscle_tension_match:

weight_distribution_match:

balance_match:

fatigue_match:

pain_match:

physical_response_match:


## HUMAN_REALISM_COMPARISON

face_realism:

skin_realism:

eye_realism:

hand_realism:

finger_realism:

body_realism:

walking_realism:

movement_realism:

breathing_realism:

blink_realism:

posture_realism:

contact_realism:

cloth_realism:

hair_realism:

environment_response:

ai_artifact_comparison:


## PHYSICS_COMPARISON

gravity_match:

inertia_match:

momentum_match:

collision_match:

contact_match:

friction_match:

cloth_physics_match:

hair_physics_match:

water_physics_match:

fire_physics_match:

smoke_physics_match:

material_interaction_match:


## TIMELINE_COMPARISON

story_time_match:

world_time_match:

scene_time_match:

shot_time_match:

elapsed_time_match:

age_match:

state_duration_match:


## ENVIRONMENT_COMPARISON

weather_match:

temperature_match:

wind_match:

rain_match:

dust_match:

fog_match:

ground_match:

surface_match:

environment_damage_match:

environment_residue_match:


## CAMERA_COMPARISON

camera_position_match:

camera_orientation_match:

camera_height_match:

lens_match:

focal_length_match:

framing_match:

focus_match:

depth_of_field_match:

camera_motion_match:

camera_speed_match:


## LIGHTING_COMPARISON

light_source_match:

direction_match:

intensity_match:

color_temperature_match:

shadow_match:

reflection_match:

environment_response_match:


## AUDIO_COMPARISON

voice_match:

dialogue_match:

pronunciation_match:

speech_timing_match:

breathing_audio_match:

ambient_match:

foley_match:

music_match:

sfx_match:


## VFX_COMPARISON

effect_identity_match:

effect_position_match:

effect_motion_match:

effect_duration_match:

effect_intensity_match:

environment_interaction_match:

lighting_interaction_match:

end_state_match:


## REGENERATION_RESULT

regeneration_result:

successful_correction

successful_reproduction

successful_continuation

successful_repair

partial_success

failed

technically_successful_but_invalid

invalid

rejected


A visually improved output is not necessarily a successful regeneration.


## QA

qa_required: yes

qa_method:

automated_qa:

human_qa:

continuity_qa:

identity_qa:

canon_qa:

physics_qa:

human_realism_qa:

technical_qa:

qa_timestamp:

qa_reviewer:

qa_status:


## REGENERATION_QA

original_error_fixed:

target_state_reached:

unintended_changes_introduced:

persistent_state_preserved:

identity_preserved:

timeline_preserved:

spatial_continuity_preserved:

performance_preserved:

physics_preserved:

human_realism_preserved:

reference_constraints_preserved:

negative_constraints_preserved:


## NEW_ERRORS

new_error_present:

new_error_id:

new_error_type:

new_error_description:

new_error_severity:

new_error_location:

new_error_source:

new_error_requires_another_regeneration:


A regeneration that fixes one problem but introduces another must remain recorded as an unsuccessful or partial attempt as appropriate.


## ITERATION_CHAIN

iteration_chain_id:

attempt_01:

attempt_02:

attempt_03:

attempt_04:

attempt_05:

additional_attempts:


Every regeneration attempt belongs to one traceable chain when they originate from the same correction process.


## REGENERATION_LIMIT

regeneration_limit:

maximum_attempts:

attempt_count:

limit_reached:

limit_reason:

escalation_required:


Repeated failures must trigger escalation rather than uncontrolled regeneration.


## ESCALATION

escalation_required:

escalation_reason:

escalation_type:

escalated_to:

escalation_timestamp:

resolution:


Escalation may be required when the problem originates from:

model limitations

reference conflicts

missing continuity information

prompt conflicts

parameter incompatibility

identity instability

physics limitations

persistent state failure

unknown canonical information


## STOP_CONDITION

stop_condition:

stop_reason:

generation_blocked:

manual_review_required:

user_decision_required:


Generation must stop when continued regeneration would risk damaging authoritative continuity.


## APPROVAL

approval_status:

approval_type:

approved_output:

approved_generation:

approved_by:

approval_timestamp:

approval_scope:

approval_conditions:


Allowed values:

approved

conditionally_approved

rejected

changes_requested

locked

superseded

reopened


## CONDITIONAL_APPROVAL

conditional_approval:

conditions:

limitations:

allowed_use:

forbidden_use:

revalidation_required:

expiration:


## REJECTION

rejection_status:

rejection_reason:

rejection_category:

rejected_output:

rejected_by:

rejection_timestamp:

replacement_required:


Rejected regeneration outputs must not propagate into future production.


## SUPERSESSION

supersedes_generation:

superseded_by:

supersession_reason:

supersession_timestamp:

historical_record_preserved:


Supersession does not erase historical regeneration attempts.


## PROPAGATION

propagation_allowed:

propagation_status:

propagation_scope:

propagated_to:

propagation_timestamp:

propagation_validation:


Only approved state may propagate unless an explicit conditional exception exists.


## DOWNSTREAM_IMPACT

downstream_generations:

downstream_prompts:

downstream_references:

downstream_assets:

downstream_shots:

downstream_scenes:

downstream_sequences:

downstream_episodes:


## RETROACTIVE_ERROR

retroactive_error_detected:

discovery_timestamp:

discovered_by:

error_origin:

affected_historical_generation:

affected_regeneration:

affected_downstream_outputs:

continuity_impact:

correction_required:

history_preserved:

corrective_regeneration:


Historical regeneration attempts must remain preserved even after a later correction.


## ROLLBACK

rollback_required:

rollback_target:

rollback_reason:

rollback_scope:

rollback_validation:

rollback_approval:


Rollback must restore an approved state, not merely an earlier-looking image.


## RESTORATION

restoration_required:

restoration_source:

restoration_generation:

restoration_reason:

restoration_validation:

restoration_approval:


## REPRODUCTION

reproduction_requested:

original_generation:

original_model_available:

original_parameters_available:

original_prompt_available:

original_references_available:

original_seed_available:

workflow_available:

reproduction_possible:

reproduction_result:

reproduction_difference:


An exact reproduction may be impossible after model or toolchain changes.

The historical output remains valid as a historical record.


## MODEL_CHANGE_REGENERATION

model_change_regeneration:

previous_model:

new_model:

compatibility_test:

identity_test:

motion_test:

physics_test:

human_realism_test:

reference_test:

continuity_test:

approval:


A model change must not silently rewrite established visual identity or state.


## PARAMETER_ISOLATION

parameter_isolation_required:

parameter_under_test:

parameters_locked:

variables_allowed_to_change:

expected_effect:

observed_effect:


Where possible, regeneration should change only the variables necessary to diagnose or correct the problem.


## REFERENCE_ISOLATION

reference_isolation_required:

reference_under_test:

references_locked:

reference_changed:

expected_effect:

observed_effect:


## PROMPT_ISOLATION

prompt_isolation_required:

constraint_under_test:

prompt_locked_sections:

prompt_changed_sections:

expected_effect:

observed_effect:


## ERROR_PROPAGATION

error_propagation_detected:

origin_generation:

origin_error:

propagated_generations:

propagated_assets:

propagated_prompts:

propagated_references:

containment_required:

correction_scope:


## CONTINUITY_DRIFT

continuity_drift_detected:

drift_type:

first_detected_generation:

drift_origin:

affected_generations:

affected_assets:

drift_severity:

correction_required:


## IDENTITY_DRIFT

identity_drift_detected:

identity_drift_type:

first_detected_generation:

affected_outputs:

affected_assets:

identity_recovery_possible:

recovery_method:


## STATE_DRIFT

state_drift_detected:

state_drift_type:

expected_state:

generated_state:

first_detected_generation:

affected_outputs:

correction_required:


## REGENERATION_HISTORY_INTEGRITY

history_integrity:

missing_attempts:

duplicate_attempts:

broken_lineage:

broken_parent_reference:

broken_child_reference:

broken_output_reference:

broken_approval_reference:

broken_state_reference:

integrity_errors:

integrity_status:


## IMMUTABILITY

history_entry_locked:

lock_reason:

locked_timestamp:

locked_by:

historical_record_immutable:


Historical regeneration records should be immutable after finalization.


## AUDIT

audit_required: yes

request_audit:

reason_audit:

state_audit:

prompt_audit:

reference_audit:

model_audit:

parameter_audit:

execution_audit:

output_audit:

qa_audit:

approval_audit:

propagation_audit:

correction_audit:


## TRACEABILITY

traceability_required: yes

original_generation_trace:

continuity_trace:

state_trace:

prompt_trace:

reference_trace:

model_trace:

parameter_trace:

output_trace:

qa_trace:

approval_trace:

downstream_trace:


Every regeneration must be traceable back to the original generation and authoritative continuity state.


## FINAL REGENERATION RECORD

regeneration_record_complete:

regeneration_id:

original_generation:

reason:

trigger:

original_state:

target_state:

preserved_state:

authorized_changes:

references:

prompt:

model:

parameters:

attempt:

output:

comparison:

qa:

errors:

approval:

propagation:

downstream_impact:

history_integrity:


## FINAL RULE

REGENERATION IS A CONTROLLED STATE TRANSITION.

It must never be treated as:

"generate the same thing again."


A regeneration means:

TAKE THE LAST VALID AUTHORITATIVE STATE
→ IDENTIFY THE SPECIFIC FAILURE OR REQUIRED CHANGE
→ PRESERVE EVERYTHING THAT MUST REMAIN
→ CHANGE ONLY WHAT IS AUTHORIZED
→ GENERATE AGAIN
→ COMPARE AGAINST THE AUTHORITATIVE STATE
→ VALIDATE AGAIN
→ APPROVE OR REJECT
→ RECORD THE RESULT
→ PROPAGATE ONLY APPROVED STATE


The following must NEVER happen silently:

identity reset

face replacement

body-proportion drift

age reset

costume reset

jewelry reset

injury reset

healing reset

scar disappearance

blood disappearance

dirt disappearance

sweat disappearance

fatigue disappearance

prop replacement

weapon replacement

ownership change

location reset

environment reset

spatial reset

performance reset

timeline reset

knowledge reset

relationship reset

transformation reset

physics reset


A regeneration may change only what the regeneration request authorizes or what is required to correct the identified failure.

If a regeneration introduces an unrelated continuity change:

THE NEW CHANGE IS AN ERROR.

If repeated regeneration cannot preserve continuity:

STOP REGENERATION AND ESCALATE.

If an earlier generation is later discovered to be wrong:

PRESERVE THE HISTORICAL RECORD
+
IDENTIFY THE DEPENDENCY CHAIN
+
CORRECT DOWNSTREAM STATE
+
DO NOT SILENTLY REWRITE HISTORY.


The authoritative hierarchy remains:

CANON / RESEARCH
→ CONTINUITY STATE
→ GENERATION STATE
→ REGENERATION CONSTRAINTS
→ AI GENERATION
→ QA
→ APPROVAL


The regeneration process exists to repair or continue the production state.

It must never redefine the production state by accident.
