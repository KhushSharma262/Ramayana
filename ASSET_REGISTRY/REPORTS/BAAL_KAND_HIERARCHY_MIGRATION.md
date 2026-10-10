# Bālakāṇḍ Hierarchy Migration

- Run timestamp: 20261009_124813
- Canonical parent: `ASSET_REGISTRY\BAAL_KAND`
- Canonical episode: `ASSET_REGISTRY\BAAL_KAND\EPISODE_01`
- Legacy source retained: `ASSET_REGISTRY\EPISODE_01\BAAL_KAND`
- Backup: `C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\_BACKUPS\ASSET_REGISTRY_BAALKAND_MIGRATION_20261009_124813`
- Files in legacy source retained: 2
- Files now in canonical episode tree: 21
- Files copied or already identical: 2
- Conflicting files preserved without overwrite: 0
- Text-file path-reference updates: 0
- Required-path validation failures: 0

## Migration decisions

- Existing registry content was backed up before changes.
- Existing destination files were not overwritten.
- Files with conflicting contents remain separately preserved and are listed in `migration_conflicts.csv`.
- Legacy source folders were not deleted.
- Text-file path references were updated only when the exact legacy path was found.
- Episode-level asset usage and scene assignments should be reviewed after migration.

## Validation


Path                                                          Exists
----                                                          ------
ASSET_REGISTRY\BAAL_KAND                                        True
ASSET_REGISTRY\BAAL_KAND\EPISODE_01                             True
ASSET_REGISTRY\BAAL_KAND\CHARACTERS                             True
ASSET_REGISTRY\BAAL_KAND\LOCATIONS                              True
ASSET_REGISTRY\BAAL_KAND\PROPS                                  True
ASSET_REGISTRY\BAAL_KAND\EPISODE_01\CHARACTERS                  True
ASSET_REGISTRY\BAAL_KAND\EPISODE_01\USAGE                       True
ASSET_REGISTRY\BAAL_KAND\EPISODE_01\asset_intake_template.csv   True




## Conflict report

See `C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\_BACKUPS\ASSET_REGISTRY_BAALKAND_MIGRATION_20261009_124813\migration_conflicts.csv`.

## Copy report

See `C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\_BACKUPS\ASSET_REGISTRY_BAALKAND_MIGRATION_20261009_124813\migration_copy_log.csv`.

## Path-reference report

See `C:\Users\hpcnd\OneDrive\Desktop\Ramayana\RAMAYAN\_BACKUPS\ASSET_REGISTRY_BAALKAND_MIGRATION_20261009_124813\path_reference_updates.csv`.

## Rollback

The full pre-migration registry copy is available under the backup folder listed above. Do not delete it until the canonical tree and path references have been reviewed.
