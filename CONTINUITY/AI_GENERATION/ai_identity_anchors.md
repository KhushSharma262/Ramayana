# AI IDENTITY ANCHORS

## PURPOSE

Defines the identity anchors that AI generation must preserve so that the same entity remains recognizably the same entity across frames, shots, scenes, sequences, episodes, and the complete production.

This file applies to:

- characters
- animals
- props
- weapons
- buildings
- locations
- vehicles
- important environmental objects
- costumes when individually identifiable
- other persistent production entities

This file defines identity preservation.

It does not define canonical character information, appearance research, costume research, or visual design itself.

Those must be referenced from their authoritative source files.


## CORE PRINCIPLE

An AI-generated entity must remain the same entity unless an explicitly authorized identity-changing event occurs.

The AI must preserve identity across:

frame

shot

scene

sequence

episode

time progression

camera changes

lighting changes

environment changes

costume changes

performance changes

natural variation

model changes

generation changes


Generation must never create an accidental replacement entity.


## IDENTITY_REFERENCE

identity_anchor_id:

entity_id:

entity_type:

entity_name_reference:

continuity_entity_id:

identity_anchor_version:

identity_anchor_status:

identity_anchor_timestamp:


## AUTHORITATIVE_SOURCE

authoritative_identity_source:

authoritative_identity_source_type:

authoritative_identity_source_version:

authoritative_identity_source_timestamp:

authoritative_identity_approval:


The identity anchor must reference the authoritative identity information.

AI output must not become the source of identity merely because it appears visually convincing.


## IDENTITY_AUTHORITY

Identity authority hierarchy:

USER_APPROVED_IDENTITY
→ APPROVED_IDENTITY_RECORD
→ APPROVED_REFERENCE_ASSETS
→ VALIDATED_GENERATION_OUTPUT


Lower-level visual output must not silently override higher-level identity information.


## ANCHOR_CLASSIFICATION

Each identity anchor must be classified as one of:

absolute_locked

strongly_locked

controlled

variable

unknown

not_applicable


### ABSOLUTE_LOCKED

Absolute anchors must remain stable unless an explicitly authorized identity-changing event occurs.

Examples may include:

- core facial structure
- core body proportions
- unique identifying marks
- defining physical characteristics
- unique object geometry
- unique structural features
- approved voice identity


### STRONGLY_LOCKED

Strong anchors must remain highly consistent while allowing only minimal context-dependent variation.

Examples may include:

- hair structure
- eye structure
- characteristic posture
- characteristic movement
- characteristic costume identifiers
- distinctive jewelry
- distinctive object details


### CONTROLLED

Controlled anchors may naturally vary within explicitly defined limits.

Examples may include:

- facial expression
- posture
- gaze
- hair displacement
- clothing deformation
- jewelry movement
- minor environmental interaction


### VARIABLE

Variable attributes may naturally change without representing identity change.

Examples may include:

- blink timing
- breathing
- micro-expression
- temporary hair movement
- temporary cloth folds
- momentary posture
- environmental residue


Variable does not mean unrestricted.


## PRIMARY_IDENTITY_ANCHORS

primary_identity_anchor_ids:

primary_identity_features:

primary_identity_reference_assets:

primary_identity_reference_versions:


Primary anchors are the highest-priority visual identity features.

If generation quality forces a compromise, primary identity anchors must be preserved before lower-priority visual details.


## SECONDARY_IDENTITY_ANCHORS

secondary_identity_anchor_ids:

secondary_identity_features:

secondary_identity_reference_assets:

secondary_identity_reference_versions:


Secondary anchors support recognition when primary anchors are partially obscured.


## SUPPORTING_IDENTITY_ANCHORS

supporting_identity_anchor_ids:

supporting_identity_features:

supporting_identity_reference_assets:

supporting_identity_reference_versions:


Supporting anchors provide additional identity evidence but must not override primary or secondary anchors.


## FACE_IDENTITY

face_identity_reference:

face_identity_version:

face_structure_anchor:

facial_proportion_anchor:

forehead_anchor:

brow_anchor:

eye_structure_anchor:

nose_structure_anchor:

cheek_structure_anchor:

mouth_structure_anchor:

lip_structure_anchor:

jaw_anchor:

chin_anchor:

ear_anchor:

facial_asymmetry_anchor:

distinctive_facial_features:


The AI must preserve the underlying facial identity.

Expression may change.

Gaze may change.

Lighting may change.

Camera angle may change.

