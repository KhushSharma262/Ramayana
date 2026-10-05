# AI GENERATION VERSION

## PURPOSE

Defines the version identity and lineage of every AI-generated production output.

A generation version identifies a specific generated state of an asset at a specific point in the production history.

This file answers:

- Which generation is this?
- What generation did it come from?
- What changed between generations?
- Which version is currently valid?
- Which version is approved?
- Which versions were rejected or superseded?
- Can this version be used as a production reference?


## CORE PRINCIPLE

Every AI generation is a distinct version.

A new generation must never silently replace an existing generation.

Every version must remain historically traceable.

A later version does not erase an earlier version.

A visually better version does not automatically become the authoritative version.

Approval determines production authority, not generation order.


## VERSION_IDENTITY

generation_id:

asset_id:

asset_type:

entity_id:

continuity_entity_id:

generation_version:

generation_version_label:

generation_timestamp:

generation_status:

version_status:


Each generation_id must be unique.

Each asset must maintain an ordered generation_version sequence.


## VERSION_NUMBERING

version_number:

major_version:

minor_version:

revision_number:

attempt_number:


Recommended interpretation:

major_version:
A material change to the intended production state.

minor_version:
A controlled change that does not fundamentally alter the intended state.

revision_number:
A correction or technical revision of an existing generation.

attempt_number:
A generation attempt made during production or regeneration.


The exact numbering convention must remain consistent for the entire production system.


## VERSION_LINEAGE

parent_generation_id:

parent_generation_version:

parent_generation_status:

parent_generation_approval:

generation_lineage:

generation_lineage_depth:


Every new generation must identify its immediate parent when a parent exists.

If there is no parent:

parent_generation_id: none


## VERSION_GRAPH

version_graph_reference:

previous_version:

current_version:

next_version:

branch_reference:

merge_reference:


Generation history must support branching.

Example:

GEN_001
    |
    +--- GEN_002
    |       |
    |       +--- GEN_004
    |
    +--- GEN_003
            |
            +--- GEN_005


A branch must never silently overwrite another branch.


## VERSION_BRANCHING

branch_created:

branch_id:

branch_parent:

branch_reason:

branch_scope:

branch_status:


Branching may occur when:

- testing alternative generation methods
- correcting an error
- comparing models
- testing references
- testing technical parameters
- testing performance
- testing camera approaches


Only an approved branch may become the production branch.


## VERSION_MERGING

merge_required:

merge_source_versions:

merge_target_version:

merge_reason:

merge_conflicts:

merge_resolution:

merge_validation:

merge_approval:


Versions must not be merged automatically when their continuity states conflict.

A merge requires explicit conflict resolution.


## VERSION_RELATIONSHIP

supersedes_generation_id:

superseded_by_generation_id:

replaces_generation_id:

replaced_by_generation_id:

corrects_generation_id:

corrected_by_generation_id:

derived_from_generation_id:


These relationships must be used to distinguish:

- replacement
- correction
- derivation
- supersession
- branching


## VERSION_STATUS

Allowed version_status values:

draft

candidate

under_review

approved

conditionally_approved

rejected

superseded

archived

invalid

restored


A version may have only one current status at a time.

Historical statuses must remain traceable through the version history.


## PRODUCTION_AUTHORITY

production_authority:

production_reference:

production_reference_status:

production_reference_timestamp:


Only:

approved

or

conditionally_approved

versions

may become production references.


A generation does not become authoritative merely because:

- it is newest
- it looks better
- it has higher resolution
- it uses a newer AI model
- it has a newer seed
- it was generated later
- it was generated automatically


## APPROVAL_STATE

approval_required:

approval_status:

approved_by:

approval_timestamp:

approval_reference:

approval_scope:

approval_notes:


Approval may apply to:

frame

shot

scene

sequence

episode

asset

generation

specific_state


Approval scope must be explicit.


## CONDITIONAL_APPROVAL

conditional_approval:

conditions:

condition_owner:

condition_deadline:

condition_validation_required:

condition_status:


A conditionally approved generation must not be treated as fully approved when its conditions remain unresolved.


## REJECTION

rejection_status:

rejection_reason:

rejection_category:

rejected_by:

rejection_timestamp:

rejection_reference:

correction_required:

correction_scope:


A rejected generation must never become an authoritative inheritance source.

A rejected generation may remain available for:

- diagnosis
- comparison
- error analysis
- historical audit
- correction reference


## SUPERSESSION

supersession_status:

superseded_version:

superseded_by:

supersession_reason:

supersession_timestamp:


Supersession does not delete the superseded version.

The superseded version remains historically recoverable.


## IMMUTABILITY

Once a generation version has been created:

- its generation_id cannot change
- its generation_version identity cannot change
- its generation timestamp cannot change
- its original output reference cannot be silently replaced
- its original approval history cannot be rewritten
- its original rejection history cannot be erased


If an error exists, create a new version or correction record.


## VERSION_CONTENT

version_content_reference:

output_reference:

output_hash:

output_metadata:

output_state_reference:

parameter_version:

model_version:

prompt_version:

reference_version:

identity_anchor_version:

variation_limit_version:


A generation version must be traceable to the exact configuration and state used to create it.


## STATE_RELATIONSHIP

continuity_state_reference:

continuity_state_version:

state_at_generation:

state_after_generation:

state_changed:

state_change_reference:


Generation versioning and continuity state versioning are separate.

A new generation does not automatically mean a new story state.

A story-state change does not automatically mean that the previous generation becomes invalid unless the change affects that generation's applicable scope.


