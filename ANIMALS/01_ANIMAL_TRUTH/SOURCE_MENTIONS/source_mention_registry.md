# SOURCE MENTION REGISTRY

## PURPOSE

Separates a textual/source mention from the biological animal entity ultimately inferred from it.

## WHY THIS EXISTS

One source mention may represent:

- one individual
- several individuals
- a group
- a species
- a generic animal category
- an unidentified animal
- a disputed identification

Therefore:

SOURCE MENTION != ANIMAL ENTITY

## REQUIRED

source_mention_id
source_id
source_reference
source_section
original_term
context
mention_type
candidate_entity_ids
selected_entity_id
identification_status
research_status
approval_status
confidence
decision_id

## MENTION TYPES

individual
species
group
population
generic
unidentified
symbolic
uncertain

## ID FORMAT

SM-0001
SM-0002
SM-0003

## STABILITY

source_mention_id must remain stable even if interpretation changes.

## CHANGE

If later research changes the interpretation:

do not delete the original mention.

Update the decision and change history.
