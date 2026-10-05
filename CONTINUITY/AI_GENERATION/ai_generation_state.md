# AI GENERATION STATE

## PURPOSE

Defines the complete current state governing an AI-generated output.

This file applies to every AI-generated production asset, including:

- frame
- shot
- scene
- sequence
- episode
- character
- character state
- costume
- prop
- weapon
- animal
- location
- environment
- spatial arrangement
- performance
- physiology
- transformation
- camera
- lighting
- audio
- VFX
- compositing
- final render
- any other AI-generated production output

This file defines WHAT STATE the AI must generate.

Technical generation settings are defined in:

ai_generation_parameters.md

Model identity and model compatibility are defined in:

ai_model_version.md

Generation numbering is defined in:

ai_generation_version.md


## CORE PRINCIPLE

AI generation must continue an existing authoritative world state.

Every generation must be treated as a continuation of the established production state unless a documented state-changing event requires a change.

A new generation is never a new beginning.

A new frame is never an automatic reset.

A new shot is never an automatic reset.

A new scene is never an automatic reset.

A new AI model is never an automatic reset.

A new seed is never an automatic reset.

A regeneration is never an automatic reset.


## AUTHORITATIVE_STATE

authoritative_state_reference:

authoritative_state_version:

authoritative_state_timestamp:

authoritative_state_source:

authoritative_state_approval:

authoritative_state_status:


The authoritative state must come from the approved continuity system.

The immediately previous AI output is not automatically authoritative.

The most visually convincing output is not automatically authoritative.

The newest output is not automatically authoritative.


## STATE_HIERARCHY

State resolution must follow:

USER_APPROVED_STATE
→ APPROVED_CONTINUITY_STATE
→ APPROVED_STATE_LEDGER
→ APPROVED_CANON_OR_RESEARCH_STATE
→ VALIDATED_PRODUCTION_REFERENCE
→ VALIDATED_AI_OUTPUT


Lower-level information must not silently override higher-level information.


## GENERATION_IDENTITY

generation_id:

asset_id:

asset_type:

entity_id:

continuity_entity_id:

generation_version:

parameter_version:

model_version:

workflow_version:


Every generation must be uniquely identifiable.

No two generations may share the same generation_id.


## GENERATION_SCOPE

generation_scope:

frame

shot

scene

sequence

episode

asset

entity

environment

audio

vfx

other


generation_start:

generation_end:

generation_parent:

generation_context:


The scope must be explicitly defined before generation.


## CURRENT_STATE

current_state_reference:

current_state_version:

current_state_timestamp:

current_state_status:


The current state represents the state that the AI is required to reproduce or continue.

It must not be inferred solely from the previous generated output.


## PREVIOUS_STATE

previous_state_reference:

previous_state_version:

previous_state_timestamp:

previous_state_status:


previous_state must be resolved from the authoritative continuity state.

A previous AI output may provide visual evidence but cannot override authoritative state.


## NEXT_REQUIRED_STATE

next_required_state_reference:

next_required_state_version:

next_required_state_timestamp:

next_required_state_status:


Where the next state is known, the AI must generate an output capable of transitioning correctly into that state.

This prevents a generation from being locally correct but incompatible with the following shot or event.


## STATE_TRANSITION

state_transition_required:

transition_type:

transition_event:

transition_cause:

previous_state:

current_state:

next_state:

transition_duration:

transition_progress:

transition_constraints:


A transition must be continuous unless the story explicitly contains a discontinuity such as:

- time jump
- location change
- transformation
- death
- reincarnation
- body destruction
- bodyless state
- divine manifestation
- explicitly established narrative transition


No discontinuity may be invented merely to solve a generation problem.


## PERSISTENT_STATE

persistent_state_present:

persistent_state_reference:

persistent_state_version:

persistent_state_duration:

persistent_state_start:

persistent_state_end:


Persistent states may include:

- injury
- healing
- scars
- blood
- dirt
- sweat
- wetness
- tears
- fatigue
- pain
- aging
- clothing damage
- clothing wear
- clothing fading
- stains
- repairs
- prop damage
- weapon damage
- environmental damage
- environmental residue
- ownership
- possession
- knowledge
- memory
- relationship state
- transformation state
- physical consequences
- emotional consequences


Persistent state must continue until a valid event changes it.


## NO_RESET_RULE

The following are prohibited unless caused by an explicit state-changing event:

- injury disappearing
- scar disappearing
- blood disappearing
- dirt disappearing
- sweat disappearing
- wetness disappearing
- fatigue disappearing
- clothing damage disappearing
- clothing fading reversing
- stains disappearing
- repaired objects becoming damaged without cause
- damaged objects becoming new without cause
- changed jewelry position resetting
- changed prop ownership resetting
- changed prop location resetting
- environmental damage resetting
- environmental residue disappearing
- aging reversing
- transformation state resetting
- emotional consequences disappearing without cause
- knowledge state reverting without cause


