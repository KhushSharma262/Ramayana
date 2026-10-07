# SNAPSHOT DEFINITION

A snapshot is an immutable approved representation of the relevant
state of an entity/world at a specific continuity point.

A snapshot contains references to authoritative domain states.

It does NOT duplicate the complete truth databases.

Required:

snapshot_id
parent_snapshot_id
timeline_id
branch_id
scene_id_or_context_id
event_id
temporal_position
entity_state_references
domain_snapshot_references
dependency_references
approval_status
version
created_at
valid_from
valid_until
rollback_reference

IMMUTABILITY:

An approved snapshot cannot be edited in place.

Correction = new snapshot/version.
