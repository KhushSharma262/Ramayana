# ECOLOGY RESEARCH RECORD SCHEMA

Every production-relevant ecological record should contain the following structure.

## IDENTITY

record_id:
entity_id:
entity_class:
record_version:
record_status:

## SCOPE

geographic_scope:
spatial_scale:
temporal_scope:
season:
time_of_day:
weather:
recent_weather:

## ECOLOGICAL STATE

habitat:
landscape:
vegetation:
water:
soil:
resources:
species:
population:
disturbance:
human_activity:
ecological_interactions:

## DEMOGRAPHY

sex:
age_class:
reproductive_state:
group_structure:

## EVIDENCE

source_ids:
evidence_ids:
evidence_type:
evidence_precision:
evidence_independence:
source_quality:

## INTERPRETATION

interpretation_type:
interpretation_text:
inference_level:
confidence:
uncertainty:

## DEPENDENCIES

parent_claim_ids:
child_claim_ids:
dependency_status:

## DECISION

decision:
decision_reason:
applicability:
limitations:

## APPROVAL

review_status:
approved_by:
approval_date:
approval_version:

## SNAPSHOT

snapshot_id:
snapshot_date:
supersedes:
superseded_by:

## PRODUCTION

scene_ids:
asset_ids:
prompt_ids:
production_state:

## AUDIT

last_reviewed:
next_review:
review_trigger:
change_reason:
rollback_target:

## REQUIRED RULE

A record cannot become PRODUCTION_APPROVED unless all required fields are resolved or explicitly marked NOT_APPLICABLE with justification.

## UNKNOWN

UNKNOWN is permitted.

UNKNOWN must remain UNKNOWN.

UNKNOWN must not be silently completed during production.