Facial identity must remain stable.


## EYE_IDENTITY

eye_identity_reference:

eye_shape_anchor:

eye_spacing_anchor:

eye_size_anchor:

iris_identity_anchor:

pupil_identity_anchor:

eyelid_structure_anchor:

eyebrow_structure_anchor:

gaze_variation_allowed:

blink_variation_allowed:


Eye movement and expression may naturally vary.

Core eye identity must not drift.


## HAIR_IDENTITY

hair_identity_reference:

hair_structure_anchor:

hairline_anchor:

hair_density_anchor:

hair_length_anchor:

hair_parting_anchor:

hair_texture_anchor:

hair_color_anchor:

hair_style_anchor:

hair_accessory_anchor:


Temporary movement, wind, gravity, contact, and environmental effects may alter hair position.

These must not unintentionally alter the underlying hair identity.


## BODY_IDENTITY

body_identity_reference:

body_structure_anchor:

body_proportion_anchor:

height_anchor:

shoulder_anchor:

torso_anchor:

arm_proportion_anchor:

leg_proportion_anchor:

hand_proportion_anchor:

foot_proportion_anchor:

body_build_anchor:

posture_identity_anchor:


Natural posture and movement may change.

Underlying body identity must remain stable.


## SKIN_IDENTITY

skin_identity_reference:

skin_characteristics_anchor:

skin_tone_reference:

skin_texture_reference:

distinctive_skin_features:

marks:

scars:

birthmarks:

other_identity_features:


Skin must remain physically plausible across lighting and environmental changes.

Lighting must not be mistaken for a change in skin identity.


## DISTINCTIVE_FEATURES

distinctive_feature_ids:

distinctive_feature_description:

feature_location:

feature_type:

feature_importance:

feature_lock_level:

feature_reference:


Distinctive features must remain consistent unless explicitly changed by a documented event.

Examples:

- scars
- birthmarks
- distinctive jewelry
- tattoos where applicable
- unique physical characteristics
- object damage
- structural marks


## BODY_STATE_VS_IDENTITY

Identity and temporary physical state must remain separate.

identity_feature:

temporary_state:

state_change:


Examples of temporary state:

- injury
- swelling
- dirt
- blood
- fatigue
- wetness
- bruising
- temporary posture
- temporary expression


A temporary state must not permanently redefine identity unless the continuity system explicitly establishes a permanent change.


## AGE_IDENTITY

age_identity_reference:

age_state_reference:

age_at_current_time:

age_progression_reference:

age_related_identity_features:

age_change_allowed:

age_change_rate:


Age progression must be consistent with the authoritative timeline.

The AI must not:

- regress age
- randomly increase age
- reset age
- change age because of model variation


Natural aging must occur according to the established story timeline.


## COSTUME_IDENTITY

costume_identity_reference:

costume_identity_version:

costume_identity_features:

costume_distinctive_features:

costume_accessories:

costume_jewelry:

costume_identifier_priority:


Costume identity and costume condition are separate.

A garment may become:

- dirty
- faded
- torn
- wet
- stained
- repaired
- worn

while remaining the same garment.


## JEWELRY_IDENTITY

jewelry_identity_reference:

jewelry_identity_version:

jewelry_items:

jewelry_unique_features:

jewelry_material:

jewelry_shape:

jewelry_size:

jewelry_location:

jewelry_owner:


Jewelry must retain identity across generations.

Position may change naturally through movement.

Identity must not change unless explicitly authorized.


## VOICE_IDENTITY

voice_identity_reference:

voice_identity_version:

voice_anchor:

timbre_anchor:

pitch_range:

speech_characteristics:

pronunciation_characteristics:

breathing_characteristics:

voice_variation_limits:


Voice variation must remain within the approved identity range.

Voice identity must not change merely because a different generation is produced.


## MOVEMENT_IDENTITY

movement_identity_reference:

movement_identity_version:

movement_signature:

walking_signature:

gesture_signature:

posture_signature:

balance_signature:

movement_variation_limits:


Movement identity refers to persistent characteristics of how an entity moves.

Temporary movement states remain controlled by performance and physiology continuity.


## ANIMAL_IDENTITY

animal_identity_reference:

species_reference:

individual_identity_features:

body_structure:

fur_or_skin_features:

markings:

eye_features:

movement_signature:

behavioral_identity:

age_identity:


Animals must remain individually identifiable where the production requires persistent individual identity.


## PROP_IDENTITY

prop_identity_reference:

prop_identity_version:

prop_type:

shape_anchor:

size_anchor:

material_anchor:

surface_anchor:

color_anchor:

distinctive_marks:

manufacturing_features:

damage_identity:

ownership_identity:


A prop must remain the same physical object unless:

destroyed

replaced

reconstructed

transformed

or otherwise changed by an explicitly documented event.


## WEAPON_IDENTITY

weapon_identity_reference:

weapon_identity_version:

weapon_type:

shape_anchor:

length_anchor:

material_anchor:

surface_anchor:

handle_anchor:

ornament_anchor:

distinctive_marks:

damage_identity:

ownership_identity:


Weapon identity must persist across use, movement, damage, repair, and changes in possession.


## LOCATION_IDENTITY

location_identity_reference:

location_identity_version:

location_geometry:

architectural_features:

structural_features:

material_features:

distinctive_landmarks:

spatial_signature:

environmental_signature:


A location must remain recognizable as the same physical location despite:

- lighting changes
- weather
- population changes
- temporary objects
- temporary damage
- camera changes
- time progression


## BUILDING_IDENTITY

building_identity_reference:

building_geometry:

structural_identity:

architectural_identity:

material_identity:

facade_identity:

entrance_identity:

window_identity:

roof_identity:

distinctive_features:

damage_identity:


Damage and repair modify the building state.

They do not automatically create a new building identity.


## ENVIRONMENTAL_OBJECT_IDENTITY

object_identity_reference:

object_type:

shape:

material:

size:

position_reference:

distinctive_features:

ownership:

persistent_state:


Persistent environmental objects must retain their identity unless explicitly removed, destroyed, replaced, or transformed.


## IDENTITY_REFERENCE_ASSETS

reference_asset_ids:

reference_asset_type:

reference_asset_version:

reference_role:

reference_priority:

reference_validity:

reference_approval:


Reference assets must be validated before being treated as identity anchors.


## MULTI_REFERENCE_IDENTITY

multiple_identity_references:

reference_consistency:

reference_conflict:

reference_conflict_type:

authoritative_reference:

conflict_resolution:

resolution_status:


Multiple references must not be blindly blended.

If references conflict, the conflict must be recorded and resolved.

The AI must not average conflicting identity features into a new identity.


## OCCLUSION

identity_occlusion:

occluded_features:

visible_features:

required_inference:

inference_allowed:

inference_source:


When an identity feature is temporarily hidden, the AI must retain the established identity rather than inventing a replacement feature.


## CAMERA_VARIATION

camera_angle:

camera_distance:

lens:

perspective:

framing:

camera_visibility_effect:


Identity must remain stable across camera changes.

Camera perspective may change perceived proportions.

Perspective changes must not become identity changes.


## LIGHTING_VARIATION

lighting_condition:

lighting_direction:

lighting_color:

lighting_intensity:

shadow_condition:


Lighting may change apparent:

- color
- contrast
- shadow
- skin appearance
- hair appearance

but must not alter the underlying identity.


## ENVIRONMENTAL_VARIATION

weather:

wind:

rain:

dust:

water:

temperature:

humidity:

environmental_effects:


Environmental interaction may alter temporary appearance.

It must not silently alter permanent identity.


## NATURAL_HUMAN_VARIATION

natural_variation_allowed: yes

variation_reference:

variation_limits_reference:


Allowed natural variation may include:

- blink timing
- eye movement
- gaze
- breathing
- micro-expression
- subtle facial movement
- posture adjustment
- weight shift
- muscle tension
- hand movement
- finger movement
- hair displacement
- cloth displacement


Natural variation must remain inside approved limits.

Natural variation must never become identity drift.


## IDENTITY_DRIFT_DETECTION

identity_drift_detection_required: yes

face_drift:

body_drift:

eye_drift:

hair_drift:

skin_drift:

voice_drift:

movement_drift:

costume_identity_drift:

prop_identity_drift:

location_identity_drift:

animal_identity_drift:


Any material identity drift must be flagged.


## IDENTITY_SIMILARITY

identity_comparison_required: yes

comparison_reference:

comparison_method:

comparison_result:

similarity_score:

minimum_acceptable_similarity:

identity_failure_threshold:


Similarity metrics may support validation but must never replace human or authoritative continuity validation.


## IDENTITY_FAILURE

identity_failure:

failure_type:

failed_anchor:

failure_severity:

affected_generation:

affected_frames:

affected_shots:

affected_scenes:

correction_required:


An identity failure must prevent the affected output from becoming an authoritative reference until corrected or explicitly approved.


## IDENTITY_CORRECTION

correction_required:

correction_target:

correction_reference:

correction_method:

correction_scope:

correction_validation:

correction_approval:


Identity correction must preserve the authoritative identity anchor.

A correction must not create a new unintended identity.


## MODEL_CHANGE

model_change:

previous_model:

new_model:

identity_revalidation_required:

identity_revalidation_status:


Changing AI models must trigger identity validation for new generations.

Existing approved outputs remain historical records.


## GENERATION_CHANGE

generation_change:

previous_generation:

new_generation:

identity_comparison_required:

identity_comparison_result:


Every new generation must be compared against the applicable identity anchors.


## REGENERATION

regeneration:

original_generation:

regeneration_reason:

identity_error:

identity_preserved:

identity_revalidation:


Regeneration must not use an identity-corrupted output as the authoritative identity source.


## IDENTITY_LOCK

identity_lock_status:

absolute_identity_locks:

strong_identity_locks:

controlled_identity_features:

variable_identity_features:


Locked identity features may not be changed without an authorized identity-changing event.


## IDENTITY_CHANGE_EVENT

identity_change_event:

identity_change_type:

identity_change_cause:

previous_identity:

new_identity:

event_reference:

approval_reference:


Identity changes must have an explicit cause.

A generation failure is not a valid identity-change cause.


## TRANSFORMATION_EXCEPTION

transformation_identity_change:

transformation_reference:

base_identity:

transformed_identity:

transformation_start:

transformation_end:

transformation_rules:


A canonical or explicitly approved transformation may temporarily or permanently alter visible identity.

The transformation must remain linked to the underlying entity.


## REPLACEMENT_EXCEPTION

entity_replacement:

original_entity:

replacement_entity:

replacement_reason:

replacement_event:

replacement_approval:


A replacement entity must never be silently treated as the original entity.


## IDENTITY_CONFLICT

identity_conflict:

conflicting_identity_sources:

conflicting_anchor_values:

authoritative_identity:

resolution:

resolution_status:


Unresolved identity conflicts must block affected generation.


## IDENTITY_PROPAGATION

identity_propagation_required: yes

identity_source:

identity_target:

propagation_scope:

propagation_status:

propagation_validation:


Approved identity anchors must propagate to all applicable future generations.


## IDENTITY_INHERITANCE

identity_inheritance_required: yes

inherited_identity_reference:

inherited_identity_version:

inherited_anchor_ids:

inherited_anchor_status:


Identity must be inherited unless an explicit identity-changing event exists.


## IDENTITY_AUDIT

identity_audit_required: yes

identity_reference_complete:

primary_anchors_defined:

secondary_anchors_defined:

supporting_anchors_defined:

reference_assets_validated:

identity_locks_defined:

variation_limits_defined:

conflicts_resolved:

identity_validation_complete:

approval_complete:


## IDENTITY_INTEGRITY

The following are prohibited:

- face drift
- body-proportion drift
- unexplained age change
- unexplained hair identity change
- unexplained eye identity change
- unexplained skin identity change
- unexplained distinctive-feature change
- unexplained jewelry identity change
- unexplained costume identity change
- unexplained prop identity change
- unexplained weapon identity change
- unexplained animal identity change
- unexplained location identity change
- replacing an entity with a visually similar entity
- blending conflicting references into a new identity
- using rejected generations as identity references
- using unvalidated generations as identity authority
- allowing lighting to redefine identity
- allowing camera perspective to redefine identity
- allowing natural variation to become identity drift
- allowing model changes to silently redefine identity
- allowing generation errors to become identity anchors
- changing identity without a documented event
- treating visual similarity alone as proof of identity


## FINAL_RULE

Identity anchors define the persistent visual and behavioral identity of an entity.

The AI may change:

expression

gaze

blink

breathing

posture

weight distribution

hair movement

clothing deformation

environmental interaction

other approved natural variation


The AI may not change the underlying identity without an explicitly authorized event.

The goal is not to make every frame pixel-identical.

The goal is to make every frame unmistakably belong to the SAME CONTINUOUS ENTITY while preserving believable human variation.

IDENTITY MUST REMAIN STABLE.

STATE MAY EVOLVE.

PERFORMANCE MAY VARY.

ENVIRONMENT MAY CHANGE.

TIME MAY PROGRESS.

BUT THE ENTITY MUST REMAIN THE SAME ENTITY.
