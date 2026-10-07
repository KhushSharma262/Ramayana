# SNAPSHOT RESOLUTION

When resolving a record:

1. identify requested entity
2. identify requested domain
3. identify requested time and scope
4. identify required snapshot
5. verify that the snapshot is approved
6. verify active/supersession state
7. verify dependencies
8. return the exact snapshot reference

If no valid approved snapshot exists:

RESULT = BLOCKED

Registry must not substitute a plausible snapshot.

A stale, superseded, unapproved, or mismatched snapshot cannot be
used as a valid downstream reference.
