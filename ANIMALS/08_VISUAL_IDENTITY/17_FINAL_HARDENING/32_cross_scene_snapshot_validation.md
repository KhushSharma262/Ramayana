# CROSS-SCENE SNAPSHOT VALIDATION

Before an asset enters a scene:

1. identify current timeline position
2. retrieve latest valid snapshot
3. verify no newer approved snapshot exists
4. apply valid scene events
5. validate resulting state
6. create/use approved scene snapshot
7. generate asset
8. compare asset against snapshot
9. accept or reject

An older snapshot cannot silently override a newer snapshot.

A rejected asset cannot modify the snapshot.

Replacement assets inherit the same approved snapshot unless a new approved state exists.
