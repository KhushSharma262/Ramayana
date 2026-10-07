# TRAINING STATE MACHINE

## VALID STATES

UNTRAINED
TAMING
HABITUATION
BASIC_TRAINING
INTERMEDIATE
ADVANCED
SPECIALIZED
EXPERT
WORK_READY
RETIRED
CONDITIONING_LOSS
RETRAINING
UNKNOWN
BLOCKED

## VALIDATION

A state transition requires:

previous_state:
event:
reason:
evidence:
date:
new_state:

## INVALID

UNTRAINED → EXPERT without training history.

WORK_READY → UNTRAINED without a cause.

RETIRED → WORK_READY without retraining/return-to-work justification.

## RULE

Training is persistent state.
