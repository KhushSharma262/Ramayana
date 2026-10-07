# REJECTION AND REWORK

An asset or handoff is REJECTED when it violates an approved requirement.

Rejection must record:

- rejection_id
- target_id
- failed requirement
- evidence
- validator
- timestamp
- severity
- rework requirement
- affected lineage

Rework does not silently mutate the rejected record.

A new version or derived asset must be created.

Repeated failure may escalate to BLOCKED.
