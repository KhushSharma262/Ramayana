# ANIMAL CROSS-DOMAIN DEPENDENCIES

## PURPOSE

Defines dependency propagation between Animal domains.

---

# EXAMPLE 1

INJURY
? PHYSIOLOGY
? BEHAVIOR
? LOCOMOTION
? AUDIO
? PERFORMANCE

---

# EXAMPLE 2

GROUP CHANGE
? COGNITION
? BEHAVIOR
? INTERACTION
? AUDIO

---

# EXAMPLE 3

TRANSFORMATION
? ANATOMY
? PHYSIOLOGY
? COGNITION
? BEHAVIOR
? AUDIO
? PERFORMANCE

---

# EXAMPLE 4

HUMAN INTERACTION
? RELATIONSHIP
? COGNITION
? BEHAVIOR
? INTERACTION
? PERFORMANCE

---

# RULE

Only affected dependency chains should be revalidated/regenerated.

Unrelated domains should not be unnecessarily reset.

---

# GRAPH

dependency_id:
source_domain:
target_domain:
trigger:
effect:
validation_required:
