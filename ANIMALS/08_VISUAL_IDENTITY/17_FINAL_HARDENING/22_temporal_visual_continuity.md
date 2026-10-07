# TEMPORAL VISUAL CONTINUITY

Every scene has a temporal position.

Visual continuity must follow:

PREVIOUS_APPROVED_SNAPSHOT
→ SCENE_TIME
→ VALID_STATE_TRANSITIONS
→ CURRENT_APPROVED_SNAPSHOT

Required:

scene_id
timeline_position
previous_snapshot_id
current_snapshot_id
transition_events
valid_from
valid_until

A later scene cannot use an earlier snapshot unless explicitly approved.

An earlier snapshot cannot be silently modified.

Parallel timelines require explicit timeline_id.

Time travel, flashback, dream, vision or supernatural temporal states require explicit context.
