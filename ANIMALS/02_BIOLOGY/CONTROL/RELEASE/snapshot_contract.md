# BIOLOGY RELEASE SNAPSHOT

Production must use an immutable Biology snapshot.

Required:

biology_version:
release_id:
release_date:
research_cutoff:
approval_id:
validator_version:
schema_version:
file_hash_manifest:

## RULE

Production must never silently consume the mutable research workspace.

A changed file invalidates the relevant snapshot.