AI regeneration cannot be used as the cause of a reset.


## STATE_CAUSE

Every material state change must have:

state_change_event:

state_change_cause:

event_timestamp:

previous_state:

new_state:

physical_consequence:

emotional_consequence:

downstream_consequence:


If no valid cause exists:

state_change_validity: invalid


## IDENTITY_STATE

identity_state_reference:

identity_anchor_reference:

identity_anchor_version:

identity_status:


Identity must remain stable unless an explicitly authorized transformation or identity-changing event exists.

Identity includes, where applicable:

- facial structure
- body structure
- proportions
- distinctive features
- voice identity
- defining physical characteristics
- approved identity anchors


Natural human variation must not become identity drift.


## APPEARANCE_STATE

appearance_state_reference:

appearance_state_version:

appearance_status:

appearance_change:

appearance_change_cause:


Appearance must remain consistent with the authoritative character, entity, costume, environmental, and temporal states.


## COSTUME_STATE

costume_state_reference:

costume_state_version:

costume_status:

costume_identity:

costume_condition:

costume_damage:

costume_wear:

costume_fading:

costume_dirt:

costume_stains:

costume_wetness:

costume_repair:

costume_change_event:


Costume state must persist across generations.

A garment must not return to an earlier condition without a valid event.


## PROP_STATE

prop_state_reference:

prop_state_version:

prop_state_status:

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


A prop must retain its established identity and condition unless a valid event changes it.


## WEAPON_STATE

weapon_state_reference:

weapon_state_version:

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


Weapon state must remain persistent across applicable generations.


## ANIMAL_STATE

animal_state_reference:

animal_state_version:

animal_identity:

animal_species:

animal_age:

animal_health:

animal_behavior:

animal_position:

animal_orientation:

animal_motion:

animal_group_state:


Animal continuity must preserve identity, physical state, position, behavior, and relevant consequences.


## LOCATION_STATE

location_state_reference:

location_state_version:

location_status:

location_geometry:

location_layout:

location_material_state:

location_damage:

location_repair:

location_cleanliness:

location_weathering:

location_population:


Location state must persist across shots and scenes unless a valid event changes the location.


## ENVIRONMENT_STATE

environment_state_reference:

environment_state_version:

environment_status:

weather:

temperature:

humidity:

wind:

precipitation:

dust:

smoke:

fog:

ground_condition:

surface_condition:

environment_activity:

environment_residue:

environment_damage:

environment_recovery:


Environmental state must not reset between generations without cause.


## SPATIAL_STATE

spatial_state_reference:

spatial_state_version:

coordinate_system:

character_coordinates:

prop_coordinates:

weapon_coordinates:

animal_coordinates:

object_coordinates:

camera_coordinates:

relative_positions:

distances:

orientations:

gaze_directions:

hand_positions:

foot_positions:

contact_relationships:

blocking_relationships:

movement_phase:


Spatial continuity must be resolved from the authoritative spatial state.

Approximate visual similarity is insufficient where exact spatial continuity is required.


## PERFORMANCE_STATE

performance_state_reference:

performance_state_version:

performance_status:

current_action:

previous_action:

next_action:

gesture_state:

gaze_state:

facial_expression_state:

micro_expression_state:

posture_state:

reaction_state:

listening_state:

hand_state:

walking_state:

sitting_standing_state:

contact_state:

performance_momentum:


Performance must continue naturally from the established action rather than restarting at a neutral pose.


## PHYSIOLOGICAL_STATE

physiological_state_reference:

physiological_state_version:

breathing_state:

blink_state:

eye_movement_state:

muscle_tension_state:

weight_distribution:

balance_state:

body_temperature_cues:

fatigue_state:

pain_state:

sweat_state:

tear_state:

physical_recovery_state:


Physiological state must remain compatible with:

- current physical condition
- current emotional state
- current activity
- environmental conditions
- injury
- fatigue
- elapsed time


## HUMAN_REALISM_STATE

human_realism_required: yes

human_realism_reference:

human_realism_version:


The generated output must preserve believable human behavior, including where applicable:

- breathing
- blinking
- eye movement
- gaze changes
- facial micro-expression
- facial asymmetry
- posture adjustment
- weight shifting
- balance correction
- muscle tension
- hand movement
- finger movement
- natural walking
- inertia
- momentum
- contact pressure
- grip
- listening reactions
- unconscious movement
- clothing response
- hair response
- environmental response


Human realism must not override canonical or continuity-controlled state.


## PHYSICS_STATE

physics_state_reference:

physics_state_version:

