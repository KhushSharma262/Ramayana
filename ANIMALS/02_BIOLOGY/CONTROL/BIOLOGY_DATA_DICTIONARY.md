---
file_id: BIO-CONTROL_BIOLOGY_DATA_DICTIONARY
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# BIOLOGY_DATA_DICTIONARY.md

## Purpose

Biological governance and production control.

## Status

ACTIVE

## Scope

This file defines biological truth and production constraints for the Ramayana animal system.

The biological baseline is current real-world zoology unless a separate project decision explicitly establishes another scope.

## Core Rule

Biological facts must never be invented merely to make a shot easier to generate.

Where reliable evidence is unavailable, the record must state:

- UNKNOWN
- UNCERTAIN
- SPECIES-DEPENDENT
- INDIVIDUAL-DEPENDENT
- SOURCE-CONFLICT
- DIRECTORIAL CHOICE

as appropriate.

## Content

Core fields:

animal_id
species_id
scientific_name
common_name
sex
age
life_stage
body_condition
health_state
injury_state
pain_state
hydration_state
hunger_state
energy_state
fatigue_state
thermal_state
reproductive_state
sensory_state
research_status
confidence
source_id
claim_id
decision_id
continuity_id.

All fields should be typed and validated before downstream use.

## Evidence Rule

Exact biological claims should be supported by reliable zoological, veterinary, ecological, anatomical, physiological or other scientific sources.

## Production Rule

This file provides biological constraints to downstream systems. It does not replace:

- ANIMAL_TRUTH
- BEHAVIOR
- MOVEMENT
- ECOLOGY
- DOMESTIC / TRAINED
- VISUAL IDENTITY
- CONTINUITY
- RIGGING
- 3D
- MATERIALS
- TEXTURE
- AUDIO
- CINEMATOGRAPHY
- LIGHTING
- EDITING
- RENDER

## Forbidden

Do not:

- invent biological facts
- anthropomorphize animals
- give every species identical behavior
- give every individual identical anatomy
- convert visual stereotypes into biological facts
- use cinematic convenience as biological evidence
- let a generic species profile overwrite an established individual state
- silently resolve contradictory research
- silently convert uncertainty into certainty

## Required Provenance

Every important biological claim should be traceable through:

SOURCE
→ EVIDENCE
→ CLAIM
→ INTERPRETATION
→ DECISION
→ ANIMAL ENTITY
→ INDIVIDUAL STATE
→ PRODUCTION USE

## Downstream Requirement

Any system using information from this file must preserve:

species identity,
individual identity where applicable,
age,
sex,
health,
physiological state,
environment,
and uncertainty.

## Final Authority

Project-level conflicts are resolved through the project's central control and approval systems.

ANIMALS owns animal-specific biological truth.


