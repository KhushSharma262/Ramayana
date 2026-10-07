# INTERACTION DATABASE

The database is the canonical structured interaction layer.

There is ONE canonical interaction database.

Separate categories are schemas/categories, not competing databases.

## Primary Entity

interaction_id

## Required Core Fields

interaction_id
interaction_version
interaction_status
interaction_type
participants
initiator
recipient_or_participants
context_id
time_state
location_state
evidence_state
approval_state
snapshot_id
outcome
consequences
relationship_effect
continuity_state

## Participant Identity

Important persistent individuals use canonical animal_id.

Human participants use canonical human/entity identifiers from the appropriate external human system.

Population participants use population/group identifiers.

No competing animal identity may be created here.
