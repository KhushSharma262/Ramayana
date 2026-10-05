# ANIMAL EVENT STATE LEDGER INTERFACE

The global state_ledger remains the authoritative continuity ledger.

Animal Event provides event-specific state transitions to it.

## Event Delta

animal
previous_state
event
change
consequence
timestamp
duration
current_state
downstream_effects

Animal Event must never create a competing state ledger.

All significant state changes must be compatible with the global ledger.
