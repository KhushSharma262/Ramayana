# AI VARIATION LIMITS

## PURPOSE

Defines the permitted amount, type, direction, duration, and scope of variation that AI generation may introduce while preserving continuity.

This file exists to solve the fundamental problem:

THE WORLD MUST REMAIN CONTINUOUS

WHILE

HUMANS, ANIMALS, CLOTHING, ENVIRONMENT, CAMERA, LIGHT, AND MOTION MUST NOT APPEAR ARTIFICIALLY FROZEN.

Variation is therefore controlled rather than eliminated.


## CORE PRINCIPLE

CONTINUITY ≠ PIXEL IDENTICALITY

The same entity may naturally vary between frames.

The following must remain stable where required:

IDENTITY
STATE
TIMELINE
RELATIONSHIPS
PERSISTENT CONSEQUENCES
SPATIAL LOGIC
PHYSICAL CAUSALITY
CANONICAL ATTRIBUTES


The following may vary within controlled limits:

BLINKING
BREATHING
MICRO-EXPRESSIONS
EYE MOVEMENTS
WEIGHT SHIFTS
POSTURE
FINGER POSITION
HAND MICRO-MOVEMENT
HAIR MOVEMENT
CLOTH MOVEMENT
MUSCLE TENSION
SKIN RESPONSE
ENVIRONMENTAL MOTION
MINOR NATURAL CAMERA MOVEMENT
OTHER APPROVED NATURAL VARIATION


## VARIATION_STATE

variation_state_id:

variation_version:

generation_id:

asset_id:

scene_id:

shot_id:

frame_id:

variation_timestamp:

variation_status:


Allowed statuses:

draft

defined

validated

approved

conditionally_approved

rejected

locked

superseded


## VARIATION_AUTHORITY

variation_authority:

variation_source:

variation_source_version:

variation_scope:

variation_reason:

variation_approval:


Variation limits must be derived from:

authoritative continuity state

identity anchors

generation state

performance state

physiology

physics

timeline

environment

camera

lighting

approved production decisions


Variation must never override higher-level authoritative state.


## VARIATION_CLASSES

variation_classes:

identity_variation

appearance_variation

physiological_variation

performance_variation

motion_variation

costume_variation

hair_variation

jewelry_variation

prop_variation

weapon_variation

animal_variation

environment_variation

spatial_variation

camera_variation

lighting_variation

audio_variation

vfx_variation

technical_variation


Each class has independent limits.


## VARIATION_LEVELS

Allowed levels:

absolute_locked

extremely_restricted

strongly_restricted

controlled

bounded

natural

contextual

unrestricted

not_applicable


Continuity-critical identity attributes should normally use:

absolute_locked

or

extremely_restricted


Natural human behavior should normally use:

controlled

bounded

or

natural


## IDENTITY_VARIATION

identity_variation_allowed: extremely_restricted

face_shape:

facial_proportions:

eye_structure:

eye_spacing:

nose_structure:

mouth_structure:

jaw_structure:

ear_structure:

distinctive_marks:

body_proportions:

recognizable_features:

skin_characteristics:

age_identity:


Identity must remain recognizable as the same entity.

No natural variation may become identity drift.


## ABSOLUTELY_LOCKED_IDENTITY

must_not_change:

identity

species

fundamental_body_structure

distinctive_identity_features

canonical_identity_features

approved_age_state

approved transformation state


Unless an explicit identity-changing event exists.


## FACE_VARIATION

allowed:

minor_expression_change

minor_muscle_activation

natural_skin_deformation

natural_asymmetry

subtle_eye_position_change

subtle_lip_position_change

subtle_cheek_movement

subtle_brow_movement


not_allowed:

face_shape_drift

eye_shape_drift

nose_shape_drift

jaw_shape_drift

mouth_structure_drift

age_reset

age_acceleration

identity_morphing

facial_symmetry_reset


## BODY_VARIATION

allowed:

weight_shift

muscle_tension

posture_adjustment

breathing_expansion

minor limb repositioning

natural balance correction

movement-related deformation


not_allowed:

body-proportion change

height change

limb-length change

shoulder-width drift

anatomical restructuring

unexplained body-mass change


## AGE_VARIATION

age_variation_allowed:

current_age:

allowed_visual_range:

allowed_conditions:

age_progression_rate:


Age must remain consistent with the story timeline.

AI generation must not randomly make an entity younger or older between frames.


## PHYSIOLOGICAL_VARIATION

physiological_variation_allowed:

breathing:

blink:

eye_movement:

heart_rate_visual_cues:

muscle_tension:

skin_response:

posture:

balance:

weight_distribution:

fatigue:

pain:


Physiological variation must correspond to:

activity

emotion

environment

injury

fatigue

temperature

elapsed time


## BREATHING_VARIATION

breathing_mode:

breathing_rate:

breathing_depth:

breathing_irregularity:

breathing_context:

allowed_range:


Breathing may vary naturally.

Breathing must not change randomly between frames without physical or emotional cause.


## BLINK_VARIATION

blink_allowed: yes

blink_frequency:

blink_irregularity:

blink_duration:

blink_context:

allowed_variation:


Blink timing may vary.

Identical blink timing across every frame is undesirable.

Excessive blinking is also prohibited.


## EYE_MOVEMENT_VARIATION

gaze_target:

gaze_direction:

gaze_range:

saccade_allowed:

fixation_duration:

eye_micro_movement:

contextual_limit:


Eye movement must remain consistent with:

attention

dialogue

listening

emotion

spatial relationships


## MICRO_EXPRESSION_VARIATION

micro_expression_allowed:

emotion:

expression_range:

expression_duration:

facial_muscle_variation:

contextual_limit:


Micro-expressions may naturally change without changing the underlying emotional state.


## POSTURE_VARIATION

posture_variation_allowed:

spine:

shoulders:

head:

neck:

arms:

hands:

hips:

legs:

stance:

allowed_range:


Posture may naturally adjust.

Posture must remain compatible with:

action

emotion

fatigue

surface

balance

costume

camera


## WEIGHT_SHIFT_VARIATION

weight_shift_allowed:

supporting_leg:

weight_distribution:

shift_direction:

shift_frequency:

shift_speed:

contextual_limit:


Weight shifts must remain physically believable.


## HAND_VARIATION

hand_variation_allowed:

wrist:

palm:

finger_positions:

finger_tension:

grip:

gesture:

allowed_range:


Finger and hand positions may vary naturally within the current action.

No anatomical instability is permitted.


## FINGER_VARIATION

allowed:

minor finger separation

minor flexion

minor extension

natural tension

small grip adjustments


not_allowed:

extra fingers

missing fingers

fused fingers

impossible joints

random finger multiplication

hand identity changes


## MOTION_VARIATION

motion_variation_allowed:

movement_type:

movement_speed:

acceleration:

deceleration:

momentum:

movement_phase:

motion_range:

timing_variation:


Motion must remain continuous between frames.


## MOTION_CONTINUITY

previous_motion_state:

current_motion_state:

next_motion_state:

movement_direction:

velocity:

acceleration:

momentum:

expected_continuity:


AI must not randomly reverse or restart movement.


## MOMENTUM_LIMITS

momentum_preserved: yes

inertia_preserved: yes

acceleration_limit:

deceleration_limit:

direction_change_limit:

sudden_motion_allowed:

sudden_motion_reason:


Sudden motion requires a physical, emotional, narrative, or supernatural cause.


## WALKING_VARIATION

walking_cycle:

step_phase:

stride_length:

step_speed:

foot_placement:

weight_transfer:

arm_swing:

body_motion:

natural_variation:


Walking must not reset to a new gait between frames or shots.


## CLOTHING_VARIATION

costume_identity_locked: yes

allowed:

natural folds

fold movement

drape changes

wrinkle changes

compression

stretching

wind movement

movement-induced displacement

contact deformation

minor positional variation


not_allowed:

garment replacement

color drift

pattern drift

material drift

ornament replacement

unexplained damage removal

unexplained repair

unexplained cleaning

garment identity change


## COSTUME_STATE_VARIATION

current_condition:

wear:

dirt:

stains:

wetness:

damage:

repair:

fading:

allowed_change_rate:


Costume condition may change only through:

movement

environment

contact

time

damage

repair

cleaning

explicit state transition


## HAIR_VARIATION

hair_identity_locked: yes

allowed:

individual strand movement

wind response

movement response

gravity response

moisture response

contact deformation

minor strand displacement


not_allowed:

hair-length reset

