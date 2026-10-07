# BEHAVIOR FAIL-CLOSED POLICY

## Purpose

This policy is the final production gate for animal behavior data.

---

## Production is permitted ONLY when all conditions are true

1. Database architecture is valid.
2. Entity ID is valid.
3. Taxonomy is resolved.
4. Entity is routed to exactly one biological database.
5. Evidence exists.
6. Evidence provenance exists.
7. Geographic applicability exists.
8. Population applicability exists.
9. Interpretation is separated from evidence.
10. Claim is explicit.
11. Confidence is explicit.
12. Uncertainty is explicit.
13. Conflicts are disclosed.
14. Decision is explicit.
15. Approval exists.
16. Version exists.
17. Snapshot exists.
18. Current validation passes.
19. Current manifest exists.
20. No cross-species contamination exists.
21. No AI-generated output is being used as biological evidence.
22. No movement/animation implementation has been substituted for behavior.
23. No unresolved placeholder remains.
24. No unregistered database exists.
25. No duplicate entity ID exists.
26. No duplicate claim ID exists.

---

# BLOCK CONDITIONS

Any of the following immediately blocks production:

- missing taxonomy
- ambiguous species identity
- missing evidence
- missing source
- missing geographic applicability
- missing population applicability
- unsupported confidence
- unresolved conflict
- missing approval
- missing snapshot
- duplicate entity
- duplicate claim
- cross-group entity
- orphan entity
- placeholder content
- AI output treated as biological evidence
- movement/animation content inside behavior truth
- draft entity marked production
- modified approved data without a new version
- modified snapshot without revalidation

---

# RESEARCH PRINCIPLE

The system must never replace missing knowledge with plausible invention.

Unknown is a valid state.

Blocked is a valid state.

Unresolved is a valid state.

---

# HUMAN AUTHORITY

AI may:

- organize
- retrieve
- compare
- summarize
- identify conflicts
- propose interpretations

AI may NOT silently:

- approve biological truth
- resolve conflicting evidence
- invent missing behavior
- convert uncertainty into certainty
- convert global evidence into India-specific evidence
- convert captive behavior into wild behavior
- convert individual behavior into species-wide behavior

Final production approval remains human-controlled.

---

# RELEASE PRINCIPLE

Production consumes an approved snapshot.

Production must never consume uncontrolled working drafts.

A changed database requires:

RESEARCH
→ REVIEW
→ APPROVAL
→ NEW SNAPSHOT
→ NEW MANIFEST
→ RELEASE

No shortcut is permitted.
