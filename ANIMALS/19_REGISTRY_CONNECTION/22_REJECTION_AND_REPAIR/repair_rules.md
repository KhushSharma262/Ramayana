# REPAIR RULES

A registry repair must record:

repair_id
affected_registry_id
old target
new target
reason
authority
approval
timestamp
downstream_impact

The old target must remain auditable.

The new target must be explicitly identified and validated.

No silent relinking is permitted.

A repair does not retroactively rewrite historical registry state.