gravity_state:

inertia_state:

momentum_state:

collision_state:

contact_state:

friction_state:

cloth_state:

hair_state:

water_state:

fire_state:

smoke_state:

material_interaction_state:


Physical behavior must remain consistent with the established world state and applicable physics rules.


## TIMELINE_STATE

timeline_state_reference:

timeline_state_version:

story_time:

world_time:

scene_time:

shot_time:

frame_time:

elapsed_time:

elapsed_time_since_previous_event:

elapsed_time_since_state_change:

character_age:

object_age:

environment_age:


Time must progress consistently.

The AI must not accidentally reverse, skip, or duplicate elapsed time.


## KNOWLEDGE_STATE

knowledge_state_reference:

knowledge_state_version:

known_information:

unknown_information:

newly_acquired_information:

information_source:

knowledge_change_event:


The AI must not depict an entity as knowing information before it has acquired that information.

AI visual generation must not silently create knowledge that the entity does not possess.


## RELATIONSHIP_STATE

relationship_state_reference:

relationship_state_version:

relationship_status:

relationship_change_event:

relationship_history_reference:


Relationships must remain consistent with established events and knowledge.


## TRANSFORMATION_STATE

transformation_state_reference:

transformation_state_version:

base_form:

current_form:

transformation_status:

transformation_start:

transformation_duration:

transformation_progress:

transformation_cause:

transformation_consequences:

expected_end_state:


A transformation is a state transition, not an appearance variation.

The AI must not partially apply a transformation unless the authoritative state specifies an intermediate stage.


## CAMERA_STATE

camera_state_reference:

camera_state_version:

camera_position:

camera_orientation:

camera_height:

camera_distance:

camera_framing:

camera_lens:

focus_state:

camera_motion:

camera_speed:

camera_acceleration:


Camera generation must remain compatible with the authoritative camera state.


## LIGHTING_STATE

lighting_state_reference:

lighting_state_version:

light_sources:

light_direction:

light_intensity:

light_color:

shadow_state:

natural_light_state:

firelight_state:

moonlight_state:

divine_light_state:

lighting_transition:


Lighting must remain consistent with time, location, environment, source position, and established scene state.


## AUDIO_STATE

audio_state_reference:

audio_state_version:

voice_identity:

speech_state:

speech_rhythm:

speech_speed:

breathing_audio:

dialogue_state:

ambient_state:

foley_state:

music_state:

sfx_state:

silence_state:

spatial_audio_state:


Audio continuity must correspond to the physical and narrative state.


## VFX_STATE

vfx_state_reference:

vfx_state_version:

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

effect_end_state:


VFX must persist only for the duration and state defined by the authoritative continuity system.


## REFERENCE_STATE

reference_state_reference:

reference_asset_ids:

reference_versions:

reference_roles:

reference_priority:

reference_validation_status:


References must not override authoritative continuity.


## INHERITANCE_STATE

inheritance_required: yes

inheritance_source:

inheritance_timestamp:

inherited_fields:

non_inherited_fields:

inheritance_exceptions:

inheritance_validation:


Every applicable continuity-controlled field must either:

- be inherited
- be intentionally changed
- be not_applicable
- be intentionally_variable
- be explicitly unknown


Nothing may silently disappear from the state.


## NATURAL_VARIATION_STATE

natural_variation_allowed: yes

variation_reference:

variation_version:

variation_scope:

variation_limits:

variation_context:

variation_state:


Natural variation may affect:

- blink timing
- breathing rhythm
- tiny eye movements
- micro-expression
- subtle posture
- weight distribution
- hair movement
- cloth movement
- minor environmental motion


Natural variation may not change:

- identity
- established injury
- persistent damage
- ownership
- established costume identity
- established prop identity
- timeline
- canonical state
- required spatial relationships
- locked performance beats


## LOCK_STATE

lock_status:

identity_lock:

appearance_lock:

costume_lock:

prop_lock:

weapon_lock:

animal_lock:

location_lock:

environment_lock:

spatial_lock:

performance_lock:

physiology_lock:

physics_lock:

timeline_lock:

camera_lock:

lighting_lock:

audio_lock:

vfx_lock:

transformation_lock:


A locked field may change only through an explicitly authorized state-changing event or user-approved override.


## UNKNOWN_STATE

unknown_state_present:

unknown_fields:

unknown_reason:

unknown_source:

resolution_required:

generation_blocked:


Unknown information must not be silently converted into an invented value.

Allowed states include:

known

unknown

not_applicable

not_established

intentionally_variable

requires_review


## CONFLICT_STATE

conflict_present:

conflict_type:

conflicting_values:

conflicting_references:

authoritative_value:

conflict_resolution:

resolution_status:


