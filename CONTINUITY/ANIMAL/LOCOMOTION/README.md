# ANIMAL / LOCOMOTION

## Purpose

Defines physically continuous animal movement.

## Master Model

ANATOMY
→ POSTURE
→ WEIGHT DISTRIBUTION
→ CONTACT
→ FORCE PRODUCTION
→ MOVEMENT PHASE
→ DISPLACEMENT
→ BALANCE / CORRECTION
→ NEXT MOVEMENT PHASE

## Supported Movement

TERRESTRIAL
AERIAL
AQUATIC
ARBOREAL
BURROWING
SLITHERING
HOPPING
CRAWLING
CLIMBING
WALKING
RUNNING
JUMPING
FLIGHT
SWIMMING

## Critical Continuity

Across frames and shots preserve:

identity
gait
movement phase
speed
direction
body orientation
limb state
foot contact
weight distribution
momentum
terrain
load
fatigue
injury
equipment
environment

## Domain Boundary

INDIVIDUAL = who the animal is.

ANATOMY = what the body is.

PHYSIOLOGY = current biological capacity.

COGNITION = how movement is selected.

BEHAVIOR = why / what movement is performed.

LOCOMOTION = how the body physically moves.

GROUP = collective movement.

SPATIAL = geometry.

PHYSICS = actual forces and simulation.

ENVIRONMENT = terrain and surroundings.

EQUIPMENT = attached equipment.

EVENT = event lifecycle.

AI_GENERATION = technical generation.

## Core Rule

A camera cut does not reset movement.

AI regeneration does not reset movement.

A new frame inherits the previous physically valid movement state.

## Canon

Canon overrides reconstruction.

Biology and biomechanics fill unspecified mechanics only.

UNKNOWN ≠ UNCHANGED.

## AI Principle

The animal must not slide, teleport, morph, swap limbs,
change gait arbitrarily, lose momentum, or reset its movement phase
without an authoritative causal reason.
