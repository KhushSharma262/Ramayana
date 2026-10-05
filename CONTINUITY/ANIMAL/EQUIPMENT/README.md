# ANIMAL / EQUIPMENT

## Purpose

Equipment defines physical objects associated with animals.

It covers equipment that is:

- worn
- attached
- carried
- used
- restrained by
- fitted to
- physically affecting an animal

## Core Model

IDENTITY
→ OWNERSHIP
→ POSSESSION
→ ATTACHMENT
→ FIT
→ USE
→ ANIMAL EFFECT
→ MOVEMENT
→ INTERACTION
→ DAMAGE
→ REPAIR / CHANGE
→ NEXT STATE

## Equipment Owns

- equipment identity
- equipment type
- ownership association
- possession
- attachment
- fit
- dimensions
- materials
- construction
- components
- condition
- wear
- residue
- equipment-side biomechanics
- equipment-side animal effects
- movement
- handler interaction
- damage
- repair
- storage
- transfer
- loss/recovery
- transformation
- equipment-specific audio interface
- environment interaction
- AI constraints
- QA

## Boundaries

ANIMAL:
animal response and animal state

PROP:
general object identity

WEAPON:
weapon truth

COSTUME:
human clothing

PHYSICS:
physical simulation

ENVIRONMENT:
environmental truth

AUDIO:
final sound implementation

AI_GENERATION:
technical generation

STATE_LEDGER:
ultimate continuity authority

## Identity Rule

Repair normally preserves equipment identity.

A genuinely new replacement receives a new equipment identity.

## Persistence Rule

Equipment does not silently reset.

If a strap breaks, it remains broken.

If equipment becomes muddy, that residue persists until removed.

If equipment is removed, it remains removed until reattached.

If equipment is lost, it remains unavailable until recovered.

If equipment is destroyed, it remains destroyed unless legitimately replaced or
canonically restored.

## Animal Rule

Equipment causes inputs.

Animal owns the resulting:

- physiology
- behavior
- cognition
- movement
- health state

## Divine / Mythological Rule

ORDINARY MATERIAL BASELINE
+
CANONICAL EQUIPMENT PROPERTY
+
SUPERNATURAL PROPERTY

Extraordinary properties require explicit authority.

## AI Rule

EQUIPMENT defines truth.

AI_GENERATION defines implementation.

AI output does not automatically become equipment truth.

## Ultimate Authority

The global CONTINUITY/state_ledger remains the ultimate continuity authority.
