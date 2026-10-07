# STALE DOMAIN REFERENCE FIREWALL

Every domain reference inside a continuity snapshot must be validated
against the domain's latest valid state for the applicable timeline and
temporal position.

A domain snapshot may be reused only when:

- still valid
- still approved
- not superseded
- not invalidated
- temporally applicable
- geographically/contextually applicable
- dependency-valid

Continuity must never assume:

OLD SNAPSHOT = CURRENT SNAPSHOT

If an upstream dependency changed, the referenced snapshot must be
revalidated.

Stale reference = BLOCKED.
