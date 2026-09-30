# MATERIAL STATE SYSTEM

Material identity and material state are separate.

## Base identity

Examples:

GOLD
SILK
STONE
WOOD
COPPER
GLASS

## States

PRISTINE
NORMAL_USE
AGED
WEATHERED
DUSTY
WET
MUDDY
SCRATCHED
CRACKED
CHIPPED
STAINED
SOOTED
BURNT
WATER_DAMAGED
REPAIRED
RESTORED
DESTROYED

## State changes must have causes.

Examples:

WET
cause = rain / river / washing / immersion

DUSTY
cause = environment / travel / construction / dry conditions

BURNT
cause = fire

SCRATCHED
cause = contact / weapon / physical damage

AGED
cause = time

Do not randomly add wear.

State changes must be consistent with:

- story events
- environment
- character actions
- material properties
- elapsed time
- continuity

## State persistence

If a material becomes damaged in Scene 20,
it remains damaged in Scene 21 unless:

- repaired
- replaced
- restored
- intentionally reset by narrative time passage
