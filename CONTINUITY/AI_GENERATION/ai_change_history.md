# AI CHANGE HISTORY

## PURPOSE

Records every meaningful change made to an AI-generation state, configuration, reference, constraint, dependency, or production decision.

This file provides an immutable audit trail of how an AI-generated output or its generation conditions changed over time.

It does not replace:
- ai_generation_state.md
- ai_generation_version.md
- ai_regeneration_history.md
- ai_generation_parameters.md

Those files define the current state, generation version, regeneration events, and technical parameters respectively.


## CORE PRINCIPLE

Every meaningful change must be traceable.

No meaningful change may occur silently.

Every recorded change must identify:

- what changed
- where it changed
- why it changed
- who or what caused the change
- what the previous value was
- what the new value is
- which assets are affected
- which dependencies are affected
- whether continuity is affected
- whether regeneration is required
- whether validation is required
- whether approval is required


## CHANGE_IDENTITY

change_id:

change_timestamp:

change_sequence_number:

change_type:

change_status:

change_source:

changed_by:

change_reason:

change_description:


## CHANGE_SOURCE

Allowed change_source values:

user_change

ai_change

system_change

pipeline_change

automatic_correction

model_change

reference_change

continuity_change

canon_change

research_change

production_change

technical_change

qa_change

approval_change

override_change

migration_change

unknown


An unknown change source must be investigated before the change can become an approved production state.


## CHANGE_STATUS

Allowed change_status values:

proposed

pending_review

approved

conditionally_approved

rejected

superseded

reverted

archived

invalid


A rejected, invalid, or superseded change must remain in the historical record.

Historical records must never be silently deleted.


## AFFECTED_ASSET

affected_asset_ids:

affected_asset_types:

affected_generation_ids:

affected_generation_versions:

affected_frame_ids:

affected_shot_ids:

affected_scene_ids:

affected_sequence_ids:

affected_episode_ids:


## CHANGED_DOMAIN

changed_domain:

Allowed changed_domain values may include:

identity

appearance

character_state

costume

prop

weapon

animal

location

environment

spatial

performance

physiology

transformation

timeline

physics

camera

lighting

audio

vfx

reference

prompt_constraint

negative_constraint

generation_parameter

model

seed

variation_limit

workflow

pipeline

approval

continuity

canon

research

other


## CHANGE_SCOPE

change_scope:

Allowed change_scope values:

frame

shot

scene

sequence

episode

series

asset

entity

generation

generation_pipeline

global


The smallest valid scope should be used.

A global change must not be declared when a narrower scope is sufficient.


## PREVIOUS_STATE

previous_state_reference:

previous_state_version:

previous_state_value:

previous_state_status:

previous_state_approval:


The previous state must remain recoverable.

The previous state must not be replaced by the new state without preserving its historical identity.


## NEW_STATE

new_state_reference:

new_state_version:

new_state_value:

new_state_status:

new_state_approval:


The new state becomes authoritative only after passing the required approval and validation process.


## CHANGE_REASON

change_reason:

Required reason categories may include:

continuity_correction

identity_correction

appearance_correction

performance_correction

physiological_correction

spatial_correction

physics_correction

costume_correction

prop_correction

weapon_correction

environment_correction

timeline_correction

camera_correction

lighting_correction

audio_correction

vfx_correction

canon_correction

research_correction

model_upgrade

technical_fix

parameter_adjustment

reference_update

user_directed_change

qa_correction

error_correction

production_requirement

other


## CHANGE_CAUSE

change_cause:

change_trigger:

trigger_reference:

trigger_event:

triggered_by_previous_state:

triggered_by_external_event:

triggered_by_user:

triggered_by_qa:

triggered_by_dependency_change:


Every persistent continuity change must have a valid cause.

A technical change must not automatically be treated as a story-state change.


## VALUE_COMPARISON

value_comparison_required: yes

old_value:

new_value:

value_difference:

difference_type:

difference_is_intentional:

difference_is_continuity_relevant:


The change must be explicitly classified as one of:

no_change

minor_change

material_change

continuity_change

unknown


## CONTINUITY_IMPACT

continuity_impact:

continuity_state_changed:

persistent_state_changed:

identity_changed:

appearance_changed:

performance_changed:

physiological_state_changed:

spatial_state_changed:

temporal_state_changed:

environment_state_changed:

physics_state_changed:

costume_state_changed:

prop_state_changed:

weapon_state_changed:

audio_state_changed:

camera_state_changed:

lighting_state_changed:

vfx_state_changed:


Any field marked yes must identify the corresponding continuity dependency.


## PERSISTENCE_IMPACT

persistent_consequence:

persistence_duration:

persistence_start:

persistence_end:

affected_future_states:

affected_past_states:

requires_downstream_update:

downstream_update_scope:


A persistent change must continue into future applicable states until another valid event changes it.

A change must not disappear merely because a new AI generation is created.


## DEPENDENCY_IMPACT

dependency_analysis_required: yes

upstream_dependencies:

changed_upstream_dependency:

downstream_dependencies:

affected_downstream_assets:

unaffected_downstream_assets:

dependency_chain_reference:

minimum_required_update_scope:


When a change affects downstream continuity, the affected dependency chain must be identified.

Unrelated assets must not be changed or regenerated unnecessarily.


## GENERATION_IMPACT

generation_impact:

generation_state_changed:

generation_version_changed:

new_generation_required:

regeneration_required:

regeneration_scope:

generation_parameters_changed:

model_changed:

seed_changed:

reference_changed:

prompt_constraints_changed:

negative_constraints_changed:

variation_limits_changed:


A change to generation configuration does not automatically mean that the story state changed.

A story-state change and a generation-configuration change must remain distinguishable.


## REFERENCE_IMPACT

reference_changed:

previous_reference_ids:

new_reference_ids:

reference_reason:

reference_authority_changed:

reference_conflict_created:

reference_conflict_resolved:

reference_validation_required:


A reference change must not silently change the authoritative continuity state.

If references conflict, the conflict must be recorded and resolved according to the continuity hierarchy.


## MODEL_IMPACT

model_changed:

previous_model:

new_model:

model_compatibility_required:

model_compatibility_status:

model_behavior_difference:

continuity_revalidation_required:


Changing the AI model does not invalidate historical outputs.

Historical approved outputs remain historical records.

New generations must be validated against the authoritative continuity state even when a different AI model is used.


## PARAMETER_IMPACT

parameter_changed:

previous_parameters_reference:

new_parameters_reference:

material_parameter_change:

continuity_relevant_parameter:

parameter_impact_description:


Parameters that materially affect identity, motion, appearance, spatial continuity, physics, audio, or other continuity-controlled domains must be versioned and validated.


## USER_CHANGE

user_change:

user_change_reference:

user_instruction:

user_decision:

user_override:

override_scope:

override_reason:

override_affects_canon:

override_affects_continuity:

override_affects_generation:

override_approval:


A user override changes the approved production decision when explicitly authorized.

A user override does not rewrite historical records.

A user override does not automatically change canonical source material.


## AI_CHANGE

ai_change:

ai_generated_change:

ai_proposed_change:

ai_detected_change:

ai_automatic_change:

ai_change_reason:

ai_change_approved:


An AI-generated change is never authoritative solely because the AI produced it.

AI-generated changes require the applicable validation and approval process.


## AUTOMATIC_CORRECTION

automatic_correction:

correction_trigger:

original_error:

correction_action:

correction_scope:

correction_result:

correction_validated:

correction_approved:


Automatic correction must not silently modify an approved continuity state.

If automatic correction changes a persistent state, it must create a complete change-history record.


## CHANGE_VALIDATION

validation_required: yes

validation_status:

validation_method:

validated_against:

validation_reference:

validation_timestamp:

validation_result:

validation_errors:

remaining_uncertainties:


A change is not considered fully valid until the required validation has passed.


## APPROVAL

approval_required:

approval_status:

approved_by:

approval_reference:

approval_timestamp:

approval_notes:


Approval must be explicit.

The absence of an error does not constitute approval.


## REGENERATION_RELATIONSHIP