hair-style reset

hair-color change

hair-density change

major unexplained rearrangement


## JEWELRY_VARIATION

jewelry_identity_locked: yes

allowed:

minor swing

rotation

movement

contact displacement

light reflection change


not_allowed:

appearance/disappearance

replacement

material change

size change

unexplained repositioning

ownership change


## PROP_VARIATION

prop_identity_locked: yes

allowed:

minor orientation change

natural movement

contact movement

grip adjustment

surface reflection variation

small position change caused by interaction


not_allowed:

prop replacement

prop duplication

prop disappearance

ownership change

damage reset

repair reset

material change

size change


## WEAPON_VARIATION

weapon_identity_locked: yes

allowed:

orientation change

movement

grip adjustment

position change caused by action

surface reflection variation


not_allowed:

weapon replacement

weapon duplication

weapon disappearance

damage reset

repair reset

material change

size change

ownership change


## ANIMAL_VARIATION

animal_identity_locked: yes

allowed:

breathing

blinking

ear movement

tail movement

head movement

weight shift

gait variation

fur movement

minor posture change

natural attention changes


not_allowed:

species change

body-proportion drift

age reset

marking change

identity change

unexplained health change


## LOCATION_VARIATION

location_identity_locked: yes

allowed:

minor environmental activity

natural vegetation movement

weather movement

temporary objects

people movement where authorized

light variation

atmospheric variation


not_allowed:

architecture changes

room layout changes

building relocation

major geometry changes

unexplained destruction

unexplained repair

historical-period drift


## ENVIRONMENT_VARIATION

allowed:

wind

cloud movement

dust

fog

vegetation movement

water movement

fire movement

smoke movement

minor atmospheric variation

natural light variation


not_allowed:

weather contradiction

season contradiction

time-of-day contradiction

ground-state reset

damage reset

environmental residue disappearance without cause


## WEATHER_VARIATION

weather_state:

temperature:

wind:

humidity:

cloud:

rain:

fog:

dust:

snow:

allowed_variation:


Weather may naturally fluctuate within the established scene conditions.

It must not jump between incompatible conditions without a causal transition.


## SPATIAL_VARIATION

spatial_variation_allowed:

character_position_range:

prop_position_range:

weapon_position_range:

animal_position_range:

camera_position_range:

gaze_range:

hand_position_range:

foot_position_range:

relative_distance_range:

contact_range:


Spatial variation must preserve scene geometry and relationships.


## SPATIAL_LOCKS

must_not:

teleport

cross impossible distances

change side without movement

change relative scale without cause

change ownership

break physical contact without cause

create impossible intersections

create impossible floating


## PERFORMANCE_VARIATION

performance_variation_allowed:

gesture:

expression:

gaze:

posture:

reaction:

listening:

hand_motion:

movement:

timing:

intensity:


Performance variation must preserve the intended:

action

emotion

relationship

dialogue

scene objective


## EMOTIONAL_VARIATION

current_emotional_state:

allowed_expression_range:

emotional_intensity:

emotional_transition:

transition_speed:

contextual_limit:


An emotion may fluctuate naturally.

It must not jump to an unrelated emotional state without narrative or psychological cause.


## LISTENING_VARIATION

listening_state:

eye_attention:

head_orientation:

micro_reactions:

breathing:

posture:

allowed_variation:


A character who is listening must not randomly behave as though they are speaking or unaware of the speaker.


## FATIGUE_VARIATION

fatigue_state:

fatigue_level:

physical_effects:

allowed_variation:

progression:

recovery:


Fatigue must accumulate or recover according to time and activity.


## PAIN_VARIATION

pain_state:

pain_level:

pain_expression:

movement_effect:

posture_effect:

breathing_effect:

allowed_variation:


Pain must not disappear merely because the AI generated a new frame.


## INJURY_VARIATION

injury_state:

injury_identity:

location:

severity:

healing_stage:

allowed_variation:


Injury must remain persistent until an authorized healing transition occurs.


## HEALING_VARIATION

healing_stage:

healing_progress:

allowed_visual_change:

healing_rate:

scar_transition:

pain_transition:


Healing must be gradual when the story requires gradual healing.

AI must not instantly remove an injury between frames.


## BLOOD_VARIATION

blood_state:

fresh_blood:

dried_blood:

blood_location:

blood_amount:

environmental_transfer:

allowed_change:


Blood must persist according to:

time

movement

cleaning

washing

healing

environment

contact


## DIRT_VARIATION

dirt_state:

dirt_location:

dirt_amount:

environmental_source:

contact_source:

allowed_change:


Dirt must not disappear between generations without cause.


## SWEAT_VARIATION

sweat_state:

sweat_level:

skin_effect:

clothing_effect:

environmental_effect:

allowed_change:


Sweat may vary with:

temperature

activity

stress

fatigue

time


## WETNESS_VARIATION

wetness_state:

source:

affected_surface:

drying_rate:

environmental_condition:

allowed_change:


Wetness must evolve according to physical conditions.


## PHYSICS_VARIATION

physics_variation_allowed:

gravity:

mass:

inertia:

momentum:

collision:

friction:

contact:

cloth:

hair:

water:

fire:

smoke:


Physical laws must remain stable.

Variation must occur inside those laws.


## CONTACT_VARIATION

contact_state:

contact_points:

pressure:

grip:

surface_deformation:

weight_transfer:

contact_duration:

allowed_variation:


Contact must create believable physical consequences.


## CAMERA_VARIATION

camera_variation_allowed:

position:

orientation:

height:

lens:

focal_length:

framing:

focus:

depth_of_field:

camera_motion:

camera_speed:

allowed_range:


Camera variation must not destroy shot continuity.


## LIGHTING_VARIATION

lighting_variation_allowed:

light_direction:

intensity:

color_temperature:

shadow:

reflection:

diffusion:

allowed_range:


Lighting variation must remain consistent with:

time

location

light sources

weather

camera


## AUDIO_VARIATION

audio_variation_allowed:

breathing:

voice_micro_variation:

speech_timing:

ambient_sound:

foley:

music:

sfx:

volume:

spatial_position:


Audio variation must not change identity or dialogue meaning.


## VFX_VARIATION

vfx_variation_allowed:

position:

intensity:

scale:

motion:

duration:

particles:

lighting_interaction:

environment_interaction:

allowed_range:


VFX variation must remain inside the established effect state.


## TECHNICAL_VARIATION

technical_variation_allowed:

sampling:

noise:

compression:

upscaling:

denoising:

color_processing:

minor_texture_variation:

render_variation:


Technical variation is permitted only when it does not alter continuity-critical state.


## FRAME_LEVEL_VARIATION

frame_variation_required: yes

frame_to_frame_variation:

identity_stability:

state_stability:

motion_continuity:

physiology_variation:

environment_variation:

camera_variation:

lighting_variation:


Each frame should represent:

THE SAME WORLD

AT THE NEXT MOMENT.


## SHOT_LEVEL_VARIATION

shot_variation:

identity:

state:

performance:

spatial_state:

camera:

lighting:

environment:

motion:


Shot transitions must preserve all persistent state.


## SCENE_LEVEL_VARIATION

scene_variation:

timeline:

location:

environment:

characters:

costumes:

props:

performance:

lighting:

camera:


Scene-level variation must remain causally connected to preceding and following scenes.


## CROSS_EPISODE_VARIATION

cross_episode_variation:

identity:

age:

costume:

injury:

relationships:

knowledge:

props:

weapons:

locations:

environment:

world_state:


Long-term variation must follow the story timeline.


## TEMPORAL_LIMITS

variation_time_window:

frame_window:

shot_window:

scene_window:

sequence_window:

episode_window:

series_window:


Variation must be interpreted within the appropriate time scale.


## RATE_OF_CHANGE

rate_of_change:

identity_rate:

appearance_rate:

costume_rate:

injury_rate:

healing_rate:

fatigue_rate:

environment_rate:

lighting_rate:

camera_rate:

performance_rate:


A state must not change faster than physically or narratively possible.


## CAUSAL_VARIATION

variation_cause_required:

cause:

event:

physical_effect:

environmental_effect:

emotional_effect:

downstream_effect:


Major variation must have a cause.

Small natural variation may occur without a discrete narrative event when physiologically or physically normal.


## NATURAL_VARIATION

natural_variation_allowed:

natural_variation_categories:

natural_variation_range:

natural_variation_context:

natural_variation_frequency:


Natural variation exists to prevent artificial frozen behavior.


