# CHANGE HISTORY

## PURPOSE

Provides an audit trail for changes to animal identity and research conclusions.

## REQUIRED

change_id
date
entity_id
field_changed
old_value
new_value
reason
evidence_ids
decision_id
impact
approval_status
changed_by

## CHANGE TYPES

research_update
source_update
translation_update
identification_update
taxonomy_update
correction
conflict_resolution
reopening
approval_change
production_change

## NEVER DELETE HISTORY

When a decision changes:

do not overwrite the historical decision without recording it.

## REQUIRED CHANGE CHAIN

CHANGE REQUEST
→ EVIDENCE
→ IMPACT ANALYSIS
→ DECISION
→ APPROVAL
→ UPDATED ENTITY
→ DOWNSTREAM REVIEW

## IMPACT CATEGORIES

canon
species
taxonomy
biology
behavior
movement
ecology
domestic_training
interaction
visual_identity
continuity
audio
AI_generation
production

## LOCKED ENTITY

If a locked entity changes:

identity_lock_status must become:

REOPENED

until review is complete.

## REVERSION

A previous state may be restored only through a new documented change.

Do not erase the history of the newer state.

## PURPOSE

The history must allow a future researcher to answer:

What changed?
Why did it change?
What evidence caused it?
Who approved it?
What downstream systems were affected?
