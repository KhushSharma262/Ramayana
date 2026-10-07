# RESEARCH AND APPROVAL

## PURPOSE

Separates research completion from production approval.

## RESEARCH STATUS

NOT_RESEARCHED
RESEARCHING
RESEARCHED
REVIEWED
CONFLICTED
REOPENED

## APPROVAL STATUS

NOT_REVIEWED
PENDING
APPROVED
APPROVED_WITH_QUALIFICATION
REJECTED
REOPEN_REQUIRED

## IMPORTANT

RESEARCHED does not mean APPROVED.

APPROVED does not mean CANON.

CANON status and approval status are separate.

## REQUIRED REVIEW

A major identity decision should have:

research_status
approval_status
reviewer
review_date
decision_id
evidence_ids
confidence

## APPROVED_WITH_QUALIFICATION

Used when the project accepts an interpretation while preserving uncertainty.

Example:

"Species A selected for production, but Species B remains a documented alternative."

## REJECTION

Rejected interpretations must remain in history where they affect reasoning.

## REOPEN CONDITIONS

Research should be reopened when:

- new primary source appears
- translation changes
- stronger evidence appears
- taxonomy changes materially
- major contradiction is discovered
- user requests reassessment

## USER AUTHORITY

Final creative/production approval belongs to the user.

AI must not silently approve its own conclusion.

## DOWNSTREAM PERMISSION

Only:

APPROVED
or
APPROVED_WITH_QUALIFICATION

may normally become a production dependency.

Qualification must propagate downstream.
