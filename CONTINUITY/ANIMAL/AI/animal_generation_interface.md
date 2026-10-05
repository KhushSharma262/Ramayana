# ANIMAL GENERATION INTERFACE

## Purpose

Defines the interface between the authoritative ANIMAL continuity system
and the global AI_GENERATION system.

---

# 1. INPUT

Animal generation may consume:

- animal identity
- species identity
- individual state
- group state
- population state
- anatomy
- appearance
- behavior
- cognition
- perception
- physiology
- locomotion
- environment
- ecology
- relationships
- equipment
- transformation state
- performance state
- audio requirements
- approved references
- continuity state
- previous validated output

---

# 2. OUTPUT

Generation output may produce:

- image
- video
- animation
- frame
- sequence
- audio
- edited asset
- composited shot
- reference asset

The output remains provisional until validated.

---

# 3. REQUIRED STATE TRANSFER

The interface should communicate:

animal_id
species_id
detail_level
current_state
previous_state
authorized_changes
persistent_state
identity_anchors
behavior_requirements
movement_requirements
environmental_conditions
interaction_requirements
physics_requirements
canonical_constraints
unknowns
uncertainties
references
negative_constraints
variation_limits

---

# 4. STATE INTEGRITY

The generation system must distinguish:

PRESERVE
CHANGE
UNKNOWN
NOT_APPLICABLE

It must never interpret UNKNOWN as permission to invent.

---

# 5. CHANGE REQUEST

Every requested change should identify:

- target attribute
- previous state
- desired state
- reason
- authority
- effective time
- affected shots
- affected dependencies
- validation requirement

---

# 6. REGENERATION

Regeneration is not a reset.

A regenerated animal must inherit all validated state unless an
authorized change explicitly modifies it.

---

# 7. DETAIL LEVEL

The interface must communicate whether the animal is:

- principal
- supporting individual
- population/background

This controls how much continuity data must be enforced.

---

# 8. GLOBAL SYSTEM HANDOFF

The interface passes animal-specific requirements to:

CONTINUITY/AI_GENERATION

It must not create an independent model-version, seed,
parameter-history, or generation-history authority.

---

# 9. RETURNED OUTPUT

The generated result must be returned with:

- generation identity
- source state
- references used
- changes requested
- output status
- validation status
- detected deviations
- continuity impact
- approval status

---

# 10. OUTPUT AUTHORITY

Generated output:

GENERATED
?
VALIDATED
?
APPROVED
?
AUTHORITATIVE

Only the approved state becomes eligible for propagation.
