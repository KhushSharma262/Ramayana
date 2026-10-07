# SNAPSHOT ATOMICITY FIREWALL

A continuity snapshot is valid only if all referenced domain snapshots
form one compatible temporal state.

A snapshot must NOT combine:

- different timeline branches
- incompatible temporal positions
- invalidated domain snapshots
- unapproved domain snapshots
- superseded domain snapshots
- mutually contradictory domain states

Required validation:

CONTINUITY_SNAPSHOT
→ DOMAIN SNAPSHOT SET
→ TEMPORAL COMPATIBILITY
→ BRANCH COMPATIBILITY
→ DEPENDENCY COMPATIBILITY
→ APPROVAL COMPATIBILITY
→ ATOMIC APPROVAL

If any required component fails:

SNAPSHOT = BLOCKED

Partial approval cannot create an approved composite snapshot.

MASTER RULE:

NO MIXED-TIME OR MIXED-BRANCH SNAPSHOT MAY BECOME CANONICAL.
