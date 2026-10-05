# COGNITIVE STATE

## Purpose

Defines the animal's current cognitive condition.

---

# STATE FIELDS

animal_id:
species_id:
current_attention:
active_recognition:
memory_state:
learning_state:
expectation_state:
emotional_state:
motivation_state:
decision_state:
confidence:
uncertainty:

---

# STATE TRANSITION

previous_cognitive_state
? event
? cognitive_change
? consequence
? current_cognitive_state

---

# PERSISTENCE

Cognitive state persists across shots when the underlying
condition remains unchanged.

---

# UNKNOWN

Unknown internal cognitive information remains unknown.