regeneration_triggered:

regeneration_history_reference:

original_generation_id:

replacement_generation_id:

regeneration_reason:

continuity_state_changed_by_regeneration:

generation_output_changed_only:


A generation correction must not be confused with a continuity-state change.

If only the AI output was corrected while the intended state remained unchanged:

continuity_state_changed_by_regeneration: no


## ERROR_RELATIONSHIP

change_caused_by_error:

error_id:

error_type:

error_severity:

error_detected_at:

error_origin:

error_propagated:

propagation_scope:

error_corrected:

correction_reference:


An error must remain historically traceable even after correction.


## ROLLBACK

rollback_allowed:

rollback_reference:

rollback_reason:

rollback_target_state:

rollback_timestamp:

rollback_authorized_by:

rollback_validation:


Rollback must create a new historical event.

Rollback must never delete the states that existed after the rollback target.


## SUPERSESSION

supersedes_change_id:

superseded_by_change_id:

supersession_reason:

supersession_timestamp:


A superseded change remains part of the historical record.

Supersession does not mean deletion.


## REVERSAL

reversal_of_change_id:

reversal_reason:

reversal_cause:

reversal_result:

reversal_validation:


A reversal is itself a new change and must be recorded separately.


## RETROACTIVE_DISCOVERY

retroactive_error_discovered:

original_change_id:

discovery_timestamp:

discovered_in_asset:

discovered_in_episode:

historical_error_description:

historical_state_affected:

downstream_impact_analysis_required:

downstream_impact_reference:

retroactive_correction_required:


Discovering an old error must not silently rewrite history.

The original state remains recorded as historical state.

Any correction must be represented as a new change.


## CHANGE_PROPAGATION

propagation_required:

propagation_start_point:

propagation_end_point:

propagation_dependencies:

propagation_reason:

propagation_validation:


A change must propagate only to states that logically depend on it.

A change must not propagate merely because assets were generated later.


## NON_PROPAGATING_CHANGE

non_propagating_change:

non_propagating_reason:

affected_generation_only:

affected_continuity_state:

affected_production_output:


Technical changes that do not alter story continuity must remain isolated from story state.

Example categories may include:

render_format

file_encoding

temporary_generation_failure

non-material_sampling_change

storage_location

internal_processing_change


## CHANGE_INTEGRITY

The following must never happen:

- silent state changes
- silent parameter changes
- silent reference changes
- silent model changes
- silent prompt changes
- silent negative-constraint changes
- silent identity-anchor changes
- silent variation-limit changes
- deletion of historical changes
- overwriting previous values
- changing an approved state without authorization
- propagating rejected state
- propagating unvalidated state
- treating AI output as authority
- treating a generation correction as a story-state change without evidence
- changing persistent state without a cause
- regenerating unrelated dependencies
- using a rejected output as the authoritative reference
- allowing a technical change to silently alter continuity
- allowing a model change to silently alter identity or performance
- resolving reference conflicts without recording the resolution


## IMMUTABILITY

Historical change records are append-only.

A historical change record must not be silently edited to represent a different event.

If a recorded fact is discovered to be wrong:

1. preserve the original record
2. record the correction
3. identify the correction relationship
4. validate the corrected state
5. preserve the complete history


## TRACEABILITY

Every approved change must be traceable through:

change_id
→ previous_state
→ change_cause
→ new_state
→ affected_dependencies
→ validation
→ approval
→ downstream_effects


## CHANGE_COMPLETENESS

A change record is complete only when the applicable fields identify:

what_changed

why_it_changed

who_or_what_changed_it

previous_state

new_state

affected_assets

affected_dependencies

continuity_impact

persistence_impact

validation_status

approval_status


## FINAL_RULE

No meaningful AI-generation change is allowed to become invisible.

Every change must remain:

TRACEABLE

CAUSED

VERSIONED

VALIDATED

APPROVED WHEN REQUIRED

PERSISTENT WHEN REQUIRED

AND REVERSIBLE THROUGH HISTORY

The latest state is not the only state that matters.

The complete chain of change is part of continuity.
