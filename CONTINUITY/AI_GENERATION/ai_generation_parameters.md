# AI GENERATION PARAMETERS

## PURPOSE

Defines and records the exact technical parameters used to generate an AI output.

This file exists to make every generation:

- reproducible where technically possible
- auditable
- versioned
- comparable
- traceable
- compatible with continuity validation

Parameters describe HOW an output was generated.

They do not determine WHAT the story state is.

Authoritative story and continuity state must come from the continuity system.


## CORE PRINCIPLE

Every generation must preserve a complete record of the parameters actually used.

Parameters must never be reconstructed from memory when the exact values are available.

If a parameter is unknown:

parameter_status: unknown

The system must not invent a parameter value.


## PARAMETER_RECORD_ID

parameter_record_id:

generation_id:

asset_id:

asset_type:

generation_version:

parameter_version:

parameter_timestamp:


## MODEL_REFERENCE

provider:

model_name:

model_family:

model_version:

model_release:

checkpoint:

api_version:

software_version:

workflow_version:

pipeline_version:


Model information must reference the corresponding record in:

ai_model_version.md


## GENERATION_MODE

generation_mode:

Allowed values:

strict

reference_guided

image_to_video

text_to_video

image_generation

video_generation

audio_generation

voice_generation

motion_generation

upscaling

interpolation

editing

compositing

other


The selected mode must be compatible with the asset being generated.


## INPUT_CONFIGURATION

input_type:

input_asset_ids:

input_reference_ids:

input_frame_ids:

input_shot_ids:

input_scene_ids:

input_video:

input_image:

input_audio:

input_mask:

input_depth:

input_pose:

input_segmentation:

input_motion_reference:

input_3d_reference:

input_camera_reference:


Every input used materially in generation must be identifiable.


## PROMPT_CONFIGURATION

prompt_reference:

prompt_version:

prompt_text_reference:

prompt_constraints_reference:

negative_constraints_reference:

system_instruction_reference:

generation_instruction_reference:


The exact prompt version used for a generation must remain identifiable.

Prompt changes must be recorded through ai_change_history.md.


## NEGATIVE_PROMPT_CONFIGURATION

negative_prompt_reference:

negative_prompt_version:

negative_prompt_text_reference:


Negative constraints must remain distinguishable from ordinary generation instructions.


## REFERENCE_CONFIGURATION

reference_asset_ids:

reference_asset_versions:

reference_roles:

identity_reference_strength:

appearance_reference_strength:

costume_reference_strength:

environment_reference_strength:

motion_reference_strength:

camera_reference_strength:

lighting_reference_strength:

style_reference_strength:

physics_reference_strength:

audio_reference_strength:


Reference strengths must be recorded only when supported by the generation system.

Unsupported parameters must be marked:

not_applicable


## IDENTITY_CONFIGURATION

identity_anchor_reference:

identity_anchor_version:

identity_strength:

face_reference_strength:

body_reference_strength:

voice_reference_strength:

identity_consistency_method:

identity_lock_status:


Identity parameters are continuity-critical.

Any material change must trigger the applicable continuity validation.


## SEED_CONFIGURATION

seed_reference:

primary_seed:

random_seed:

variation_seed:

noise_seed:

latent_seed:

sampler_seed:


A seed is a reproducibility mechanism.

A seed is not an authority over continuity.

Identical seeds do not guarantee identical outputs when the model, workflow, references, parameters, software, or other generation conditions differ.


## SAMPLING_CONFIGURATION

sampler:

sampling_method:

sampling_steps:

scheduler:

guidance_scale:

cfg_scale:

temperature:

top_p:

top_k:

noise_level:

denoise_strength:

strength:


Only parameters supported by the selected model or workflow should be populated.

Unsupported fields must be marked:

not_applicable


## IMAGE_PARAMETERS

resolution_width:

resolution_height:

aspect_ratio:

image_format:

color_space:

bit_depth:

alpha_channel:

image_quality:


Resolution changes must be recorded as parameter changes.

A resolution change must not silently alter the intended continuity state.


## VIDEO_PARAMETERS

video_width:

video_height:

fps:

frame_rate:

frame_count:

duration:

timebase:

video_codec:

video_container:

bitrate:

keyframe_interval:


The exact temporal configuration must be preserved where supported.


## FRAME_GENERATION_PARAMETERS

start_frame:

end_frame:

frame_range:

frame_interpolation:

interpolation_method:

interpolation_strength:

motion_consistency:

temporal_consistency:

frame_consistency_method:


Frame generation must remain consistent with the authoritative frame-level continuity state.


## MOTION_PARAMETERS

motion_strength:

motion_scale:

motion_guidance:

motion_reference:

motion_reference_strength:

motion_smoothing:

motion_consistency:

motion_blur:

camera_motion_strength:

character_motion_strength:

environment_motion_strength:


Motion parameters must not override prescribed movement continuity.


## CAMERA_PARAMETERS

camera_reference:

camera_type:

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

aperture:

shutter:

camera_motion:

camera_motion_speed:

camera_motion_acceleration:

camera_stabilization:


Camera parameters must remain consistent with the authoritative camera state.


## LIGHTING_PARAMETERS

lighting_reference:

lighting_mode:

light_sources:

light_direction:

light_intensity:

light_color:

color_temperature:

contrast:

exposure:

shadow_strength:

ambient_light:

environment_light:

divine_light_reference:


Lighting parameters must not silently change established environmental or temporal lighting conditions.


## PHYSICS_PARAMETERS

physics_reference:

physics_engine:

gravity:

collision_enabled:

collision_method:

rigid_body_simulation:

cloth_simulation:

hair_simulation:

fluid_simulation:

water_simulation:

fire_simulation:

smoke_simulation:

wind:

friction:

mass:

inertia:

momentum:

contact_simulation:


Physics parameters must remain subordinate to the authoritative physics state.


## CLOTHING_PARAMETERS

cloth_simulation:

cloth_solver:

cloth_stiffness:

cloth_damping:

cloth_mass:

cloth_collision:

cloth_wind_response:

cloth_motion_strength:

cloth_deformation:

cloth_contact_response:


Generation parameters must not erase persistent costume damage, wear, stains, fading, tears, wetness, or repairs.


## HAIR_PARAMETERS

hair_simulation:

hair_solver:

hair_density:

hair_motion:

hair_collision:

hair_wind_response:

hair_gravity:

hair_damping:

hair_deformation:


Hair parameters may create natural variation but must not alter established identity-defining hair characteristics without authorization.


## ENVIRONMENT_PARAMETERS

environment_reference:

environment_simulation:

weather_simulation:

wind:

rain:

snow:

fog:

dust:

smoke:

temperature:

humidity:

ground_condition:

surface_condition:

environment_activity:


Environmental parameters must remain compatible with the authoritative environment state.


## AUDIO_PARAMETERS

audio_generation_enabled:

audio_model:

audio_model_version:

sample_rate:

bit_depth:

channels:

voice_reference:

voice_identity_strength:

voice_pitch:

voice_tone:

voice_speed:

voice_rhythm:

speech_style:

breathing_audio:

ambient_audio:

foley_audio:

music_audio:

spatial_audio:


Audio parameters must not alter approved voice identity or dialogue continuity.


## VOICE_PARAMETERS

voice_model:

voice_model_version:

voice_reference:

voice_identity_strength:

pitch:

pitch_variation:

timbre:

speaking_rate:

speech_rhythm:

breath_rate:

emotion_control:

pronunciation_control:

accent_control:


Voice parameters must remain consistent with the authoritative voice identity.


## VFX_PARAMETERS

vfx_model:

vfx_version:

effect_type:

effect_strength:

effect_duration:

effect_scale:

effect_position:

effect_motion:

particle_density:

particle_speed:

particle_size:

emission_rate:

opacity:

transparency:

glow:

light_interaction:

shadow_interaction:

reflection_interaction:

environment_interaction:


VFX parameters must remain consistent with the authoritative VFX state.


## UPSCALING_PARAMETERS

upscaling_enabled:

upscaler:

upscaler_version:

scale_factor:

target_resolution:

detail_strength:

sharpening:

artifact_reduction:


Upscaling must not create apparent identity or continuity changes.

If upscaling changes a continuity-relevant feature, the output must be revalidated.


## POST_PROCESSING_PARAMETERS

post_processing_enabled:

color_grading:

exposure_adjustment:

contrast_adjustment:

saturation_adjustment:

sharpness:

noise_reduction:

film_grain:

motion_blur:

depth_of_field:

lens_effects:

vignette:

compositing:

other_processing:


Post-processing must not be used to conceal a continuity error.


## COLOR_PARAMETERS

color_profile:

color_space:

white_balance:

temperature:

tint:

exposure:

contrast:

highlights:

shadows:

saturation:

gamma:

lut:

lut_version:


Color changes must not be mistaken for changes in canonical appearance unless explicitly approved.


## OUTPUT_PARAMETERS

output_format:

output_resolution:

output_fps:

output_duration:

output_codec:

output_quality:

output_bitrate:

output_color_space:

output_bit_depth:

output_filename:

output_location:

output_hash:


The final output must be uniquely identifiable.


## HARD_PARAMETERS

hard_parameters:

Hard parameters are parameters that must not change without explicit approval.

Examples may include:

identity_strength

reference_identity

camera_framing

camera_position

camera_lens

frame_rate

resolution_when_continuity_relevant

motion_constraints

voice_identity

critical physics settings

critical temporal settings


## SOFT_PARAMETERS

soft_parameters:

Soft parameters may vary when the change does not affect continuity.

Examples may include:

non-material sampling adjustments

render optimization

file compression

temporary processing settings

technical optimization


A soft parameter becomes continuity-critical if its change produces a material continuity difference.


## PARAMETER_LOCK

parameter_lock_status:

locked_parameters:

conditionally_locked_parameters:

unlocked_parameters:

lock_reason:

lock_reference:

lock_approval:


Locked parameters must not be changed silently.


## PARAMETER_CHANGE

parameter_change_detected:

changed_parameter:

previous_value:

new_value:

change_reason:

change_authorization:

continuity_impact:

validation_required:

validation_status:

change_history_reference:


Every material parameter change must create a corresponding entry in:

ai_change_history.md


## PARAMETER_VERSION

parameter_version:

previous_parameter_version:

parameter_version_reason:

parameter_version_timestamp:

supersedes_parameter_version:


Every materially different parameter configuration must have a new parameter version.


## REPRODUCIBILITY

reproducibility_status:

reproduction_attempted:

reproduction_result:

reproduction_difference:

reproduction_failure_reason:


Reproducibility must consider:

model

model_version

workflow

pipeline

prompt

negative_prompt

references

reference_versions

parameters

seed

software

hardware_or_runtime_when_relevant


A seed alone is insufficient to guarantee reproduction.


## CONTINUITY_IMPACT

continuity_impact:

identity_impact:

appearance_impact:

performance_impact:

physiology_impact:

spatial_impact:

physics_impact:

timeline_impact:

environment_impact:

camera_impact:

lighting_impact:

audio_impact:

vfx_impact:


Any material continuity impact requires validation.


## NATURAL_VARIATION

natural_variation_enabled:

variation_limit_reference:

variation_seed:

variation_parameters:

variation_scope:


Natural variation is permitted only within the limits defined by:

ai_variation_limits.md


Natural variation must never become an uncontrolled identity or continuity change.


## PARAMETER_CONFLICT

parameter_conflict:

conflicting_parameter:

conflicting_values:

conflicting_sources:

authoritative_parameter:

conflict_resolution:

resolution_status:


Conflicting parameter definitions must not be silently reconciled.


## MISSING_PARAMETER

missing_parameter:

missing_parameter_reason:

parameter_required:

generation_blocked:

resolution_required:


If a parameter is essential to reproduce or safely generate the output and its value is unavailable:

generation_blocked: yes


The system must not invent an essential parameter value.


## PARAMETER_VALIDATION

parameter_validation_required: yes

parameter_validation_status:

parameter_validation_method:

validated_against:

validation_timestamp:

validation_result:

validation_errors:


Parameters must be validated against the selected model/workflow when technically required.


## PARAMETER_AUDIT

parameter_audit_required: yes

parameter_record_complete:

exact_parameters_recorded:

unsupported_parameters_identified:

unknown_parameters_identified:

missing_parameters_identified:

parameter_changes_recorded:

validation_completed:

approval_completed:


## TECHNICAL_FAILURE

technical_failure:

failure_type:

failed_parameter:

failure_description:

affected_generation:

recovery_action:

new_parameter_version_required:

continuity_state_affected:


A technical failure must not silently alter the intended continuity state.


## PARAMETER_INTEGRITY

The following are prohibited:

- silently changing a parameter
- inventing an unknown parameter
- overwriting historical parameter values
- changing a locked parameter without authorization
- using an incompatible parameter with the selected model
- treating a seed as the source of continuity
- treating a technical parameter as canon
- allowing parameters to override authoritative continuity
- allowing post-processing to hide continuity errors
- allowing model-specific defaults to replace missing critical values without recording them
- assuming two models interpret the same parameter identically
- assuming identical seeds guarantee identical outputs
- allowing a parameter change to propagate without dependency analysis


## FINAL_RULE

AI generation parameters define the technical conditions under which an output was produced.

They provide reproducibility, auditability, and technical traceability.

They do not define canon.

They do not define story state.

They do not override continuity.

They do not override approved identity.

They do not override persistent state.

They do not override user-approved production decisions.

The authoritative relationship is:

CONTINUITY STATE
→ GENERATION CONSTRAINTS
→ GENERATION PARAMETERS
→ AI MODEL
→ GENERATION
→ VALIDATION
→ APPROVAL
→ OUTPUT
