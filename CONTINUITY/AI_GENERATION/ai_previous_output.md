# AI PREVIOUS OUTPUT

## PURPOSE

Defines the previous AI-generated output available to the current generation as a reference.

This file exists to establish:

- what the previous output was
- which generation produced it
- whether it was approved
- which parts are valid
- which parts contain errors
- which parts may be inherited
- which parts must not be inherited
- whether the output can safely influence the next generation
- whether the previous output agrees with the authoritative continuity state

The previous AI output is a reference.

It is NOT automatically the source of truth.

It is NOT automatically canon.

It is NOT automatically continuity-authoritative.

It is NOT automatically safe to propagate.


## CORE PRINCIPLE

The previous generated output must never become authoritative merely because it is the most recent output.

The next generation must resolve its required state from the authoritative continuity system first.

The previous output may then be used as a validated visual, temporal, spatial, performance, or technical reference where appropriate.


## OUTPUT_IDENTITY

previous_output_id:

previous_generation_id:

previous_asset_id:

previous_asset_type:

previous_generation_version:

previous_output_timestamp:

previous_output_status:

previous_output_location:

previous_output_hash:


## AUTHORITATIVE_STATE_REFERENCE

authoritative_state_reference:

authoritative_state_version:

authoritative_state_timestamp:

authoritative_state_status:

authoritative_state_approval:


The authoritative continuity state takes precedence over the previous AI output whenever they conflict.


## PREVIOUS_OUTPUT_STATUS

Allowed previous_output_status values:

generated

under_review

approved

conditionally_approved

rejected

superseded

archived

invalid

unknown


Only:

approved

or

conditionally_approved

outputs may be used as validated production references.


## OUTPUT_VALIDITY

output_validity:

valid

conditionally_valid

invalid

unknown

requires_review


Validity must be determined from validation and approval.

Recency does not establish validity.


## OUTPUT_APPROVAL

approval_status:

approved_by:

approval_timestamp:

approval_reference:

approval_scope:

approval_notes:


Approval scope must be explicit.

An output approved for one purpose must not automatically be treated as approved for every purpose.


## OUTPUT_LINEAGE

parent_generation_id:

parent_generation_version:

generation_lineage:

generation_branch:

generation_branch_status:


The previous output must remain traceable to its generation lineage.


## PREVIOUS_STATE_REFERENCE

previous_state_reference:

previous_state_version:

previous_state_timestamp:

previous_state_status:


The state represented by the previous output must be compared with the authoritative state.

The visible output must never be assumed to perfectly represent the intended state.


## OUTPUT_STATE_COMPARISON

comparison_required: yes

comparison_reference:

comparison_method:

comparison_timestamp:

comparison_status:


Compare the previous output against:

- authoritative continuity state
- identity anchors
- timeline state
- spatial state
- performance state
- physiological state
- costume state
- prop state
- environment state
- physics state
- camera state
- lighting state
- audio state
- VFX state
- applicable human-realism state


## IDENTITY_VALIDITY

identity_validation_status:

identity_reference:

identity_anchor_version:

face_identity_valid:

body_identity_valid:

eye_identity_valid:

hair_identity_valid:

skin_identity_valid:

distinctive_features_valid:

voice_identity_valid:

movement_identity_valid:


Any identity failure must prevent the affected identity information from propagating.


## APPEARANCE_VALIDITY

appearance_validation_status:

appearance_reference:

appearance_matches_authoritative_state:

appearance_deviations:

appearance_deviation_severity:


Appearance may differ because of:

- camera
- lighting
- expression
- pose
- environmental interaction
- temporary physical state

These must not automatically be treated as identity failures.


## COSTUME_VALIDITY

costume_validation_status:

costume_reference:

costume_identity_valid:

costume_condition_valid:

costume_damage_valid:

costume_wear_valid:

costume_fading_valid:

costume_stain_valid:

costume_wetness_valid:

costume_repair_state_valid:


The previous output must not be used to restore an earlier costume condition.

Persistent costume state must come from authoritative continuity state.


## PROP_VALIDITY

prop_validation_status:

prop_reference:

prop_identity_valid:

prop_location_valid:

prop_position_valid:

prop_orientation_valid:

prop_owner_valid:

prop_holder_valid:

prop_damage_valid:

prop_wear_valid:

prop_repair_valid:


A previous output containing an incorrect prop state must not propagate that incorrect state.


## WEAPON_VALIDITY

weapon_validation_status:

weapon_reference:

weapon_identity_valid:

weapon_location_valid:

weapon_position_valid:

weapon_orientation_valid:

weapon_owner_valid:

weapon_holder_valid:

weapon_damage_valid:

weapon_wear_valid:

weapon_repair_valid:


## ANIMAL_VALIDITY

animal_validation_status:

animal_reference:

animal_identity_valid:

animal_position_valid:

animal_orientation_valid:

animal_motion_valid:

animal_health_valid:

animal_behavior_valid:


## LOCATION_VALIDITY

location_validation_status:

location_reference:

location_geometry_valid:

location_layout_valid:

location_material_state_valid:

location_damage_valid:

location_repair_valid:

location_cleanliness_valid:

location_weathering_valid:


## ENVIRONMENT_VALIDITY

environment_validation_status:

environment_reference:

weather_valid:

temperature_valid:

humidity_valid:

wind_valid:

precipitation_valid:

dust_valid:

smoke_valid:

fog_valid:

ground_condition_valid:

surface_condition_valid:

environment_activity_valid:

environment_residue_valid:


The previous output must not be used to reset environmental conditions.


## SPATIAL_VALIDITY

spatial_validation_status:

spatial_reference:

coordinate_system:

character_positions_valid:

prop_positions_valid:

weapon_positions_valid:

animal_positions_valid:

camera_position_valid:

relative_positions_valid:

distances_valid:

orientations_valid:

gaze_directions_valid:

hand_positions_valid:

foot_positions_valid:

contact_relationships_valid:

blocking_relationships_valid:

movement_phase_valid:


Spatial information must be validated before being propagated.


## PERFORMANCE_VALIDITY

performance_validation_status:

performance_reference:

current_action_valid:

previous_action_valid:

next_action_valid:

gesture_valid:

gaze_valid:

facial_expression_valid:

micro_expression_valid:

posture_valid:

reaction_valid:

listening_state_valid:

hand_state_valid:

walking_state_valid:

contact_state_valid:

performance_momentum_valid:


The previous output must not be used to reset an ongoing performance to a neutral state.


## PHYSIOLOGICAL_VALIDITY

physiological_validation_status:

breathing_valid:

blink_valid:

eye_movement_valid:

muscle_tension_valid:

weight_distribution_valid:

balance_valid:

body_temperature_cues_valid:

fatigue_valid:

pain_valid:

sweat_valid:

tear_valid:

physical_recovery_valid:


Physiological states must be inherited from authoritative continuity when the previous output is incomplete or incorrect.


## HUMAN_REALISM_VALIDITY

human_realism_validation_status:

breathing_realism:

blink_realism:

eye_movement_realism:

facial_micro_expression_realism:

hand_realism:

finger_realism:

posture_realism:

weight_shift_realism:

balance_realism:

walking_realism:

contact_realism:

cloth_motion_realism:

hair_motion_realism:

environmental_response_realism:


A visually attractive output may still fail human-realism validation.


## PHYSICS_VALIDITY

physics_validation_status:

gravity_valid:

inertia_valid:

momentum_valid:

collision_valid:

contact_valid:

friction_valid:

cloth_physics_valid:

hair_physics_valid:

water_physics_valid:

fire_physics_valid:

smoke_physics_valid:

material_interaction_valid:


## TIMELINE_VALIDITY

timeline_validation_status:

story_time_valid:

world_time_valid:

scene_time_valid:

shot_time_valid:

frame_time_valid:

elapsed_time_valid:

elapsed_time_since_event_valid:

age_state_valid:

duration_state_valid:


The previous output must not introduce a timeline reset.


## KNOWLEDGE_VALIDITY

knowledge_validation_status:

known_information_valid:

unknown_information_valid:

newly_acquired_information_valid:

knowledge_timing_valid:


The previous output must not be used to propagate information the entity should not yet possess.


## RELATIONSHIP_VALIDITY

relationship_validation_status:

relationship_state_valid:

ownership_state_valid:

possession_state_valid:

social_relationship_state_valid:

relationship_timing_valid:


## TRANSFORMATION_VALIDITY

transformation_validation_status:

base_form_valid:

current_form_valid:

transformation_stage_valid:

transformation_duration_valid:

transformation_cause_valid:

transformation_consequences_valid:

end_state_valid:


A previous output must not be used to invent a transformation stage that is not established by continuity.


## CAMERA_VALIDITY

camera_validation_status:

camera_reference:

camera_position_valid:

