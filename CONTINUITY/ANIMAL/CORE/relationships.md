# ANIMAL RELATIONSHIP FRAMEWORK

## PURPOSE

Defines common relationship architecture.

---

# RELATIONSHIP TYPES

Animal ? Animal
Animal ? Human
Animal ? Group
Animal ? Population
Animal ? Location
Animal ? Environment
Animal ? Equipment
Animal ? Species

---

# RELATIONSHIP RECORD

relationship_id:
source_entity:
target_entity:
relationship_type:
status:
strength:
start_time:
duration:
history_ids:
event_ids:
source:
classification:
confidence:

---

# PERSISTENCE

Important relationships persist across scenes.

---

# CHANGE

Relationships may change through events.

---

# PROPAGATION

Relationship changes may affect:

- cognition
- behavior
- interaction
- human interaction
- group membership
- audio
- performance

---

# DOMAIN BOUNDARY

CORE defines the relationship contract.

Domain modules define domain-specific consequences.
