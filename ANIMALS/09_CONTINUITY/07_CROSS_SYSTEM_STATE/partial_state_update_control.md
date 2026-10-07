# PARTIAL STATE UPDATE CONTROL

A state update may modify one domain without rewriting unrelated domains.

Example:

TRAINING_STATE changes.

This does NOT automatically change:

visual identity
biology
relationship
equipment
movement capability
ecology

Each consequence must be explicitly assessed.

Required:

changed_domain
unchanged_domains
dependent_domains
impact_assessment
new_snapshot_references

No implicit cascade.
