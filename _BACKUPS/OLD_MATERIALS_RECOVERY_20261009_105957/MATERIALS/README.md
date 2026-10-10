# MATERIALS

MATERIALS is the physical-material source of truth.

It governs the substance and surface behavior of things appearing
in the production.

It does not define:

- character costume design
- architectural layouts
- props as objects
- environmental simulation
- camera behavior
- final color grading
- compositing

Instead, those systems reference MATERIALS.

## Material pipeline

SOURCE / RESEARCH
        ↓
MATERIAL IDENTITY
        ↓
PHYSICAL PROPERTIES
        ↓
SURFACE CHARACTER
        ↓
MATERIAL STATE
        ↓
OBJECT / COSTUME / ARCHITECTURE
        ↓
3D MATERIAL IMPLEMENTATION
        ↓
LIGHT INTERACTION
        ↓
COMPOSITING
        ↓
FINAL IMAGE

## Most important rule

The same approved material must remain recognizable across
different scenes, lighting conditions, AI generations, renders,
and camera angles.

Only its physically justified appearance may change with conditions.