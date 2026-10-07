# SNAPSHOT HANDOFF RULES

Every domain dependency must reference an approved snapshot.

Snapshot references must preserve:

- snapshot_id
- version
- approval state
- timestamp
- source provenance
- fingerprint
- applicable entity
- applicable scene/time
- supersession status

The handoff must reject:

- missing snapshots
- draft snapshots
- stale snapshots
- superseded snapshots without approved replacement
- altered fingerprints
- incompatible snapshot versions
- snapshots whose approval scope does not cover the target scene

The handoff references snapshots.

It never edits their contents.
