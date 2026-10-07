# NO-OP TRANSITION CONTROL

A state transition must represent a meaningful state change.

If:

PREVIOUS_STATE = NEW_STATE

the system must classify the event as:

NO_OP

A NO_OP may be recorded for audit purposes but must not create false
continuity changes.

No-op events must not be used to manufacture causal history.
