# UNIQUE ID SYSTEM

Every significant production entity receives one stable ID.

Recommended pattern:

TYPE_NUMBER

Examples:

CHAR_001
LOC_001
ARCH_001
COST_001
PROP_001
ANIM_001
SCENE_001
SHOT_001
SEQ_001
ASSET_001
SOURCE_001
EVENT_001

State-specific records may extend the ID:

CHAR_001_STATE_003
COST_001_STATE_004
LOC_001_STATE_002

Shot-specific asset instances may use:

SHOT_001_ASSET_003

IDs must:

- remain unique
- remain stable
- not be reused
- not change because a name changes
- not encode temporary descriptive information

If an entity is retired, its ID remains retired and is never reassigned.
