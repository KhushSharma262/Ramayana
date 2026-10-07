# ANIMAL TRUTH HANDOFF CONTRACT

Purpose:
Define exactly what ANIMAL_TRUTH sends to downstream systems.

ANIMAL_TRUTH owns:

- animal identity
- species truth
- individual identity
- identification uncertainty
- biological constraints
- species-level behavioral constraints
- scale truth
- continuity-critical animal state
- approved animal-specific restrictions

ANIMAL_TRUTH does NOT implement:

- rigging
- 3D topology
- material shaders
- texture production
- final lighting
- final cinematography
- audio mixing
- editing
- rendering

Every downstream handoff must contain:

handoff_id:
animal_entity_id:
record_version:
truth_status:
approval_status:
identity_lock_status:
uncertainty_status:
production_restrictions:
required_downstream_actions:
prohibited_downstream_actions:
source_decision_ids:
acknowledgement_required:
acknowledgement_status:
receiving_system:
receiver:
date:
version:

A receiving system must not silently alter an ANIMAL_TRUTH-owned field.

If a receiving system needs an exception, it must create a documented
request back to ANIMAL_TRUTH.
