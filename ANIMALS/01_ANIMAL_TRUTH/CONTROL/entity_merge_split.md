# ENTITY MERGE SPLIT

## PURPOSE

Controls situations where research changes the understanding of entity identity.

## MERGE

Two records may later be determined to represent the same entity.

## SPLIT

One record may later be determined to incorrectly combine multiple entities.

## REQUIRED

operation_id
operation_type
source_entity_ids
result_entity_ids
reason
evidence_ids
decision_id
approval_status
date

## OPERATION TYPES

merge
split
reclassification
reassignment

## RULE

Never delete the historical IDs.

Mark them:

MERGED
or
SUPERSEDED

and point to the new record.

## PROVENANCE

The new entity must retain links to the previous records.

## DOWNSTREAM

Merge/split operations require downstream impact analysis.

Potentially affected:

continuity
visual identity
individual identity
scene records
prompts
assets
production references
