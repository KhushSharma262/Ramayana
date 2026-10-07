# EVENT IDEMPOTENCY AND DUPLICATE CONTROL

The same event must not be applied twice.

Duplicate detection uses:

event_id
source_reference
timeline_id
temporal_position
participants
event_type
causal_signature

If two records may represent the same event, they enter DUPLICATE_REVIEW.

The system must not create two state transitions from one real-world event
unless explicitly approved as separate manifestations.
