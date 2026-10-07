# DECISION OVERRIDE

Purpose:
Control exceptional changes to an approved decision.

An override requires:

override_id:
decision_id:
previous_decision:
new_decision:
reason:
supporting_evidence_ids:
affected_claim_ids:
affected_interpretation_ids:
affected_entities:
affected_assets:
affected_scenes:
affected_shots:
downstream_revalidation_required:
requested_by:
reviewed_by:
approved_by:
approval_date:
version:

Rules:

- Override must never erase the previous decision.
- Previous decisions remain part of history.
- Override must identify what changed and why.
- Downstream systems must be revalidated.
- Production convenience alone cannot justify an override.