Unresolved material conflicts must block affected generation.


## DEPENDENCY_STATE

dependency_check_required: yes

upstream_dependencies:

downstream_dependencies:

changed_dependencies:

affected_dependencies:

unaffected_dependencies:

dependency_validation:


Only dependencies actually affected by a state change should require regeneration or revalidation.


## GENERATION_READINESS

generation_readiness:

Allowed values:

ready

ready_with_conditions

blocked

requires_review

invalid


Generation is ready only when:

authoritative state is available

required dependencies are resolved

required references are resolved

critical constraints are available

required timeline state is available

required spatial state is available

required persistent state is available

required human-realism constraints are available

no blocking conflict exists


## GENERATION_EXECUTION_STATE

generation_started:

generation_start_timestamp:

generation_completed:

generation_completion_timestamp:

generation_output_reference:

generation_output_status:


## OUTPUT_VALIDATION

output_validation_required: yes

identity_validation:

appearance_validation:

costume_validation:

prop_validation:

spatial_validation:

performance_validation:

physiological_validation:

physics_validation:

timeline_validation:

environment_validation:

camera_validation:

lighting_validation:

audio_validation:

vfx_validation:

human_realism_validation:

persistent_state_validation:


## OUTPUT_STATUS

output_status:

Allowed values:

generated

under_review

approved

conditionally_approved

rejected

superseded

archived

invalid


Only approved or conditionally approved outputs may propagate as validated production references.


## PROPAGATION_STATE

propagation_allowed:

propagation_status:

propagation_reference:

propagation_timestamp:

propagation_scope:


Propagation is allowed only when the output has passed the required validation and approval process.

Rejected or unvalidated outputs must not become inheritance sources.


## ERROR_STATE

error_present:

error_ids:

error_types:

error_severity:

error_origin:

error_affected_state:

error_affected_asset:

error_resolution:

error_validation:


Errors must be explicitly recorded.

An error must not be silently corrected without recording the correction.


## REGENERATION_STATE

regeneration_required:

regeneration_reason:

regeneration_scope:

regeneration_dependency_chain:

original_generation_reference:

replacement_generation_reference:


Regeneration must use the authoritative state.

Regeneration must not inherit an unresolved error from the rejected generation.


## RETROACTIVE_ERROR_STATE

historical_error_detected:

historical_error_reference:

error_discovery_timestamp:

original_state:

corrected_state:

affected_downstream_chain:

retroactive_correction_required:

retroactive_correction_status:


Historical correction must preserve the original state in history.

Correcting history must never mean deleting history.


## USER_OVERRIDE_STATE

user_override:

user_override_reference:

user_override_reason:

user_override_scope:

user_override_timestamp:

user_override_approval:


User-approved overrides become the authoritative production decision for their defined scope.

The override must remain historically traceable.


## STATE_INTEGRITY

The following are prohibited:

- generating without authoritative state
- using a rejected output as authoritative
- using an unvalidated output as authoritative
- resetting persistent state
- inventing missing state
- silently changing locked state
- silently changing identity
- silently changing timeline
- silently changing spatial state
- silently changing costume condition
- silently changing injury or healing
- silently changing ownership
- silently changing environmental state
- propagating an unresolved error
- allowing AI preference to override continuity
- allowing technical generation settings to override story state
- treating natural variation as permission for identity drift
- treating visual similarity as proof of continuity
- treating the previous AI frame as the sole source of truth
- changing a state without a valid cause
- propagating an unapproved output
- silently resolving conflicts
- silently rewriting historical state


## FINAL_STATE_RULE

The output must represent:

THE CORRECT ENTITY

IN THE CORRECT STATE

AT THE CORRECT TIME

IN THE CORRECT PLACE

WITH THE CORRECT RELATIONSHIPS

WITH THE CORRECT PHYSICAL CONSEQUENCES

WITH THE CORRECT PERFORMANCE

WITH THE CORRECT PHYSIOLOGY

WITH THE CORRECT ENVIRONMENT

WITH THE CORRECT CAMERA

WITH THE CORRECT LIGHTING

WITH THE CORRECT AUDIO

WITH THE CORRECT VFX

AND WITH ALL PERSISTENT STATE CARRIED FORWARD.


## FINAL_PRINCIPLE

AI does not generate an isolated image.

AI generates the next observable state of an already existing continuous world.

Every generation must therefore satisfy:

PREVIOUS AUTHORITATIVE STATE
→ EVENT
→ PHYSICAL / EMOTIONAL / ENVIRONMENTAL CONSEQUENCE
→ CURRENT STATE
→ AI GENERATION
→ VALIDATION
→ APPROVAL
→ NEXT AUTHORITATIVE STATE


No generation may break this chain without an explicitly established narrative discontinuity.
