# ANATOMY REGISTRY INTERFACE

## Purpose

Defines the minimum registry information needed to connect animal anatomy
with the broader continuity system.

---

# REQUIRED FIELDS

animal_id:
species_id:
anatomical_version:
detail_level:
authority:
canonical_status:
biological_status:
age_state:
sex_status:
body_plan:
distinctive_features:
persistent_markings:
specialized_structures:
known_anomalies:
current_anatomical_state:
injury_state:
transformation_state:
reference_ids:
validation_status:
approval_status:
last_validated:
dependencies:

---

# AUTHORITY STATUS

Possible:

AUTHORITATIVE
APPROVED
CONDITIONALLY_APPROVED
UNDER_REVIEW
UNKNOWN
UNCERTAIN
REJECTED
SUPERSEDED

---

# VERSIONING

Anatomical corrections must preserve historical versions.

Do not silently rewrite historical anatomy.

---

# DEPENDENCIES

Anatomy may affect:

- physiology
- locomotion
- behavior
- interaction
- performance
- equipment
- physics
- AI generation
- QA

Changes must trigger dependency analysis where appropriate.
