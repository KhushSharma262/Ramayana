# STATE DIFF FIREWALL

Every transition compares:

PREVIOUS SNAPSHOT
vs
NEW SNAPSHOT

The diff must classify every changed field.

Allowed:

EXPECTED_CHANGE
DEPENDENCY_CHANGE
EVENT_CHANGE
TIME_CHANGE
CANONICAL_CHANGE
SUPERNATURAL_CHANGE
CORRECTION
ROLLBACK
NO_OP

Unclassified change = BLOCKED.

A state may never appear different without a recorded reason.
