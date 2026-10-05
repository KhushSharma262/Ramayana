# AI REFERENCE ASSETS

## PURPOSE

Defines the registration, classification, authority, usage, validation, compatibility, and inheritance rules for assets supplied to an AI generation system as references.

Reference assets may include:

- images
- photographs
- generated images
- generated video
- video frames
- previous approved outputs
- concept art
- sketches
- paintings
- 3D models
- scans
- maps
- architectural references
- costume references
- prop references
- weapon references
- animal references
- environment references
- location references
- diagrams
- technical references
- research documents
- canonical source material
- historical references
- texture references
- material references
- lighting references
- camera references
- motion references
- audio references
- voice references
- VFX references

A reference asset is evidence or an instruction source.

A reference asset is NOT automatically the source of truth.

The authority of every reference must be explicitly classified.


## CORE PRINCIPLE

REFERENCE ASSET
→ CLASSIFICATION
→ AUTHORITY
→ VALIDATION
→ COMPATIBILITY
→ APPROVED USE
→ AI GENERATION


The AI must never assume that a reference is authoritative merely because it looks convincing.

Visual similarity does not establish canonical authority.

Previous AI output does not establish continuity authority.

Concept art does not establish historical accuracy.

A beautiful image does not establish correct identity.


## ASSET_IDENTITY

reference_asset_id:

reference_asset_version:

asset_type:

asset_subtype:

asset_name:

asset_description:

asset_source:

asset_creator:

asset_owner:

asset_creation_date:

asset_registration_date:

asset_status:


## ASSET_STATUS

Allowed values:

registered

pending_validation

validated

approved

conditionally_approved

rejected

superseded

archived

unknown


Only validated or approved references may be used for production when the reference affects a continuity-critical element.


## REFERENCE_AUTHORITY

authority_level:

authority_source:

authority_scope:

authority_expiry:

authority_conditions:

authority_notes:


Possible authority levels:

AUTHORITATIVE

STRONGLY_AUTHORITATIVE

CONDITIONALLY_AUTHORITATIVE

REFERENCE_ONLY

INSPIRATIONAL_ONLY

TECHNICAL_REFERENCE

HISTORICAL_REFERENCE

CANON_REFERENCE

UNKNOWN

REJECTED


Authority must be scoped.

An asset may be authoritative for one attribute and non-authoritative for another.


## ATTRIBUTE_LEVEL_AUTHORITY

identity_authority:

appearance_authority:

costume_authority:

jewelry_authority:

prop_authority:

weapon_authority:

animal_authority:

location_authority:

architecture_authority:

environment_authority:

spatial_authority:

performance_authority:

physiology_authority:

motion_authority:

physics_authority:

camera_authority:

lighting_authority:

audio_authority:

vfx_authority:

historical_authority:

canonical_authority:

technical_authority:


Authority must never be assumed across unrelated attributes.


## SOURCE_CLASSIFICATION

source_classification:

source_reference:

source_evidence:

source_confidence:

source_date:

source_context:


Allowed source classifications include:

direct_canon

derived_canon

traditional_interpretation

historical_reconstruction

archaeological_reference

scholarly_reference

visual_reconstruction

directorial_choice

production_choice

previous_production_output

technical_reference

model_generated_reference

user_supplied_reference

unknown

uncertain


The classification must remain attached to the reference.


## PROVENANCE

provenance_required: yes

original_source:

source_chain:

derived_from:

modified_from:

generated_from:

edited_by:

processing_history:

conversion_history:

upscale_history:

restoration_history:

crop_history:

compositing_history:

metadata_history:


The system must preserve where the reference came from.

A transformed copy must remain traceable to the original reference.


## FILE_INFORMATION

file_path:

file_name:

file_format:

file_size:

resolution:

width:

height:

frame_rate:

duration:

color_space:

bit_depth:

audio_present:

compression:

checksum:

hash:

metadata:


Technical information must describe the actual asset and must not be invented.


## REFERENCE_ROLE

reference_role:

primary_reference:

secondary_reference:

supporting_reference:

comparison_reference:

negative_reference:

style_reference:

identity_reference:

state_reference:

continuity_reference:

motion_reference:

camera_reference:

lighting_reference:

environment_reference:

technical_reference:

historical_reference:

research_reference:


One asset may have multiple roles only when each role has been explicitly approved.


## PRIMARY_REFERENCE

primary_reference_allowed:

primary_reference_reason:

primary_reference_scope:

primary_reference_attributes:

primary_reference_restrictions:


The primary reference must be identified when multiple references are available.

The primary reference does not automatically control attributes outside its approved scope.


## SECONDARY_REFERENCES

secondary_reference_assets:

secondary_reference_purpose:

secondary_reference_scope:

secondary_reference_priority:

secondary_reference_restrictions:


Secondary references must not silently override primary authoritative information.


## NEGATIVE_REFERENCE

negative_reference_allowed:

negative_reference_assets:

negative_reference_purpose:

negative_reference_attributes:

negative_reference_scope:


A negative reference communicates what must NOT be reproduced.

It must never accidentally become a positive appearance reference.


## IDENTITY_REFERENCE

identity_reference_required:

identity_reference_assets:

identity_reference_scope:

identity_anchor_reference:

identity_attributes:

identity_confidence:


Identity references may preserve:

face structure

eye characteristics

hair structure

body proportions

distinctive physical features

age appearance

recognizable marks

voice identity

movement identity


Identity references must not automatically determine:

costume

historical period

canonical events

emotional state

current injury

current age progression

current environment


## STATE_REFERENCE

state_reference_required:

state_reference_assets:

state_reference_scope:

state_timestamp:

state_event:

state_condition:

state_persistence:

state_confidence:


A state reference must be associated with a known point in time.

A reference from an earlier state must not automatically be used as the current state.


## PREVIOUS_OUTPUT_REFERENCE

previous_output_reference:

generation_id:

generation_version:

approval_status:

continuity_state_reference:

reference_validity:

approved_elements:

rejected_elements:

unknown_elements:


Previous output references must be evaluated through:

ai_previous_output.md


A previous output is evidence of what was generated.

It is not automatically evidence of what should be generated.


## CONTINUITY_REFERENCE

continuity_reference:

continuity_state_id:

continuity_version:

continuity_scope:

continuity_dependencies:

continuity_status:


Continuity-critical references must correspond to the authoritative continuity state.


## COSTUME_REFERENCE

costume_reference:

garment_identity:

garment_components:

material:

construction:

color:

pattern:

ornamentation:

wear:

damage:

repair:

dirt:

stains:

wetness:

drape:

folds:

historical_basis:


Costume references must be separated into:

design reference

current-state reference

historical reference

material reference

construction reference


## JEWELRY_REFERENCE

jewelry_reference:

jewelry_identity:

material:

shape:

ornamentation:

placement:

ownership:

current_condition:

wear:

damage:

historical_basis:


Jewelry references must not cause jewelry to appear or disappear without an authorized state change.


## PROP_REFERENCE

prop_reference:

prop_identity:

prop_type:

owner:

material:

dimensions:

shape:

surface:

color:

decoration:

condition:

damage:

repair:

wear:

historical_basis:


Props must retain their identity and state across generations.


## WEAPON_REFERENCE

weapon_reference:

weapon_identity:

weapon_type:

owner:

material:

dimensions:

construction:

decoration:

condition:

damage:

repair:

wear:

usage_state:

historical_basis:


Weapon references must not cause unauthorized weapon substitutions or transformations.


## ANIMAL_REFERENCE

animal_reference:

animal_identity:

species:

breed_or_type:

age:

physical_features:

coat_or_skin:

markings:

condition:

behavior:

motion:

equipment:

ownership:

historical_basis:


Animal references must preserve individual identity where the animal is a recurring entity.


## LOCATION_REFERENCE

location_reference:

location_identity:

location_type:

architecture:

geometry:

layout:

materials:

surfaces:

landscape:

vegetation:

water:

structures:

damage:

repair:

weathering:

historical_basis:


Location references must not override established spatial continuity without authorization.


## ENVIRONMENT_REFERENCE

environment_reference:

weather_reference:

season_reference:

time_of_day:

terrain:

vegetation:

weather:

atmosphere:

dust:

fog:

smoke:

rain:

snow:

wind:

ground_condition:

surface_condition:

environmental_damage:


Environmental references must correspond to the current world state.


## SPATIAL_REFERENCE

spatial_reference:

coordinate_reference:

map_reference:

blocking_reference:

position_reference:

orientation_reference:

distance_reference:

scale_reference:

camera_reference:

object_relationships:

character_relationships:


Spatial references must be compatible with the established scene geometry.


## PERFORMANCE_REFERENCE

performance_reference:

actor_reference:

