# AI PROMPT CONSTRAINTS

## PURPOSE

Defines the rules for constructing, organizing, validating, and applying AI-generation prompts.

This file controls how authoritative production information is communicated to an AI generation model.

It does not define:

- canon
- character identity
- continuity state
- costume design
- location design
- performance design
- physics
- timeline
- AI model parameters

Those are referenced from their authoritative files.

The prompt is an execution instruction.

The prompt is never the source of truth.


## CORE PRINCIPLE

The AI prompt must be generated from authoritative production state.

The correct relationship is:

AUTHORITATIVE SOURCES
→ CONTINUITY STATE
→ REQUIRED GENERATION STATE
→ PROMPT CONSTRAINTS
→ AI PROMPT
→ GENERATION
→ VALIDATION


The prompt must not invent information that is absent from the authoritative state.

The prompt must not override an authoritative state.

The prompt must not silently omit a continuity-critical state.


## PROMPT_IDENTITY

prompt_id:

prompt_version:

prompt_status:

prompt_timestamp:

generation_id:

asset_id:

asset_type:

generation_version:

continuity_state_reference:

parameter_version:

model_version:


## PROMPT_STATUS

Allowed values:

draft

compiled

validated

approved

conditionally_approved

rejected

superseded

archived


Only validated and approved prompts may be used for production generation.


## PROMPT_SOURCE_HIERARCHY

Prompt information must be resolved in this order:

USER_APPROVED_PRODUCTION_STATE
→ APPROVED_CONTINUITY_STATE
→ APPROVED_CANON_OR_RESEARCH_REFERENCE
→ APPROVED_IDENTITY_ANCHORS
→ APPROVED_GENERATION_CONSTRAINTS
→ APPROVED_REFERENCE_ASSETS
→ MODEL_COMPATIBILITY_REQUIREMENTS
→ TECHNICAL_GENERATION_PARAMETERS


Technical prompt instructions must never override higher-level authoritative state.


## PROMPT_COMPILATION

prompt_compilation_required: yes

prompt_compilation_source:

prompt_compilation_timestamp:

prompt_compilation_version:

prompt_compilation_status:


The prompt should be compiled from structured continuity data wherever possible.

Manually written prompt content must remain traceable to its source.


## PROMPT_STRUCTURE

The prompt should be organized into:

context

entity_identity

current_state

persistent_state

timeline

spatial_state

performance

physiology

costume

props

environment

physics

camera

lighting

audio

vfx

human_realism

transition

required_actions

forbidden_changes

reference_assets

technical_requirements


The exact sections required depend on the asset being generated.


## CONTEXT

story_context_reference:

episode_reference:

sequence_reference:

scene_reference:

shot_reference:

frame_reference:

generation_context:


Context must be sufficient to understand the intended generation without inventing additional story information.


## ENTITY_IDENTITY

identity_anchor_reference:

identity_anchor_version:

entity_identity_requirements:

identity_priority:

identity_locked_features:

identity_controlled_features:

identity_variable_features:


Identity information must be inherited from:

ai_identity_anchors.md


The prompt must never redefine identity from memory or visual guesswork.


## CURRENT_STATE

current_state_reference:

current_state_version:

current_state_requirements:

current_physical_state:

current_emotional_state:

current_performance_state:

current_environmental_state:

current_spatial_state:

current_temporal_state:


The current state must correspond to the authoritative continuity state.


## PERSISTENT_STATE

persistent_state_reference:

persistent_state_requirements:

persistent_injuries:

persistent_healing:

persistent_scars:

persistent_blood:

persistent_dirt:

persistent_sweat:

persistent_wetness:

persistent_fatigue:

persistent_costume_damage:

persistent_costume_wear:

persistent_costume_fading:

persistent_stains:

persistent_prop_damage:

persistent_weapon_damage:

persistent_environmental_damage:

persistent_environmental_residue:

persistent_ownership:

persistent_knowledge:

persistent_relationships:

persistent_transformation_state:


Persistent state must be explicitly included when relevant.

