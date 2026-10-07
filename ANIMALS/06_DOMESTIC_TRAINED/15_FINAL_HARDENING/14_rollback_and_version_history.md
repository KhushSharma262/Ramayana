# ROLLBACK AND VERSION HISTORY

Every material state change creates a version.

Never destructively rewrite historical truth.

Required:

version
previous_version
change_reason
changed_by
change_date
affected_scenes
affected_assets
rollback_target

## RULE

If a new fact invalidates a prior approved state, the old snapshot remains
historically preserved but becomes superseded.
