# INTERACTION ORDERING AND SIMULTANEITY

Every consequential interaction has an ordering state.

Allowed:

SEQUENTIAL
SIMULTANEOUS
OVERLAPPING
UNKNOWN

Where exact timestamps are unavailable, use relative ordering:

BEFORE
DURING
AFTER
CONCURRENT
UNKNOWN

Nested interactions must reference their parent interaction.

Example:

INTERACTION A
  └── INTERACTION B
       └── INTERACTION C

No circular causal ordering is permitted.

If two events are visually simultaneous but causally ordered, causal order takes precedence.

If ordering cannot be resolved and continuity depends on it:
BLOCKED.
