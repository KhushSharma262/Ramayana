# STALE SNAPSHOT FIREWALL

A snapshot is stale when a newer valid state supersedes it or its approved applicability no longer covers the target production state.

Stale snapshots cannot silently remain active.

Any stale dependency causes the affected handoff to be BLOCKED until refreshed.
