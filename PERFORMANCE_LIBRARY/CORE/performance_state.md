# PERFORMANCE STATE

A library asset may have multiple states.

Example:

RAW
    ↓
CLEANED
    ↓
RETARGETED
    ↓
CHARACTER_ADAPTED
    ↓
SHOT_ADAPTED
    ↓
APPROVED

Each state must retain lineage to the previous state.

Do not create disconnected derivative assets.
