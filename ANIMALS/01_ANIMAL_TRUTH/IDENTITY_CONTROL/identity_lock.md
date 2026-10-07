# IDENTITY LOCK

Purpose:
Prevent accidental changes to an animal's established identity.

Identity lock applies to:

- entity_id
- species_identity
- identification_status
- canonical identity
- accepted scientific identification
- important individual identity
- relationship identity
- scale identity where identity depends on physical reference

Lock states:

UNLOCKED
PROVISIONALLY_LOCKED
APPROVED_LOCK
REOPENED
SUPERSEDED

An APPROVED_LOCK must not be silently modified.

Any identity change requires:

previous_identity:
new_identity:
reason:
evidence:
affected_claims:
affected_decisions:
affected_assets:
affected_scenes:
affected_shots:
reviewer:
approval:
date:
version:

Changing identity must trigger downstream revalidation.
