# MATERIALS SYSTEM

MATERIALS is the authoritative physical-material system.

It defines:

- material identity
- physical properties
- surface behavior
- material states
- material interactions
- material combinations
- rendering behavior
- texture requirements
- evidence and references
- material continuity
- AI material consistency

## Domain boundaries

MATERIALS:
What is the physical substance and how does it behave?

COSTUMES:
Which materials are used in a character's clothing/accessories?

ARCHITECTURE:
Where and how are building materials used?

PROPS:
What objects exist?

ENVIRONMENT:
What environmental processes affect materials?

COLOR:
How is color controlled?

3D:
How is the material implemented on the model?

COMPOSITING:
How are rendered materials integrated into the final image?

## Material identity

A material identity is different from its state.

Example:

GOLD
    ↓
GOLD + POLISHED
GOLD + WORN
GOLD + DUSTY
GOLD + SCRATCHED
GOLD + HEAT-DAMAGED

These are states of the same material.

## Core principle

A material must look physically believable under:

- daylight
- moonlight
- firelight
- diffuse light
- direct light
- atmospheric conditions
- wet conditions
- dusty conditions
- damage
- aging

Do not use a generic shader merely because an object is described as
gold, silk, stone, wood, etc.

The material must respond according to its physical characteristics.
