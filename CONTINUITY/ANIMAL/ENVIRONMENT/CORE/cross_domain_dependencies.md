# ENVIRONMENT CROSS-DOMAIN DEPENDENCIES

Environment interfaces with:

- LOCATION
- SPATIAL
- ECOLOGY
- PHYSICS
- ANIMAL
- CHARACTER
- PROP
- COSTUME
- AUDIO
- LIGHTING
- CAMERA
- VFX
- PERFORMANCE

## Dependency Rule

An environmental change propagates only to affected domains.

Example:

Rain begins.

Potential dependencies:

- surface wetness
- water state
- atmosphere
- animal behavior
- character clothing
- animal movement
- audio
- lighting
- camera visibility
- physics/friction

Unrelated domains do not need regeneration.
