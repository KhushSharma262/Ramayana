---
file_id: BIO-CONTROL_ANTI_HALLUCINATION_RULES
domain: CONTROL
canonical_owner: CONTROL
file_role: CONTROL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# ANTI-HALLUCINATION RULES

FAIL-SAFE MODE:

If the system cannot establish a fact:

DO NOT GUESS.

Return:

UNKNOWN
NOT_RESEARCHED
UNCERTAIN
CONFLICTED
NOT_APPLICABLE
SPECIES_SPECIFIC_REQUIRED

Never return a plausible invented number merely because a value is
needed for generation.

Forbidden inference:

generic animal
→ species fact

species fact
→ individual fact

adult fact
→ juvenile fact

male fact
→ female fact

healthy fact
→ injured individual

domestic breed
→ all domestic animals

one species
→ another species

visual stereotype
→ biological truth

mythological depiction
→ zoological fact

AI-generated image
→ evidence

cinematic convenience
→ biological fact


