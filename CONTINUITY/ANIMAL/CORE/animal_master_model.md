# ANIMAL MASTER MODEL

## Purpose

Defines the canonical core record for every trackable Animal entity.

---

# REQUIRED IDENTITY

animal_id:
species_id:
population_id:
group_id:

---

# CLASSIFICATION

animal_classification:
detail_level:

Possible classification:

ORDINARY
DOMESTIC
WILD
MYTHOLOGICAL
DIVINE
SUPERNATURAL
TRANSFORMED
UNKNOWN

---

# LIFECYCLE

lifecycle_status:

Possible states:

UNKNOWN
IDENTIFIED
INTRODUCED
ACTIVE
INACTIVE
TRANSFORMED
INJURED
AGING
DECEASED
REMOVED
HISTORICAL

---

# CURRENT STATE

current_state_id:
previous_state_id:
state_start_time:
state_duration:
state_confidence:

---

# RELATIONSHIPS

relationship_ids:

---

# KNOWLEDGE

knowledge_state_id:

---

# LOCATION

location_id:
world_position_id:
scene_position_id:
shot_position_id:

---

# TRANSFORMATION

transformation_state_id:
transformation_history_ids:

---

# AUTHORITY

authority_status:
source_ids:
classification:
confidence:
uncertainty:
conflicting_sources:

---

# VALIDATION

validation_status:
approval_status:
last_validated:

---

# HISTORY

history_ids:
event_ids:
dependency_ids:

---

# RULE

Domain modules extend this master record.

They do not redefine its identity.
