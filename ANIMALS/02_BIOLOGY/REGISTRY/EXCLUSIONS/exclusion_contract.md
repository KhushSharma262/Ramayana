# EXCLUSION CONTROL

An entity may be excluded from production only through an explicit decision.

Required:

entity_id:
exclusion_status:
reason:
scope:
decision_id:
approved_by:
date:

Allowed:

EXCLUDED
DEFERRED
NOT_IN_SCOPE

## RULE

An absent entity is not equivalent to an excluded entity.

Missing from registry = BLOCKED
Explicitly excluded = valid state
