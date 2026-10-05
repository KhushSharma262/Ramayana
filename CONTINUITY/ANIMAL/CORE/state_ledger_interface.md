# ANIMAL STATE LEDGER INTERFACE

## PURPOSE

Connects Animal continuity to the global state_ledger.

---

# GLOBAL AUTHORITY

The global CONTINUITY/state_ledger is authoritative.

Animal CORE does not create a competing master ledger.

---

# ANIMAL ENTRY

Animal state transitions should be representable as:

entity_id:
previous_state:
event:
change:
consequence:
timestamp:
duration:
current_state:
downstream_effects:

---

# DOMAIN REFERENCES

A ledger event may reference:

anatomy
physiology
behavior
cognition
locomotion
interaction
human_interaction
environment
equipment
audio
transformation
performance

---

# RULE

Animal modules may reference ledger entries.

They must not silently contradict them.