camera_orientation_valid:

camera_height_valid:

camera_distance_valid:

camera_framing_valid:

camera_lens_valid:

focus_valid:

camera_motion_valid:

camera_speed_valid:

camera_acceleration_valid:


## LIGHTING_VALIDITY

lighting_validation_status:

light_sources_valid:

light_direction_valid:

light_intensity_valid:

light_color_valid:

shadow_state_valid:

natural_light_valid:

firelight_valid:

moonlight_valid:

divine_light_valid:

lighting_transition_valid:


## AUDIO_VALIDITY

audio_validation_status:

voice_identity_valid:

speech_valid:

speech_rhythm_valid:

speech_speed_valid:

breathing_audio_valid:

dialogue_valid:

ambient_audio_valid:

foley_valid:

music_valid:

sfx_valid:

silence_valid:

spatial_audio_valid:


## VFX_VALIDITY

vfx_validation_status:

effect_identity_valid:

effect_position_valid:

effect_motion_valid:

effect_duration_valid:

effect_intensity_valid:

environment_response_valid:

lighting_response_valid:

shadow_response_valid:

reflection_response_valid:

end_state_valid:


## ERROR_STATE

error_present:

error_ids:

error_count:

error_types:

error_severity:

error_description:

error_origin:

error_detected_timestamp:


Known errors must be explicitly recorded.

Unknown does not mean correct.


## APPROVED_ELEMENTS

approved_elements:

approved_identity_elements:

approved_appearance_elements:

approved_costume_elements:

approved_prop_elements:

approved_spatial_elements:

approved_performance_elements:

approved_physiological_elements:

approved_environment_elements:

approved_physics_elements:

approved_camera_elements:

approved_lighting_elements:

approved_audio_elements:

approved_vfx_elements:


Only validated elements may be placed in approved_elements.


## REJECTED_ELEMENTS

rejected_elements:

rejected_identity_elements:

rejected_appearance_elements:

rejected_costume_elements:

rejected_prop_elements:

rejected_spatial_elements:

rejected_performance_elements:

rejected_physiological_elements:

rejected_environment_elements:

rejected_physics_elements:

rejected_camera_elements:

rejected_lighting_elements:

rejected_audio_elements:

rejected_vfx_elements:


Rejected elements must never become authoritative inheritance sources.


## INHERITABLE_ELEMENTS

inheritable_elements:

inherit_identity:

inherit_appearance:

inherit_costume:

inherit_prop:

inherit_weapon:

inherit_animal:

inherit_location:

inherit_environment:

inherit_spatial:

inherit_performance:

inherit_physiology:

inherit_timeline:

inherit_physics:

inherit_camera:

inherit_lighting:

inherit_audio:

inherit_vfx:


Each inheritance decision must be based on validation.


## NON_INHERITABLE_ELEMENTS

non_inheritable_elements:

do_not_inherit_identity:

do_not_inherit_appearance:

do_not_inherit_costume:

do_not_inherit_prop:

do_not_inherit_weapon:

do_not_inherit_animal:

do_not_inherit_location:

do_not_inherit_environment:

do_not_inherit_spatial:

do_not_inherit_performance:

do_not_inherit_physiology:

do_not_inherit_timeline:

do_not_inherit_physics:

do_not_inherit_camera:

do_not_inherit_lighting:

do_not_inherit_audio:

do_not_inherit_vfx:


Any rejected or invalid element must be explicitly excluded from inheritance.


## REFERENCE_ROLE

previous_output_reference_role:

Allowed roles:

visual_reference

identity_reference

motion_reference

performance_reference

spatial_reference

camera_reference

lighting_reference

audio_reference

vfx_reference

technical_reference

comparison_reference

diagnostic_reference

none


The role must be explicitly defined.

A previous output may be valid for one reference role but invalid for another.


## REFERENCE_RESTRICTIONS

The previous output must not be used as:

canon_reference

authoritative_continuity_source

unvalidated_identity_source

unvalidated_state_source


unless it has independently passed the required validation and approval.


## OUTPUT_DIFFERENCE

difference_from_authoritative_state:

difference_from_previous_generation:

difference_type:

difference_scope:

difference_is_intentional:

difference_is_approved:


Differences must be classified rather than silently accepted.


## NATURAL_VARIATION

natural_variation_detected:

variation_type:

variation_reference:

variation_within_limits:

variation_affects_identity:

variation_affects_continuity:


Natural variation within approved limits is not automatically an error.

