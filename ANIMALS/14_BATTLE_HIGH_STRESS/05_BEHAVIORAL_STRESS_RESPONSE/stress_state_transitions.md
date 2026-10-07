# STRESS STATE TRANSITIONS

Stress states are event-driven.

Example:

BASELINE
-> THREAT_DETECTED
-> ALERT
-> HIGH_AROUSAL
-> APPROVED_RESPONSE
-> DISENGAGEMENT
-> RECOVERY
-> BASELINE OR APPROVED_POST_EVENT_STATE

Every transition requires:
- trigger
- previous state
- new state
- temporal position
- evidence
- responsible domain
- snapshot

Unsupported transitions are BLOCKED.
