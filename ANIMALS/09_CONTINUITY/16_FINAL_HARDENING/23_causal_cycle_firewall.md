# CAUSAL CYCLE FIREWALL

Continuity dependencies form a directed acyclic causal graph.

Forbidden:

A → B → A

A → B → C → A

Any dependency cycle that prevents a valid temporal ordering.

Every event dependency must point to:

- an earlier valid cause
- a simultaneous explicitly compatible cause
- an approved non-temporal dependency

No state may depend on itself.

Cycle detected = BLOCKED.