gesture_reference:

posture_reference:

facial_expression_reference:

gaze_reference:

movement_reference:

walking_reference:

combat_reference:

interaction_reference:

reaction_reference:

listening_reference:


Performance references may communicate movement and acting behavior but must not override the current emotional or narrative state unless explicitly approved.


## MOTION_REFERENCE

motion_reference:

motion_source:

movement_type:

movement_phase:

velocity:

acceleration:

momentum:

direction:

timing:

contact:

inertia:

motion_confidence:


Motion references must preserve physical continuity.


## HUMAN_REALISM_REFERENCE

human_realism_reference:

breathing_reference:

blink_reference:

eye_movement_reference:

facial_microexpression_reference:

skin_reference:

muscle_reference:

posture_reference:

weight_shift_reference:

hand_reference:

finger_reference:

walking_reference:

balance_reference:

fatigue_reference:

contact_reference:


Human-realism references may guide natural variation but must not cause identity drift.


## PHYSICS_REFERENCE

physics_reference:

gravity_reference:

mass_reference:

inertia_reference:

collision_reference:

contact_reference:

friction_reference:

cloth_reference:

hair_reference:

water_reference:

fire_reference:

smoke_reference:

material_interaction_reference:


Physics references must be compatible with the established world rules.


## CAMERA_REFERENCE

camera_reference:

camera_position:

camera_height:

camera_orientation:

lens:

focal_length:

field_of_view:

framing:

focus:

depth_of_field:

camera_motion:

camera_speed:

camera_acceleration:


Camera references must not override approved shot specifications without authorization.


## LIGHTING_REFERENCE

lighting_reference:

light_sources:

direction:

intensity:

color_temperature:

shadow:

reflection:

diffusion:

natural_light:

artificial_light:

firelight:

moonlight:

divine_light:


Lighting references must be compatible with:

time

location

weather

camera

environment

narrative state


## AUDIO_REFERENCE

audio_reference:

voice_reference:

speech_reference:

pronunciation_reference:

breathing_reference:

ambient_reference:

foley_reference:

music_reference:

sound_effect_reference:

spatial_audio_reference:


Audio references must preserve established voice and sound identities where applicable.


## VFX_REFERENCE

vfx_reference:

effect_identity:

effect_type:

scale:

position:

motion:

duration:

intensity:

interaction:

lighting_response:

environment_response:

end_state:


VFX references must correspond to an authorized supernatural, physical, or cinematic effect.


## CANON_REFERENCE

canon_reference:

source_title:

source_type:

text_reference:

chapter_reference:

verse_reference:

translation_reference:

edition_reference:

quotation_reference:

interpretation_reference:

confidence:


Canonical references must preserve their source classification.

The AI must not treat a visual depiction as direct scripture unless the source explicitly supports that conclusion.


## HISTORICAL_REFERENCE

historical_reference:

period:

region:

material_culture:

architecture:

textiles:

ornamentation:

tools:

weapons:

vehicles:

social_context:

historical_confidence:


Historical references are supporting evidence unless explicitly authorized as production authority.


## RESEARCH_REFERENCE

research_reference:

research_source:

research_topic:

research_date:

researcher:

source_quality:

confidence:

limitations:

contradictions:


Research references must preserve uncertainty and source limitations.


## REFERENCE_COMPATIBILITY

compatibility_check_required: yes

identity_compatible:

state_compatible:

timeline_compatible:

spatially_compatible:

costume_compatible:

prop_compatible:

weapon_compatible:

animal_compatible:

environment_compatible:

performance_compatible:

physics_compatible:

camera_compatible:

lighting_compatible:

audio_compatible:

vfx_compatible:

model_compatible:

parameter_compatible:


A reference that conflicts with a critical authoritative state must not be used without explicit resolution.


## REFERENCE_CONFLICT

conflict_present:

conflicting_assets:

conflicting_attributes:

conflict_type:

authoritative_asset:

authoritative_source:

resolution_method:

resolution_status:

user_decision_required:


Possible conflict types:

identity_conflict

appearance_conflict

costume_conflict

prop_conflict

weapon_conflict

location_conflict

spatial_conflict

performance_conflict

timeline_conflict

physics_conflict

canon_conflict

historical_conflict

lighting_conflict

camera_conflict

environment_conflict

state_conflict

transformation_conflict

model_conflict

technical_conflict


No critical conflict may be silently resolved.


