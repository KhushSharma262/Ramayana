# ANIMAL AUDIO STATE

## Purpose

Tracks the current audio-relevant state of an animal.

---

# 1. STATE FIELDS

May include:

- vocalization state
- breathing state
- movement sound state
- communication state
- distress state
- group sound state
- equipment sound state
- spatial sound state
- silence state

---

# 2. STATE TRANSITION

Use:

previous_state
? event
? audio_change
? consequence
? duration
? current_state

---

# 3. PERSISTENCE

Audio state must persist where the underlying animal state persists.

---

# 4. CAUSALITY

Sound must have a source or explicit production reason.

---

# 5. UNKNOWN

Unknown audio state must remain unknown rather than being invented.
