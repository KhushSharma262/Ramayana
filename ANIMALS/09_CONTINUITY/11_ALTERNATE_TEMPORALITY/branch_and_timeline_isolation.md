# BRANCH AND TIMELINE ISOLATION

A branch must have:

branch_id
parent_branch_id
creation_event_id
timeline_id
scope
status

States do not leak between branches.

Merge is not automatic.

A branch merge requires explicit reconciliation of:

identity
events
snapshots
relationships
world state
domain states
assets
scene order

Conflict = merge blocked.