## REFERENCE_PRIORITY

reference_priority_order:

1. approved continuity state
2. approved identity anchors
3. approved state references
4. direct authoritative source material
5. approved canonical/research references
6. approved production references
7. validated previous outputs
8. technical references
9. visual inspiration
10. unvalidated references


The exact order may be overridden only by an explicit production decision.


## REFERENCE_USAGE_RESTRICTIONS

usage_restrictions:

identity_only:

state_only:

costume_only:

environment_only:

camera_only:

lighting_only:

motion_only:

technical_only:

inspiration_only:


A reference must only influence the attributes for which it has been approved.


## REFERENCE_SCOPE

scope_type:

global:

series:

episode:

sequence:

scene:

shot:

frame:

asset_specific:

temporary:


A reference must not automatically propagate beyond its approved scope.


## TEMPORAL_SCOPE

valid_from:

valid_until:

story_time:

world_time:

scene_time:

shot_time:

state_timestamp:

expiration_condition:


A time-specific reference must not be treated as permanently current.


## PERSISTENCE

persistent_reference:

persistent_state_supported:

persistence_start:

persistence_end:

persistence_condition:

state_change_required:


Persistent references must remain active until an authorized state transition changes the relevant condition.


## REFERENCE_VERSIONING

reference_version:

previous_version:

version_reason:

modified_attributes:

unchanged_attributes:

superseded_version:

version_timestamp:


Changing a continuity-relevant reference requires a new version.


## REFERENCE_INTEGRITY

integrity_check_required: yes

checksum:

hash:

file_integrity:

metadata_integrity:

source_integrity:

modification_detected:

integrity_status:


Modified or corrupted references must be revalidated before use.


## REFERENCE_TRANSFORMATION

transformed_reference:

original_reference:

transformation_type:

crop:

resize:

upscale:

denoise:

color_adjustment:

restoration:

retouching:

background_removal:

compositing:

style_transfer:

transformation_effect_on_authority:


Transformations must not silently change the meaning or authority of a reference.


## REFERENCE_DERIVATION

derived_reference:

parent_reference:

derivation_method:

derived_attributes:

inherited_authority:

new_authority:

validation_required:


Derived assets do not automatically inherit all authority from their parent asset.


## REFERENCE_DUPLICATION

duplicate_reference_detected:

duplicate_of:

duplicate_reason:

preferred_reference:

duplicate_status:


Duplicate references should not create competing sources of truth.


## REFERENCE_RELIABILITY

reliability_score:

reliability_basis:

visual_quality:

source_quality:

continuity_reliability:

identity_reliability:

state_reliability:

technical_reliability:

known_limitations:


Reliability must be evaluated separately from visual quality.


## AI_GENERATION_USAGE

generation_use_allowed:

generation_models:

generation_modes:

generation_stages:

reference_weight:

reference_strength:

reference_lock:

reference_priority:

reference_blending_allowed:


Reference influence must remain within the approved scope.


## REFERENCE_WEIGHT

reference_weight_type:

reference_weight_value:

weight_locked:

weight_change_allowed:

weight_change_impact:


Technical reference weight must not be confused with authority.

A high visual influence does not make a reference authoritative.


## REFERENCE_BLENDING

blending_allowed:

blend_group:

blend_purpose:

blend_attributes:

blend_restrictions:

blend_conflict_check:


References may be blended only when their attributes are compatible.

Identity references must not be blended in a way that creates identity drift.


## REFERENCE_INHERITANCE

inheritance_allowed:

inherited_from:

inherited_attributes:

non_inherited_attributes:

inheritance_conditions:

inheritance_validation:


Only explicitly approved attributes may be inherited.


## REFERENCE_TO_PROMPT

prompt_reference:

prompt_role:

prompt_instructions:

prompt_restrictions:

prompt_priority:


The reference must be translated into prompt instructions only according to its approved role.


## REFERENCE_TO_CONTINUITY

continuity_update_allowed:

continuity_update_scope:

continuity_update_reason:

continuity_validation:

user_approval_required:


A reference must never automatically rewrite authoritative continuity.


## REFERENCE_TO_OUTPUT

expected_output_attributes:

reference_preserved_attributes:

reference_changed_attributes:

authorized_changes:

unauthorized_changes:


The generated output must be compared against the intended reference role.


## REFERENCE_VALIDATION

validation_required: yes

validated_against:

validation_method:

validation_result:

validation_errors:

uncertainties:

