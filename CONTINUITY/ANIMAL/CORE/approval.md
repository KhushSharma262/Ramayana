# ANIMAL APPROVAL

## PURPOSE

Defines approval and lock authority.

---

# STATUSES

DRAFT
VALIDATING
CONDITIONALLY_APPROVED
APPROVED
LOCKED
REOPENED
REJECTED

---

# APPROVAL RECORD

approval_id:
entity_id:
domain:
version:
reviewer:
decision:
reason:
timestamp:
dependencies_validated:
downstream_effects:
next_review:

---

# DOMAIN APPROVAL

A domain may be approved independently.

---

# GLOBAL APPROVAL

Global approval requires dependent domains to be valid.

---

# REOPENING

Locked information may be reopened only through explicit authorization.

---

# REJECTION

Rejected output cannot become authoritative Animal state.
