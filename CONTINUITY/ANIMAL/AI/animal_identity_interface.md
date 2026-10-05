# ANIMAL IDENTITY INTERFACE

## Purpose

Defines how animal identity is communicated to AI generation without
duplicating the global identity-anchor system.

---

# 1. IDENTITY LEVELS

Identity may exist at:

SPECIES
POPULATION
GROUP
INDIVIDUAL

These must not be confused.

---

# 2. INDIVIDUAL IDENTITY

An important individual animal must have a stable identifier.

Example:

HORSE_001
DEER_014
ELEPHANT_003
JATAYU_001

The identifier remains stable unless continuity explicitly establishes
replacement, transformation, death, or another valid identity event.

---

# 3. IDENTITY ATTRIBUTES

Identity references may include:

- species
- sex
- age class
- body structure
- facial morphology
- eye characteristics
- ears
- muzzle/beak
- horns/antlers
- markings
- coat/feathers/scales
- tail
- scars
- distinctive physical features
- gait
- characteristic movement
- established equipment

---

# 4. IDENTITY VS APPEARANCE

Identity is persistent.

Appearance can vary naturally.

Examples of permitted variation:

- fur position
- feather position
- eye direction
- ear position
- posture
- muscle tension
- wetness
- dirt
- lighting
- expression/behavior
- movement phase

These must not create a new identity.

---

# 5. IDENTITY ANCHORS

Animal-specific identity requirements should reference:

CONTINUITY/AI_GENERATION/ai_identity_anchors.md

rather than creating a competing anchor system.

---

# 6. SPECIES ANCHOR

Species must remain stable unless:

- transformation occurs
- canon establishes a different form
- explicit production decision changes classification

---

# 7. IDENTITY DRIFT

Potential identity drift includes:

- changed skull structure
- changed body proportions
- changed markings
- changed coloration without cause
- changed age
- changed species
- changed limb structure
- unexplained scars
- unexplained horns/antlers
- unexplained tail structure
- unexplained facial morphology

---

# 8. OCCLUSION

Identity may be partially hidden by:

- darkness
- distance
- objects
- other animals
- vegetation
- camera framing
- motion
- environmental conditions

Occlusion does not authorize identity alteration.

---

# 9. MODEL CHANGE

A model change does not authorize identity change.

Identity must be validated when changing:

- AI model
- generation workflow
- reference set
- generation technique
- image-to-video system
- video model
- enhancement pipeline

---

# 10. IDENTITY REPLACEMENT

If an animal is intentionally replaced:

old_identity
? replacement_event
? new_identity

The system must not silently treat the replacement as the original animal.
