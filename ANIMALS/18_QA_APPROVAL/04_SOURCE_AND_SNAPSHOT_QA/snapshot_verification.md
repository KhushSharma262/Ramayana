# SNAPSHOT VERIFICATION

QA verifies that production consumed the correct approved snapshot.

Checks:
- snapshot_id
- version
- approval state
- fingerprint/hash where available
- creation timestamp
- supersession state
- scope
- dependencies

Stale, superseded, unapproved, or altered snapshots fail validation.
