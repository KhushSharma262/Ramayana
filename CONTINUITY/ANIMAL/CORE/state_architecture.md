# ANIMAL STATE ARCHITECTURE

## MODEL

IDENTITY
? STATE
? EVENT
? REACTION
? CONSEQUENCE
? PERSISTENCE
? NEXT STATE

---

# STATE

Animal state is distributed across domain modules.

Examples:

- anatomical state
- physiological state
- behavioral state
- cognitive state
- location state
- interaction state
- equipment state
- transformation state
- audio state
- performance state

---

# RULE

CORE coordinates these states.

It does not duplicate their detailed definitions.

---

# CHANGE

A major state change requires:

previous_state
event
change
consequence
duration
current_state

---

# UNKNOWN VS UNCHANGED

UNKNOWN means information is unavailable.

UNCHANGED means the previous state has been verified to continue.

They are never equivalent.
