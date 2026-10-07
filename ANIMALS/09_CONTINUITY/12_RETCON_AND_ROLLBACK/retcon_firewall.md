# RETCON FIREWALL

A retcon is an explicit continuity revision.

Required:

retcon_id
reason
affected_claims
affected_events
affected_snapshots
affected_scenes
affected_assets
authority
approval
new_version

Retcon must never silently rewrite the old record.

Historical versions remain auditable.

---

# HARDENED RETCON CONTROL

NO SILENT HISTORICAL REWRITE.

A retcon must never overwrite or erase an approved historical record.

Every retcon creates:

retcon_id
previous_version
new_version
reason
affected_claims
affected_events
affected_snapshots
affected_scenes
affected_assets
authority
approval
dependency_invalidation
revalidation_status

The previous state remains auditable.

A retcon is a VERSIONED CHANGE, not a deletion of history.

Unapproved retcon = BLOCKED.

Old versions remain auditable.
