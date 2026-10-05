# ANIMAL LIGHTING CORE

## Purpose

ANIMAL/LIGHTING defines how scene illumination interacts with
an animal and how that interaction remains continuous.

It does not replace GLOBAL/LIGHTING.

## Master Boundary

GLOBAL LIGHTING
? scene illumination truth

ANIMAL/LIGHTING
? animal-specific response to that illumination

## Core Model

LIGHT SOURCE
? ILLUMINATION
? ANIMAL MATERIAL RESPONSE
? ANATOMICAL RESPONSE
? VISUAL APPEARANCE
? PERCEPTION / PERFORMANCE
? CONTINUITY

## Animal Lighting Does Not Own

- global scene lighting
- global exposure
- global color grading
- global camera
- global VFX
- final rendering
- final AI generation

Those remain owned by their global systems.

## Fundamental Rule

Lighting may change how an animal appears.

Lighting must not silently change what the animal physically is.

Examples:

sunlight may alter apparent fur brightness.

It must not change fur color.

Shadow may conceal anatomy.

It must not change anatomy.

Backlighting may reduce visible facial detail.

It must not create a different face.

## Continuity Principle

IDENTITY
? MATERIAL
? ILLUMINATION RESPONSE
? SHADOW
? APPEARANCE
? PERCEPTION
? NEXT STATE
