# APPROVAL AUTHORITY CONTRACT

APPROVED requires explicit authority.

Required:

approval_id:
authority_id:
authority_role:
approval_scope:
approval_date:
biology_version:
reviewed_sources:
reviewed_claims:
reviewed_conflicts:
reviewed_gaps:
decision:

Allowed decision:

APPROVED
REJECTED
CONDITIONAL
BLOCKED

## RULE

A status string without an approval record is not an approval.

## CONDITIONAL

Conditional approval must list exact conditions.

Unresolved conditions block production release.
