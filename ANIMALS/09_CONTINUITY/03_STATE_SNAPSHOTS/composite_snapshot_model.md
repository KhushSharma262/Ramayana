# COMPOSITE SNAPSHOT MODEL

A continuity snapshot may contain:

BIOLOGY_SNAPSHOT_ID
BEHAVIOR_SNAPSHOT_ID
MOVEMENT_SNAPSHOT_ID
ECOLOGY_SNAPSHOT_ID
DOMESTIC_TRAINED_SNAPSHOT_ID
INTERACTION_SNAPSHOT_ID
VISUAL_IDENTITY_SNAPSHOT_ID

Continuity owns the composition, not the contents.

If a required domain state is missing, stale, conflicted, invalidated,
or unapproved, the continuity snapshot is BLOCKED.

A partial update must explicitly identify:

- unchanged domain states
- changed domain states
- dependencies
- reason for change
- event causing change
- approval status

No domain state may be silently copied forward after invalidation.
