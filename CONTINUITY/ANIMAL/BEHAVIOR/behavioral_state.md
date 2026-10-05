# BEHAVIORAL STATE

## Purpose

Defines the animal's current behavioral condition.

---

# POSSIBLE STATES

Examples:

- resting
- sleeping
- alert
- feeding
- drinking
- grooming
- exploring
- socializing
- fleeing
- hiding
- stalking
- hunting
- attacking
- defending
- territorial
- mating
- caring for offspring
- injured
- recovering
- searching
- waiting
- observing
- travelling

The list is extensible.

---

# STATE FIELDS

current_state:
previous_state:
trigger_event:
duration:
intensity:
confidence:
expected_transition:
consequence:

---

# STATE TRANSITION

previous_state
? event
? behavioral_change
? duration
? consequence
? current_state

---

# PERSISTENCE

State must persist across cuts unless changed by a valid event.