The prompt must not omit a continuity-critical persistent state simply because it is visually subtle.


## EVENT_STATE

event_reference:

event_description:

event_cause:

event_timestamp:

event_effects:

physical_consequences:

emotional_consequences:

environmental_consequences:

object_consequences:

downstream_consequences:


The prompt must communicate consequences that are supposed to be visible in the generated state.


## STATE_TRANSITION

transition_required:

previous_state_reference:

current_state_reference:

next_state_reference:

transition_event:

transition_progress:

transition_duration:

transition_direction:

transition_constraints:


The prompt must describe the state transition rather than treating each generation as an isolated image.


## TEMPORAL_CONSTRAINTS

story_time:

world_time:

scene_time:

shot_time:

frame_time:

elapsed_time:

elapsed_time_since_event:

elapsed_time_since_previous_output:

age_state:

duration_state:


The prompt must not create temporal contradictions.


## SPATIAL_CONSTRAINTS

coordinate_system:

character_positions:

prop_positions:

weapon_positions:

animal_positions:

camera_position:

relative_positions:

distances:

orientations:

gaze_directions:

hand_positions:

foot_positions:

contact_points:

blocking:

movement_phase:


Spatial requirements must be explicit when spatial continuity is critical.


## PERFORMANCE_CONSTRAINTS

performance_reference:

current_action:

previous_action:

next_action:

gesture:

gaze:

facial_expression:

micro_expression:

posture:

reaction:

listening_state:

hand_state:

walking_state:

sitting_standing_state:

contact_state:

movement_momentum:


The prompt must preserve the current performance phase.

The AI must not reset an ongoing action to a neutral pose.


## PHYSIOLOGICAL_CONSTRAINTS

physiology_reference:

breathing:

blink:

eye_movement:

muscle_tension:

weight_distribution:

balance:

body_temperature_cues:

fatigue:

pain:

sweat:

tears:

physical_recovery:


Physiological instructions must correspond to:

activity

emotion

injury

fatigue

environment

elapsed_time


## HUMAN_REALISM_CONSTRAINTS

human_realism_required: yes

human_realism_reference:

breathing_realism:

blink_realism:

eye_behavior:

facial_asymmetry:

micro_expression:

posture_adjustment:

weight_shift:

balance_correction:

muscle_tension:

hand_motion:

finger_motion:

walking_realism:

inertia:

momentum:

contact_pressure:

grip:

cloth_response:

hair_response:

environmental_response:


The prompt must instruct the model to preserve believable human behavior.

Human realism must not mean:

perfect symmetry

identical frame repetition

mechanical blinking

mechanical breathing

frozen facial expression

weightless movement

unnatural posture


## COSTUME_CONSTRAINTS

costume_reference:

costume_identity:

costume_current_condition:

costume_damage:

costume_wear:

costume_fading:

costume_dirt:

costume_stains:

costume_wetness:

costume_repair:

costume_drape:

costume_fold_state:


The prompt must preserve the current garment state.

It must not accidentally restore the garment to an earlier clean or undamaged condition.


## PROP_CONSTRAINTS

prop_reference:

prop_identity:

prop_owner:

prop_holder:

prop_location:

prop_position:

prop_orientation:

prop_condition:

prop_damage:

prop_wear:

prop_repair:

prop_usage_state:


Props must remain consistent with their authoritative state.


## WEAPON_CONSTRAINTS

weapon_reference:

weapon_identity:

weapon_owner:

weapon_holder:

weapon_location:

weapon_position:

weapon_orientation:

weapon_condition:

weapon_damage:

weapon_wear:

weapon_repair:

weapon_usage_state:


Weapons must remain consistent with their established history.


## ANIMAL_CONSTRAINTS

animal_reference:

animal_identity:

species:

age:

appearance:

health:

behavior:

position:

orientation:

motion:

group_state:


Animal identity and state must be preserved.


## LOCATION_CONSTRAINTS

location_reference:

location_identity:

geometry:

layout:

materials:

architectural_features:

damage:

repair:

cleanliness:

weathering:

population:


The prompt must preserve the established physical location.


## ENVIRONMENT_CONSTRAINTS

environment_reference:

weather:

temperature:

humidity:

wind:

rain:

snow:

dust:

smoke:

fog:

ground_condition:

surface_condition:

environment_activity:

environment_residue:

environment_damage:


Environmental conditions must remain consistent with the authoritative state.


## PHYSICS_CONSTRAINTS

physics_reference:

gravity:

inertia:

momentum:

collision:

contact:

friction:

mass:

cloth_physics:

hair_physics:

water_physics:

fire_physics:

smoke_physics:

material_interaction:


The prompt must not request visually attractive but physically impossible behavior unless an explicitly established supernatural or VFX state requires it.


## CAMERA_CONSTRAINTS

camera_reference:

camera_position:

camera_orientation:

camera_height:

camera_distance:

camera_framing:

camera_lens:

focal_length:

field_of_view:

focus_distance:

depth_of_field:

camera_motion:

camera_speed:

camera_acceleration:


Camera instructions must correspond to the authoritative camera state.


## LIGHTING_CONSTRAINTS

lighting_reference:

light_sources:

light_direction:

light_intensity:

light_color:

color_temperature:

shadow_state:

natural_light:

firelight:

moonlight:

divine_light:

lighting_transition:


Lighting instructions must remain consistent with:

time

location

environment

light sources

camera

scene state


## AUDIO_CONSTRAINTS

audio_reference:

voice_identity:

speech:

pronunciation:

speech_speed:

speech_rhythm:

breathing_audio:

dialogue:

ambient_sound:

foley:

music:

sfx:

silence:

spatial_audio:


Audio instructions must correspond to the physical and narrative state.


## VFX_CONSTRAINTS

vfx_reference:

effect_identity:

effect_type:

effect_position:

effect_motion:

effect_duration:

effect_intensity:

environment_response:

lighting_response:

shadow_response:

reflection_response:

end_state:


VFX instructions must correspond to the authoritative event and state.


## REQUIRED_INSTRUCTIONS

must_preserve:

must_inherit:

must_continue:

must_show:

must_transition:

must_maintain:

must_validate:


These instructions represent continuity-critical requirements.


## FORBIDDEN_INSTRUCTIONS

must_not_change:

must_not_reset:

must_not_invent:

must_not_remove:

must_not_add:

must_not_teleport:

must_not_duplicate:

must_not_morph:

must_not_age_incorrectly:

must_not_heal_incorrectly:

must_not_repair_incorrectly:

must_not_change_identity:

must_not_change_ownership:

must_not_change_spatial_state:

must_not_change_timeline:


Forbidden instructions must be derived from applicable negative constraints.


## HARD_CONSTRAINTS

hard_constraints:

hard_constraint_priority:

hard_constraint_source:

hard_constraint_version:


Hard constraints must be satisfied before the output can be approved.

A hard constraint cannot be ignored to improve:

- beauty
- composition
- cinematic appeal
- model preference
- visual quality
- generation convenience


## SOFT_CONSTRAINTS

soft_constraints:

soft_constraint_priority:

soft_constraint_source:

soft_constraint_version:


Soft constraints may vary only when doing so does not violate a higher-priority constraint.


## CONTEXT_INSTRUCTIONS

context_instructions:

scene_context:

shot_context:

frame_context:

environment_context:

narrative_context:


Context must explain the generation without adding unsupported facts.


## REFERENCE_INSTRUCTIONS

reference_assets:

reference_roles:

reference_priority:

reference_usage:

reference_restrictions:


References must be used according to their approved role.

A reference image intended for identity must not automatically be treated as:

- costume authority
- historical authority
- canon authority
- spatial authority
- performance authority


## REFERENCE_CONFLICT

reference_conflict_present:

conflicting_references:

conflicting_attributes:

authoritative_reference:

conflict_resolution:

resolution_status:


The prompt compiler must not silently merge conflicting references.

Unresolved critical conflicts must block generation.


## UNKNOWN_INFORMATION

unknown_information_present:

unknown_fields:

unknown_reason:

allowed_inference:

forbidden_inference:

generation_blocked:


The prompt must not convert unknown information into invented facts.

Unknown information may be resolved only through:

approved research

approved interpretation

approved visual reconstruction

explicit user decision

or another authorized source.


## CANON_BOUNDARY

canon_information_reference:

canon_classification:

canon_confidence:

canon_constraints:

interpretation_reference:

visual_reconstruction_reference:

directorial_choice_reference:


The prompt must preserve the distinction between:

direct canon

derived canon

traditional interpretation

historical reconstruction

visual reconstruction

directorial choice

production choice

unknown

uncertain


The prompt must not present visual reconstruction as direct canonical fact.


## NATURAL_VARIATION

natural_variation_allowed:

variation_reference:

variation_version:

allowed_variations:

variation_limits:


The prompt should explicitly allow natural human variation where appropriate.

It must not demand artificial frame-to-frame identity through frozen facial expressions or mechanically identical body positions.


## VARIATION_PROTECTION

The prompt must not allow variation to alter:

identity

age

persistent injury

persistent healing state

persistent scars

costume identity

persistent costume damage

prop identity

weapon identity

ownership

timeline

canonical state

required spatial relationships


## MODEL_COMPATIBILITY

model_reference:

model_version:

model_capabilities:

model_limitations:

model_specific_constraints:


The prompt must be compatible with the selected model.

The prompt must not request controls the selected model cannot provide without an approved fallback strategy.


## PARAMETER_COMPATIBILITY

parameter_reference:

parameter_version:

parameter_constraints:

parameter_dependencies:

parameter_conflicts:


Prompt instructions must not contradict the technical generation parameters.


## PROMPT_ORDER

Recommended priority order:

1. authoritative identity
2. authoritative current state
3. persistent state
4. event and consequences
5. spatial state
6. performance
7. physiology
8. timeline
9. environment
10. physics
11. costume
12. props
13. camera
14. lighting
15. audio
16. VFX
17. natural variation
18. technical requirements
19. negative constraints


Higher-priority information must not be weakened by lower-priority instructions.


## PROMPT_CONFLICT_RESOLUTION

prompt_conflict:

conflicting_instructions:

instruction_priority:

authoritative_instruction:

resolution:

resolution_status:


When instructions conflict:

higher-authority information wins

hard constraints win over soft constraints

locked state wins over variable state

authoritative continuity wins over visual preference

user-approved state wins over AI preference


Unresolved critical conflicts must block generation.


## PROMPT_COMPLETENESS

prompt_completeness_check: yes

identity_complete:

state_complete:

persistent_state_complete:

timeline_complete:

spatial_complete:

performance_complete:

physiology_complete:

environment_complete:

physics_complete:

costume_complete:

prop_complete:

camera_complete:

lighting_complete:

audio_complete:

vfx_complete:

human_realism_complete:

negative_constraints_complete:

reference_complete:

model_compatibility_complete:


## PROMPT_OMISSION_DETECTION

omission_detection_required: yes

omitted_state_fields:

omitted_persistent_fields:

omitted_dependencies:

omitted_constraints:

omission_severity:

generation_blocked:


A continuity-critical field must not be omitted simply because it is difficult for the AI model to generate.


## PROMPT_HALLUCINATION_PROTECTION

hallucination_protection_required: yes

invented_information_detected:

invented_information:

invented_source:

invented_state:

correction_required:


The prompt must never instruct the AI to invent an unsupported state.


## PROMPT_COMPRESSION

prompt_compression_allowed: yes

compression_method:

compressed_fields:

compression_risk:

compression_validation:


Prompt compression may reduce wording but must not remove semantic requirements.

A shorter prompt is acceptable only when the complete constraint meaning remains preserved.


## PROMPT_TRANSLATION

prompt_language:

translation_required:

translated_prompt_reference:

translation_validation:


Translation must preserve constraint meaning.

Translation must not weaken or reinterpret continuity-critical instructions.


## PROMPT_GENERATION

compiled_prompt_reference:

compiled_prompt_version:

compiled_prompt:

compiled_prompt_hash:

generation_timestamp:


The exact compiled prompt used for generation must remain identifiable.


## PROMPT_CHANGE

prompt_changed:

previous_prompt_version:

new_prompt_version:

prompt_change_reason:

changed_instructions:

continuity_impact:

change_history_reference:


Any material prompt change must be recorded in:

ai_change_history.md


## PROMPT_VERSIONING

prompt_version:

previous_prompt_version:

prompt_version_reason:

prompt_version_timestamp:

supersedes_prompt_version:


A materially changed prompt must receive a new prompt version.


## PROMPT_VALIDATION

prompt_validation_required: yes

validation_method:

validated_against:

validation_status:

validation_errors:

remaining_uncertainties:

validation_timestamp:

validated_by:


A prompt must be validated before production generation when it contains continuity-critical instructions.


## PRE_GENERATION_CHECK

pre_generation_check_required: yes

authoritative_state_available:

identity_anchors_available:

persistent_state_available:

timeline_available:

spatial_state_available:

performance_state_available:

physiology_available:

environment_available:

physics_available:

references_available:

model_compatible:

parameters_compatible:

negative_constraints_available:

prompt_complete:

generation_ready:


If any required critical dependency is unavailable:

generation_ready: no


## POST_GENERATION_CHECK

post_generation_validation_required: yes

identity_check:

state_check:

persistent_state_check:

spatial_check:

performance_check:

physiology_check:

timeline_check:

environment_check:

physics_check:

human_realism_check:

camera_check:

lighting_check:

audio_check:

vfx_check:

negative_constraint_check:


The prompt being correct does not prove that the generated output is correct.


## PROMPT_OUTPUT_RELATIONSHIP

prompt_expected_state:

generated_state:

state_difference:

difference_is_error:

difference_reason:

correction_required:


The generated output must be validated against the intended prompt state and authoritative continuity state.


## PROPAGATION

prompt_propagation_allowed:

prompt_propagation_scope:

prompt_propagation_reference:

prompt_propagation_validation:


A validated prompt may be reused only when its underlying state remains applicable.

A prompt must not be blindly reused across:

different states

different injuries

different costume conditions

different locations

different times

different performances

different transformations

different spatial configurations


## REUSABILITY

prompt_reusable:

reusability_scope:

reusability_conditions:

required_state_match:

required_reference_match:

required_model_match:

required_parameter_match:


Prompt reuse requires compatibility with the current authoritative state.


## FINAL_PROMPT_RULE

The AI prompt is an executable representation of approved production requirements.

It must:

PRESERVE THE CORRECT ENTITY

PRESERVE THE CORRECT STATE

PRESERVE PERSISTENT CONSEQUENCES

PRESERVE THE CORRECT TIME

PRESERVE THE CORRECT PLACE

PRESERVE THE CORRECT PERFORMANCE

PRESERVE HUMAN-LIKE PHYSIOLOGY

PRESERVE PHYSICAL REALISM

PRESERVE THE ENVIRONMENT

PRESERVE CAMERA CONTINUITY

PRESERVE LIGHTING CONTINUITY

PRESERVE AUDIO CONTINUITY

PRESERVE VFX CONTINUITY

ALLOW ONLY APPROVED NATURAL VARIATION

AND PREVENT ALL FORBIDDEN CHANGES.


The prompt must never become more authoritative than the state from which it was compiled.

If the prompt conflicts with authoritative continuity:

AUTHORITATIVE CONTINUITY WINS.

If the prompt is incomplete:

GENERATION MUST BE BLOCKED WHEN THE MISSING INFORMATION IS CRITICAL.

If the previous output conflicts with the prompt:

THE AUTHORITATIVE STATE WINS.

If the model cannot satisfy a critical constraint:

THE GENERATION MUST NOT BE ACCEPTED AS VALID WITHOUT AN EXPLICIT APPROVED EXCEPTION.
