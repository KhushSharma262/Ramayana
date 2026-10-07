# EVENT CAUSALITY AND DEPENDENCIES

Every state-changing event must identify its cause or explicitly declare
that causality is unknown.

Events may depend on:

- previous events
- biological conditions
- behavior states
- movement states
- ecological conditions
- training
- relationships
- equipment
- canonical events
- historical conditions

A downstream event cannot depend on an invalidated snapshot.

If an upstream event is invalidated, dependent events are automatically
marked for revalidation.

Unknown causality cannot be silently converted into certainty.
