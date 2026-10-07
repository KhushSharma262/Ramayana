# DEPENDENCY INVALIDATION

When an upstream approved state becomes invalid, all dependent downstream
states are identified.

Invalidation propagates through:

DOMAIN STATE
→ CONTINUITY SNAPSHOT
→ EVENTS
→ SCENES
→ PROMPTS
→ ASSETS
→ SHOTS

Invalidated material cannot remain production-valid.

Already rendered assets are not deleted automatically; they are marked
INVALIDATED and cannot be treated as approved output.