## RANDOM_VARIATION

random_variation_allowed:

random_variation_scope:

random_variation_seed:

random_variation_limit:

random_variation_attributes:

random_variation_exclusions:


Randomness must never control continuity-critical attributes.


## RANDOMNESS_EXCLUSIONS

randomness_must_not_control:

identity

age

canonical_features

persistent_injury

healing_state

scars

costume_identity

persistent_damage

prop_identity

weapon_identity

ownership

timeline

relationships

knowledge

transformation

location_geometry

world_rules


## VARIATION_CORRELATION

correlated_variation_required:

breathing_and_chest_motion:

breathing_and_clothing:

movement_and_hair:

movement_and_clothing:

movement_and_jewelry:

wind_and_hair:

wind_and_clothing:

rain_and_wetness:

heat_and_sweat:

injury_and_movement:

fatigue_and_posture:

emotion_and_micro_expression:

contact_and_deformation:


Related physical changes must occur together when causally appropriate.


## VARIATION_INERTIA

inertia_required: yes

previous_state_influence:

current_state_influence:

next_state_influence:


A frame must inherit appropriate motion and state from the previous frame.


## VARIATION_MEMORY

state_memory_required: yes

previous_frame_reference:

previous_shot_reference:

previous_scene_reference:

persistent_state_reference:

event_history_reference:


Variation must respect world memory.


## VARIATION_BOUNDS

minimum_allowed:

maximum_allowed:

preferred_range:

hard_limit:

soft_limit:

contextual_limit:


The system must distinguish:

preferred variation

acceptable variation

maximum variation

forbidden variation


## HARD_LIMITS

hard_limits:

identity_change: forbidden

age_reset: forbidden

body_proportion_change: forbidden

persistent_state_reset: forbidden

timeline_reset: forbidden

ownership_change: forbidden

unexplained_location_change: forbidden

unexplained_damage_removal: forbidden

unexplained_damage_creation: forbidden

unexplained_healing: forbidden

physics_violation: forbidden

spatial_teleportation: forbidden

anatomical_error: forbidden


## SOFT_LIMITS

soft_limits:

minor_pose_difference:

minor_expression_difference:

minor_gaze_difference:

minor_hand_difference:

minor_hair_difference:

minor_clothing_difference:

minor_environment_difference:

minor_lighting_difference:

minor_camera_difference:


Soft limits may vary within context.


## VARIATION_ESCALATION

variation_exceeds_limit:

exceeded_category:

observed_value:

allowed_value:

severity:

cause:

generation_blocked:

review_required:

correction_required:


## VARIATION_DRIFT

variation_drift_detected:

drift_category:

first_detected:

previous_state:

current_state:

drift_direction:

drift_rate:

drift_severity:

affected_generations:

correction_required:


Gradual drift is still an error if it eventually changes identity or continuity.


## VARIATION_ACCUMULATION

accumulation_detected:

variation_category:

initial_state:

current_state:

accumulated_change:

allowed_accumulation:

maximum_accumulation:

reset_required:

correction_required:


Small errors must not accumulate into a large continuity failure.


## VARIATION_RESET

reset_detected:

reset_category:

previous_state:

reset_state:

reset_cause:

authorized:

correction_required:


Unauthorized resets are continuity errors.


## VARIATION_CONFLICT

variation_conflict:

conflicting_limits:

authoritative_limit:

lower_priority_limit:

resolution:

resolution_status:


Priority order:

authoritative continuity

identity locks

persistent state

physics

timeline

spatial continuity

performance

natural variation

technical variation


## VARIATION_AND_MODEL_CHANGE

model_change:

previous_model:

new_model:

variation_difference:

identity_difference:

state_difference:

motion_difference:

human_realism_difference:

validation_required:


Model changes must not be mistaken for authorized variation.


## VARIATION_AND_REGENERATION

regeneration_reference:

previous_variation:

new_variation:

reason:

expected_change:

actual_change:

continuity_preserved:

regeneration_result:


## VARIATION_AND_SEED

seed_reference:

seed_change:

expected_variation:

actual_variation:

variation_within_limits:

seed_effect_on_identity:

seed_effect_on_state:


Seed changes may produce variation but may not authorize continuity changes.


## VARIATION_AND_REFERENCES

reference_set:

reference_version:

reference_change:

