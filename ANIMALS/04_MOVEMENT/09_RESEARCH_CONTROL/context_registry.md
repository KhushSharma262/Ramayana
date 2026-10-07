# MOVEMENT CONTEXT REGISTRY

Contexts are dimensions, not separate species files.

## Core Contexts

NORMAL
ALERT
STRESSED
PANICKED
TRAINED
RIDDEN
LOADED
WORKING
FATIGUED
INJURED
JUVENILE
PREGNANT
HIGH_SPEED
EXTREME_TERRAIN

## Applicability

Every context must be explicitly marked:

APPLICABLE
NOT_APPLICABLE
UNKNOWN
CONDITIONAL

UNKNOWN is not production-ready.

## Rule

Do not force every context onto every species.

Examples:

Horse:
RIDDEN = APPLICABLE

Snake:
RIDDEN = NOT_APPLICABLE

Bird:
FLIGHT = species-dependent

## Production Rule

A movement claim with incompatible context is BLOCKED.
