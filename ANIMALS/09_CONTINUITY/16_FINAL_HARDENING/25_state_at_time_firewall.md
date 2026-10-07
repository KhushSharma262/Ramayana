# STATE-AT-TIME FIREWALL

A state is valid only within its approved temporal interval.

Every important state must support:

valid_from
valid_until
timeline_id
branch_id
snapshot_id

The validator must confirm:

EVENT_TIME ∈ STATE_VALIDITY_INTERVAL

An entity cannot:

- use a future state in an earlier scene
- use a past state after it has been invalidated
- use post-death state before a valid reappearance mechanism
- use pre-training state after approved training
- use later equipment before acquisition

Temporal mismatch = BLOCKED.
