# DUPLICATE INTERACTION FIREWALL

The same real-world/narrative event must not receive multiple canonical interaction IDs.

Before creating an interaction, check:

participant set
event type
temporal scope
location
causal context
scene context
event signature

Create:

event_signature =
participants + event_type + temporal_scope + location + causal_context

Possible states:

UNIQUE
DUPLICATE
POSSIBLE_DUPLICATE
MERGED
BLOCKED

POSSIBLE_DUPLICATE requires review.

A new interaction_id is allowed only when the event is demonstrably distinct or explicitly versioned as a separate event.

Two visual representations of one event are not two interactions.
