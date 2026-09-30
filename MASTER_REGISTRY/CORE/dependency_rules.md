# DEPENDENCY RULES

Track dependencies where one production decision relies on another.

Example:

CANON_EVENT
    ↓
SCENE
    ↓
LOCATION
    ↓
CHARACTER
    ↓
COSTUME
    ↓
PERFORMANCE
    ↓
SHOT
    ↓
RENDER
    ↓
DELIVERY

If an upstream locked item changes, affected downstream records
must be identified.

Do not silently propagate changes.

Affected records must enter:

REVIEW_REQUIRED

until re-approved.
