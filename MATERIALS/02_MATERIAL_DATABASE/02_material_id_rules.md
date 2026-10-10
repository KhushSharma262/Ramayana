# MATERIAL ID RULES

## Permanent IDs

Use:

MAT-000001
MAT-000002
MAT-000003

IDs are permanent and meaningless outside database identity.

Never encode:

- category
- location
- character
- scene
- episode
- version
- colour
- rarity
- quality

into the ID.

## Material definition vs instance

A definition:

MAT-000101 = Sal wood

An instance:

MAT-000101 / INSTANCE-XXXX = one specific beam, bow, door, staff, cart component, etc.

The instance may have its own:

- moisture state
- age
- damage
- finish
- dirt
- repair
- location
- continuity

without changing the material definition.

## Do not merge

Do not merge materials merely because they:

- look similar
- share a colour
- have similar density
- occur in the same object
- are both "wood"
- are both "metal"
- are both "stone"

Merge only when identity is genuinely the same at the production level.

## Composite materials

An object made from several materials is not automatically a new material.

Example:

wood + metal fittings + resin coating = composite object.

Create a composite material definition only when the constituents have become a materially inseparable engineered substance.

## Unknowns

UNKNOWN means insufficient evidence.

It does not mean:

- zero
- absent
- negligible
- modern substitute
- artist's choice

## Versioning

Material identity changes require a new material version and registry impact analysis.
