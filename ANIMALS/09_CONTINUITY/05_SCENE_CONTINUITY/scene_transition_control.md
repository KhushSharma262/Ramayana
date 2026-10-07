# SCENE TRANSITION CONTROL

Scene transition:

PREVIOUS_VALID_SNAPSHOT
→ SCENE_CONTEXT
→ APPROVED_EVENTS
→ DOMAIN_STATE_TRANSITIONS
→ NEW_CONTINUITY_SNAPSHOT

No event = no unexplained state change.

If a scene requires a state that differs from the inherited state,
the difference must be:

1. identified
2. causally explained
3. owned by the correct domain
4. approved
5. snapshotted

Otherwise scene status = BLOCKED.