reference_effect:

variation_effect:

reference_authority:


Reference differences must be distinguished from natural AI variation.


## VARIATION_VALIDATION

validation_required: yes

identity_validation:

appearance_validation:

state_validation:

persistent_state_validation:

spatial_validation:

performance_validation:

physiology_validation:

physics_validation:

timeline_validation:

environment_validation:

costume_validation:

prop_validation:

weapon_validation:

animal_validation:

camera_validation:

lighting_validation:

audio_validation:

vfx_validation:

human_realism_validation:

validation_status:


## PRE_GENERATION_CHECK

variation_check_required: yes

current_limits_available:

identity_limits_available:

state_limits_available:

performance_limits_available:

physiology_limits_available:

physics_limits_available:

environment_limits_available:

camera_limits_available:

lighting_limits_available:

model_limits_available:

seed_limits_available:

variation_ready:


## POST_GENERATION_CHECK

actual_variation:

expected_variation:

variation_difference:

within_limits:

identity_preserved:

state_preserved:

persistent_state_preserved:

timeline_preserved:

spatial_state_preserved:

physics_preserved:

human_realism_preserved:

validation_status:


## APPROVAL

approval_status:

approved_variation:

approved_scope:

approved_by:

approval_timestamp:

approval_conditions:


Allowed values:

approved

conditionally_approved

rejected

changes_requested

locked

superseded

reopened


## CONDITIONAL_VARIATION

conditional_variation:

condition:

allowed_range:

forbidden_range:

expiration:

revalidation_required:


## VARIATION_PROPAGATION

propagation_allowed:

propagation_scope:

propagation_conditions:

propagation_validation:


Only validated variation may propagate.


## VARIATION_HISTORY

variation_history_reference:

previous_limits:

current_limits:

changed_limits:

change_reason:

changed_by:

change_timestamp:


Material changes must also be recorded in:

ai_change_history.md


## VARIATION_VERSION

variation_version:

previous_version:

version_reason:

changed_categories:

unchanged_categories:

superseded_version:

version_timestamp:


## VARIATION_AUDIT

audit_required: yes

limit_creation_audit:

limit_change_audit:

generation_audit:

validation_audit:

approval_audit:

propagation_audit:

drift_audit:

correction_audit:


## FINAL VARIATION RULE

THE PURPOSE OF VARIATION IS TO MAKE THE SAME CONTINUOUS WORLD LOOK AND BEHAVE NATURALLY.

Variation must create:

LIFE

BREATHING

MOVEMENT

REACTION

PHYSIOLOGICAL REALISM

ENVIRONMENTAL MOTION

NATURAL IMPERFECTION


Variation must NOT create:

IDENTITY DRIFT

STATE DRIFT

TIMELINE DRIFT

SPATIAL DRIFT

COSTUME RESET

DAMAGE RESET

INJURY RESET

AGE RESET

PROP RESET

WEAPON RESET

LOCATION RESET

PHYSICS BREAK

PERFORMANCE RESET


The system must therefore follow:

STABLE IDENTITY
+
STABLE AUTHORITATIVE STATE
+
PERSISTENT CONSEQUENCES
+
CAUSAL CHANGE
+
BOUNDED NATURAL VARIATION
=
CONTINUOUS REALISTIC WORLD


The most important distinction is:

SAME ENTITY
does not mean
SAME FRAME.

SAME STATE
does not mean
SAME POSE.

SAME EMOTION
does not mean
SAME EXPRESSION.

SAME COSTUME
does not mean
SAME FOLDS.

SAME HAIR
does not mean
SAME STRAND POSITIONS.

SAME LOCATION
does not mean
SAME ENVIRONMENTAL MOTION.

SAME CHARACTER
does not mean
ZERO PHYSIOLOGICAL VARIATION.


However:

NATURAL VARIATION MUST NEVER BECOME UNAUTHORIZED STATE CHANGE.


Final hierarchy:

CANON / RESEARCH
→ CONTINUITY STATE
→ IDENTITY / PERSISTENT STATE
→ PHYSICS / TIMELINE / SPATIAL STATE
→ PERFORMANCE / PHYSIOLOGY
→ VARIATION LIMITS
→ AI GENERATION
→ QA
→ APPROVAL


Variation is permitted only inside the boundaries established by the authoritative world state.