Variation outside approved limits must be evaluated.


## PERSISTENT_STATE_CHECK

persistent_state_validation_required: yes

injury_persistence:

healing_persistence:

scar_persistence:

blood_persistence:

dirt_persistence:

sweat_persistence:

wetness_persistence:

fatigue_persistence:

costume_damage_persistence:

costume_wear_persistence:

costume_fading_persistence:

stain_persistence:

prop_damage_persistence:

weapon_damage_persistence:

environmental_damage_persistence:

environmental_residue_persistence:

ownership_persistence:

knowledge_persistence:

relationship_persistence:

transformation_persistence:

age_persistence:


No persistent state may be removed merely because it is absent from the previous output.


## RESET_DETECTION

reset_detected:

reset_type:

reset_field:

previous_authoritative_state:

previous_output_state:

reset_cause:

reset_authorized:

reset_valid:


If a reset has no valid cause:

reset_valid: no


## STATE_CONFLICT

state_conflict:

conflicting_state:

authoritative_state_value:

previous_output_value:

conflict_source:

conflict_resolution:

resolution_status:


The authoritative continuity state wins over the previous output.


## PREVIOUS_OUTPUT_RELIABILITY

reliability_status:

high

medium

low

invalid

unknown


reliability_reason:

validated_domains:

failed_domains:

uncertain_domains:


Reliability must be evaluated by domain.

A previous output can be reliable for camera framing while unreliable for identity, for example.


## REFERENCE_SAFETY

reference_safety_status:

safe

conditionally_safe

unsafe

unknown


reference_safety_reason:

safe_reference_domains:

unsafe_reference_domains:

required_corrections:


An unsafe previous output must not propagate its incorrect state.


## NEXT_GENERATION_USE

next_generation_use:

allowed

allowed_with_conditions

diagnostic_only

reference_only

prohibited


conditions:

required_corrections:

required_validation:


## PROPAGATION_PERMISSION

propagation_permission:

allowed

conditionally_allowed

blocked


Propagation is allowed only when all applicable inherited state has been validated.


## REGENERATION_REQUIREMENT

regeneration_required:

regeneration_reason:

affected_domains:

affected_assets:

minimum_regeneration_scope:

regeneration_history_reference:


If only the AI output is incorrect while the intended continuity state is correct, regeneration must correct the output without changing the intended story state.


## ERROR_PROPAGATION_PROTECTION

error_propagation_detected:

error_propagation_source:

error_propagation_target:

propagation_scope:

propagation_blocked:

correction_required:


A rejected or invalid previous output must never become the source of a new continuity error chain.


## RETROACTIVE_ERROR

retroactive_error_detected:

historical_error_reference:

discovery_timestamp:

original_output:

affected_downstream_outputs:

downstream_revalidation_required:

correction_status:


Historical outputs must remain preserved even when later determined to be incorrect.


## MODEL_CHANGE_CHECK

previous_model:

previous_model_version:

current_model:

current_model_version:

model_changed:

model_change_validation_required:

model_change_validation_status:


A model change requires revalidation of applicable identity, appearance, motion, temporal, and human-realism properties.


## REFERENCE_AS_AUTHORITY_CHECK

previous_output_used_as_authority:

authority_source:

authority_validation:

authority_approval:


If previous_output_used_as_authority is yes, an explicit authoritative continuity reference must also exist.


## FINAL_DECISION

previous_output_final_status:

inheritance_decision:

propagation_decision:

generation_decision:

validation_decision:

approval_decision:


## FINAL_RULE

The previous AI output is evidence of what was previously generated.

It is not automatically evidence of what SHOULD be generated.

The authoritative continuity state determines what SHOULD exist.

The previous output may help the AI reproduce:

- identity
- appearance
- motion
- performance
- spatial relationships
- camera
- lighting
- environment
- audio
- VFX

only when those elements have been validated.

The AI must never inherit an error simply because that error appeared in the previous generation.

The correct relationship is:

AUTHORITATIVE CONTINUITY STATE
        ↓
VALIDATE PREVIOUS OUTPUT
        ↓
SEPARATE CORRECT ELEMENTS FROM INCORRECT ELEMENTS
        ↓
INHERIT ONLY VALIDATED ELEMENTS
        ↓
APPLY CURRENT EVENTS AND STATE CHANGES
        ↓
GENERATE NEXT OUTPUT
        ↓
VALIDATE AGAIN

A previous output is a reference.

The continuity system is the authority.
