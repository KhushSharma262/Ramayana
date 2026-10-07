# ACKNOWLEDGEMENT ENFORCEMENT

A downstream system is considered compliant only when it acknowledges
the relevant ANIMAL_TRUTH handoff.

Acknowledgement states:

PENDING
RECEIVED
ACCEPTED
ACCEPTED_WITH_EXCEPTION
REJECTED
SUPERSEDED

Rules:

1. PENDING handoffs must not be treated as approved production input.

2. REJECTED handoffs cannot be used as authoritative truth.

3. ACCEPTED_WITH_EXCEPTION must document the exception.

4. Exceptions cannot silently rewrite animal truth.

5. A superseded handoff must no longer be used for new production work.

6. Existing assets created from superseded information must be evaluated
   for revalidation.

7. Any production system that detects a conflict must return it to the
   animal truth layer rather than locally changing the truth.
