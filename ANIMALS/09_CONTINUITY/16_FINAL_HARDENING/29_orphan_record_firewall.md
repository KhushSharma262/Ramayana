# ORPHAN RECORD FIREWALL

Every production-relevant record must have valid parents.

Required relationships:

EVENT → PREVIOUS SNAPSHOT
SNAPSHOT → DOMAIN SNAPSHOTS
SCENE → INPUT SNAPSHOT
PROMPT → SCENE + SNAPSHOT
ASSET → PROMPT + SNAPSHOT
SHOT → ASSET + SCENE

An orphan record cannot become production-valid.

Missing parent = BLOCKED.
