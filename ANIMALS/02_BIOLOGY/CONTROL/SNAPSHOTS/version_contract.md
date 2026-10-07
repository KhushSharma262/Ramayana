# BIOLOGY VERSION CONTRACT

Every production release receives:

biology_version:
release_id:
release_date:
approval_authority:
research_cutoff_date:
source_cutoff_date:
scope:

## SNAPSHOT RULE

Production does not consume mutable research files directly.

Production consumes an approved snapshot.

The snapshot records SHA-256 hashes of all included files.

If a file changes after approval:

previous snapshot remains valid
new snapshot becomes required

No silent mutation is allowed.
