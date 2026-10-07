# ENTITY VS RECORD

ENTITY and RECORD are different concepts.

ENTITY:
The actual conceptual animal, species, population, group, or tracked
individual represented by the project.

RECORD:
A versioned documentation object describing that entity at a particular
knowledge state.

One entity may have many records over time.

Example:

ENTITY:
Horse_Individual_001

RECORD:
Horse_Individual_001_v01
Horse_Individual_001_v02
Horse_Individual_001_v03

Updating a record does NOT automatically create a new entity.

A new entity is created only when evidence establishes that the previous
entity was incorrectly identified or that the underlying real-world
entity is genuinely distinct.

Entity merge/split operations must use the existing
entity_merge_split control.

Never create duplicate entities merely because:

- spelling changes
- translation changes
- taxonomy changes
- record version changes
- visual reference changes
- production asset changes
