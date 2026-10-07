# SNAPSHOT IMMUTABILITY AND INTEGRITY

Approved snapshots are immutable.

Forbidden:

- overwriting an approved snapshot
- silently changing a timestamp
- silently changing entity identity
- silently changing domain references
- changing parent snapshot
- changing event cause
- changing approval after production
- changing historical state to fit an asset

Allowed:

- create a new version
- create a correction snapshot
- create an explicit rollback
- create a controlled branch
- invalidate dependent downstream snapshots

Every mutation creates a new traceable record.
