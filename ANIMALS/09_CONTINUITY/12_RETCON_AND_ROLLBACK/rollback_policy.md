# ROLLBACK POLICY

Rollback returns production to a previously approved snapshot/version.

Rollback does not erase later history.

Required:

rollback_id
source_snapshot_id
target_snapshot_id
reason
scope
approval
dependent_invalidations

Rollback of one domain may require cross-system revalidation.