## PARAMETER_RELATIONSHIP

parameter_version:

parameter_reference:

parameter_change:

parameter_change_reference:


The exact generation parameters must be recorded separately in:

ai_generation_parameters.md


## MODEL_RELATIONSHIP

model_version:

model_reference:

model_change:

model_change_reference:


A model change creates a new generation context.

It does not rewrite historical outputs.

It does not automatically invalidate previously approved outputs.


## REFERENCE_RELATIONSHIP

reference_version:

reference_asset_ids:

reference_change:

reference_change_reference:


Reference changes must remain traceable.

A new reference does not automatically make the previous generation incorrect.

The continuity impact must be evaluated.


## IDENTITY_RELATIONSHIP

identity_anchor_version:

identity_anchor_reference:

identity_validation_status:


Every generation must be traceable to the identity-anchor version used during generation.


## VERSION_DIFFERENCE

difference_reference:

difference_summary:

changed_domains:

unchanged_domains:

material_difference:

continuity_difference:

technical_difference:

visual_difference:

performance_difference:

state_difference:


A version comparison must distinguish between:

- technical difference
- visual difference
- continuity difference
- story-state difference


A visual difference is not automatically a continuity difference.


## VERSION_COMPARISON

comparison_required:

comparison_source:

comparison_target:

comparison_method:

comparison_result:

comparison_errors:

comparison_approval:


Comparison should evaluate all continuity-relevant domains applicable to the asset.


## VERSION_VALIDATION

validation_required:

validation_status:

validation_reference:

validated_against:

validation_timestamp:

validation_result:

validation_errors:

remaining_uncertainties:


A version cannot become an approved production reference until required validation is complete.


## VERSION_PROGRESSION

previous_authoritative_version:

current_candidate_version:

current_authoritative_version:

next_expected_version:

version_progression_status:


The current authoritative version must remain explicitly identifiable.

The newest generation is not necessarily the authoritative generation.


## ROLLBACK

rollback_requested:

rollback_target_version:

rollback_reason:

rollback_authorized_by:

rollback_timestamp:

rollback_validation:

rollback_result:


Rollback must not delete versions created after the rollback target.

Rollback creates a new historical event and must remain traceable.


## RESTORATION

restoration_requested:

restoration_source_version:

restoration_reason:

restoration_authorized_by:

restoration_timestamp:

restoration_validation:

restoration_result:


Restoring an older version creates a new production event.

The restored version retains its original historical identity.


## RETROACTIVE_CORRECTION

retroactive_error_found:

affected_historical_version:

error_reference:

correction_required:

correction_version:

affected_downstream_versions:

downstream_revalidation_required:

retroactive_correction_status:


An old version must never be silently rewritten.

A corrected version must remain linked to the historical version containing the original error.


## DOWNSTREAM_IMPACT

downstream_generation_ids:

downstream_version_ids:

downstream_assets:

downstream_dependency_chain:

impact_type:

revalidation_required:

regeneration_required:


If a version contains an error that propagated downstream, the affected chain must be identified.

Unrelated generations must remain untouched.


## VERSION_PROPAGATION

propagation_allowed:

propagation_source_version:

propagation_target:

propagation_status:

propagation_validation:


Only validated and approved state may propagate into future authoritative generation state.


## NON_PROPAGATING_VERSION

non_propagating:

non_propagating_reason:

technical_only:

rejected_only:

experimental_only:

validation_only:


Experimental or rejected versions may be used for analysis but must not become authoritative inheritance sources.


## VERSION_INTEGRITY

The following are prohibited:

- overwriting a previous generation
- reusing a generation_id
- silently changing version identity
- silently changing approval status
- silently changing rejection status
- treating the newest version as automatically authoritative
- treating the highest-quality output as automatically authoritative
- using a rejected version as an inheritance source
- using an unvalidated version as an authoritative source
- deleting superseded versions
- deleting rejected versions
- rewriting historical version relationships
- silently merging branches
- silently resolving branch conflicts
- treating model upgrades as automatic continuity upgrades
- treating parameter changes as automatic story-state changes
- treating visual differences as automatic continuity errors
- treating technical revisions as automatic story changes
- allowing a corrected version to erase the original error history


## VERSION_AUDIT

version_audit_required: yes

version_identity_complete:

parent_identified:

lineage_complete:

state_reference_complete:

parameter_reference_complete:

model_reference_complete:

reference_assets_complete:

identity_anchor_reference_complete:

validation_complete:

approval_complete:

production_authority_identified:


## VERSION_COMPLETENESS

A generation version is complete only when it can answer:

WHAT was generated?

WHEN was it generated?

FROM WHICH VERSION?

USING WHICH MODEL?

USING WHICH PARAMETERS?

USING WHICH REFERENCES?

UNDER WHICH CONTINUITY STATE?

UNDER WHICH IDENTITY ANCHORS?

WITH WHICH OUTPUT?

WHAT CHANGED?

WHY DID IT CHANGE?

WAS IT VALIDATED?

WAS IT APPROVED?

IS IT CURRENTLY AUTHORITATIVE?


## FINAL_RULE

Every AI-generated output is a versioned artifact.

Versions are historical facts.

Approval determines production authority.

The newest version is not automatically the correct version.

The visually best version is not automatically the correct version.

The technically newest version is not automatically the correct version.

The authoritative version is the version that satisfies the approved continuity state and has passed the required validation and approval process.

Version history must remain intact from the first generation to the final production output.
