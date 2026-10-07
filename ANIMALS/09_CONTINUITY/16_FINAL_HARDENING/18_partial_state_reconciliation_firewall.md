# PARTIAL STATE RECONCILIATION FIREWALL

A domain may change without all domains changing.

Continuity must distinguish:

CHANGED
UNCHANGED
UNKNOWN
INVALIDATED
NOT_APPLICABLE

No unchanged state may be silently assumed valid if its dependency was
invalidated.
