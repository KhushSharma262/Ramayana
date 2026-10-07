# RETROACTIVE EVENT CONTROL

A newly discovered earlier event cannot silently modify all later scenes.

Retroactive event:

1. receives event_id
2. receives temporal position
3. identifies affected snapshots
4. identifies dependent events
5. invalidates affected downstream states
6. creates corrected snapshots
7. records version history
8. triggers revalidation

No silent history rewrite.
