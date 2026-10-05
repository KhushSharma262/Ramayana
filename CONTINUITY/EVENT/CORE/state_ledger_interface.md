# EVENT STATE LEDGER INTERFACE

The global state ledger remains authoritative.

EVENT contributes:

- event identity
- previous state reference
- event
- state delta
- resulting state reference
- consequences
- timestamp
- duration
- persistence
- dependencies

EVENT does not create a competing ledger.

## Required Causal Chain

previous_state
→ event
→ state_delta
→ resulting_state
→ consequences
