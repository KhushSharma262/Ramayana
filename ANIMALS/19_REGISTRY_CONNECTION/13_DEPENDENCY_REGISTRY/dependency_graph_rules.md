# DEPENDENCY GRAPH

The dependency graph must detect:

- orphan nodes
- missing targets
- stale targets
- cycles
- contradictory dependencies
- invalid dependencies
- superseded dependencies
- unresolved dependencies

Circular dependency cycles are blocked.

Causal loops are not silently repaired by Registry.

A material dependency cycle prevents valid downstream resolution.
