# SNAPSHOT REGISTRY

Every registered snapshot must contain:

snapshot_id
domain
version
approval_state
creation_state
fingerprint where available
scope
dependencies
supersession state

Snapshots are immutable.

A changed snapshot receives a new version/snapshot identity.

Registry must detect:
- stale snapshot
- missing snapshot
- superseded snapshot
- invalid snapshot
- mismatched snapshot