conflicts:

validation_timestamp:

validated_by:


## PRE_GENERATION_REFERENCE_CHECK

reference_check_required: yes

all_references_registered:

all_references_validated:

authority_classified:

scope_defined:

temporal_scope_defined:

conflicts_resolved:

identity_reference_valid:

state_reference_valid:

continuity_reference_valid:

model_compatible:

prompt_compatible:

generation_ready:


If a required reference fails validation:

generation_ready: no


## POST_GENERATION_REFERENCE_CHECK

generated_output_reference_comparison:

identity_match:

state_match:

persistent_state_match:

spatial_match:

costume_match:

prop_match:

environment_match:

performance_match:

physics_match:

camera_match:

lighting_match:

human_realism_match:

unauthorized_reference_influence:

reference_drift:

validation_status:


## REFERENCE_DRIFT

reference_drift_detected:

drift_type:

drift_source:

affected_attribute:

first_detected_generation:

affected_outputs:

severity:

correction_required:


Reference drift must be distinguished from:

identity drift

continuity drift

model drift

natural variation


## REFERENCE_CONTAMINATION

contamination_detected:

contaminating_reference:

affected_reference:

contaminated_attributes:

affected_generations:

containment_required:

revalidation_required:


An incorrect reference must not continue propagating through future generations.


## REFERENCE_RECALL

reference_recall_required:

reason:

affected_generations:

affected_prompts:

affected_outputs:

downstream_dependencies:

correction_required:


If a reference is discovered to be invalid, its historical use must remain recorded.

Future use must be blocked when necessary.


## REFERENCE_RETROACTIVE_ERROR

retroactive_error:

error_discovered_after_generation:

historical_outputs_affected:

continuity_impact:

reference_impact:

dependency_analysis_required:

historical_record_preserved:

downstream_correction_required:


Historical records must not be silently rewritten.


## REFERENCE_APPROVAL

approval_status:

approved_scope:

approved_attributes:

approved_for_generation:

approved_for_propagation:

approved_by:

approval_timestamp:

approval_conditions:


Approval must specify what exactly has been approved.


## PROPAGATION

propagation_allowed:

propagation_scope:

propagation_conditions:

propagation_dependencies:

propagation_validation:


Only validated and approved reference information may propagate into future generation.


## REFERENCE_EXPIRATION

expiration_required:

expiration_condition:

expiration_reason:

replacement_reference:

replacement_validation:


A reference may become invalid when:

state changes

costume changes

injury changes

location changes

time changes

model changes

technical requirements change

source validity changes


## REFERENCE_REPLACEMENT

replacement_required:

old_reference:

new_reference:

replacement_reason:

attribute_difference:

continuity_impact:

validation:

approval:


Replacing a reference must not silently change the entity or state.


## REFERENCE_LOCK

reference_lock:

locked_attributes:

lock_reason:

lock_scope:

unlock_authority:

unlock_event:


Identity-critical and continuity-critical references may require hard locking.


## REFERENCE_EXCEPTION

exception_allowed:

exception_type:

exception_reason:

exception_scope:

authorized_by:

expiration:

validation:


Exceptions must be explicit and traceable.


## REFERENCE_AUDIT

audit_required: yes

audit_history:

usage_history:

generation_history:

change_history:

approval_history:

conflict_history:

validation_history:

recall_history:


Every continuity-critical reference must remain traceable through its usage history.


## REFERENCE_REGISTRY

registry_id:

reference_asset_id:

asset_version:

authority:

scope:

status:

continuity_reference:

identity_reference:

state_reference:

generation_reference:

approval_reference:


The registry must provide one identifiable record for every production reference.


## FINAL RULE

A reference asset answers:

"WHAT INFORMATION MAY THE AI USE FROM THIS ASSET?"

It does NOT automatically answer:

"WHAT IS TRUE?"

Truth and production authority come from the appropriate authoritative source.

The system must therefore distinguish:

REFERENCE

EVIDENCE

AUTHORITY

IDENTITY

STATE

CONTINUITY

INSPIRATION

TECHNICAL GUIDANCE


The AI must never merge these categories automatically.

The final generation must always follow:

AUTHORITATIVE STATE
→ APPROVED REFERENCE ROLE
→ VALIDATED PROMPT
→ GENERATION
→ QA
→ APPROVAL
→ PROPAGATION


A reference may help the AI reproduce the world.

A reference may never silently redefine the world.
