# LANGUAGE INTEGRATION HANDOFF SYSTEM

## 1. SYSTEM IDENTITY

system_name:
LANGUAGE INTEGRATION HANDOFF SYSTEM

system_id:
LANGUAGE-09-INTEGRATION-HANDOFF

version:
1.0

status:
MASTER PRODUCTION STANDARD

purpose:
This system defines how the LANGUAGE system exchanges controlled information with every other RAMAYAN production system.

It is the integration boundary.

It does NOT replace:
- CANON
- RESEARCH
- CHARACTERS
- ACTING
- AUDIO
- NARRATION
- SCENES
- SHOTS
- SUBTITLES
- PROMPTS
- AI
- CONTINUITY
- APPROVAL
- MASTER_REGISTRY

It does not redefine the authority of:
- SOURCE_TEXT
- TERMINOLOGY
- PRONUNCIATION
- CHARACTER_LANGUAGE
- HONORIFICS_AND_ADDRESS
- RELATIONSHIP_LANGUAGE
- DIALOGUE
- NARRATION
- RITUAL_LANGUAGE
- LANGUAGE_CONTINUITY
- LANGUAGE_QA

Its responsibility is to ensure that the correct information crosses system boundaries without:
- loss
- mutation
- duplication
- stale data
- authority confusion
- version mismatch
- hidden assumptions
- unsupported invention
- uncontrolled AI regeneration.

---

# 2. INTEGRATION PRINCIPLE

Integration means:

CORRECT INFORMATION
+
CORRECT OWNER
+
CORRECT VERSION
+
CORRECT CONTEXT
+
CORRECT SCOPE
+
CORRECT PROVENANCE
+
CORRECT HANDOFF
+
CORRECT VALIDATION

Integration does NOT mean copying every file into every other system.

Each system should consume only the information it requires.

---

# 3. SOURCE OF TRUTH PRINCIPLE

Every controlled field has ONE authoritative owner.

Examples:

source text:
04_SOURCE_TEXT

translation/adaptation:
04_SOURCE_TEXT/TRANSLATION_AND_ADAPTATION.md

terminology:
06_TERMINOLOGY/TERMINOLOGY.md

pronunciation:
02_LANGUAGE_RULES/PRONUNCIATION.md

character language:
03_CHARACTER_LANGUAGE/CHARACTER_LANGUAGE.md

honorifics:
03_CHARACTER_LANGUAGE/HONORIFICS_AND_ADDRESS.md

relationship language:
03_EPISODES/EPISODE_01/RELATIONSHIPS/RELATIONSHIP_LANGUAGE.md

dialogue:
05_SCRIPT/DIALOGUE.md

narration:
05_SCRIPT/NARRATION.md

ritual language:
05_SCRIPT/RITUAL_LANGUAGE.md

continuity:
07_CONTINUITY/LANGUAGE_CONTINUITY.md

language QA:
08_QA/LANGUAGE_QA.md

HANDOFF does not become a competing authority.

---

# 4. AUTHORITY RULE

If two systems disagree:

DO NOT:
- silently overwrite
- choose the newer file automatically
- choose the longer text
- choose the AI-generated result
- choose the most popular version

Instead:

1. identify owners
2. identify versions
3. identify exact conflict
4. identify authority
5. preserve both states
6. resolve through the owning system
7. record decision
8. propagate approved result
9. re-run affected QA.

---

# 5. HANDOFF UNIT

Every integration handoff should conceptually contain:

handoff_id:
source_system:
source_record:
destination_system:
destination_record:
payload_scope:
source_version:
destination_version:
context_version:
dependency_versions:
provenance:
authority:
status:
validation:
approval:
timestamp:

---

# 6. HANDOFF STATES

DRAFT
PREPARED
VALIDATING
READY
RECEIVED
ACCEPTED
REJECTED
BLOCKED
STALE
SUPERSEDED
REQUIRES_REVIEW

RECEIVED does not mean APPROVED.

ACCEPTED does not mean CANONICAL.

---

# 7. HANDOFF CONTRACT

Every handoff must define:

INPUT
OUTPUT
OWNER
VERSION
REQUIRED_FIELDS
OPTIONAL_FIELDS
VALIDATION
FAILURE_STATE
DEPENDENCIES
SCOPE
LIFETIME

No hidden fields should be required for successful downstream interpretation.

---

# 8. MINIMUM HANDOFF RULE

A handoff must contain enough information for the receiving system to understand the payload without reconstructing critical facts from memory.

For example:

A dialogue handoff should not contain only:

"Use respectful language."

It should provide the relevant:
- character
- listener
- relationship
- register
- terminology state
- pronunciation requirements
- source/adaptation state
- continuity state.

---

# 9. CONTEXT PACKAGE

A production context package may contain:

project_identity:
episode:
scene:
sequence:
character:
listener:
relationship:
source_state:
language_state:
terminology_state:
pronunciation_state:
translation_state:
adaptation_state:
continuity_state:
narration_state:
ritual_state:
qa_state:
approved_overrides:
constraints:
forbidden_states:
version_manifest:

The package must contain REFERENCES to authoritative records where possible rather than duplicating uncontrolled copies.

---

# 10. CONTEXT PACKAGE RULE

A context package is a snapshot.

It must have:

context_package_id:
context_package_version:
created_at:
valid_from:
valid_until:
source_versions:
dependency_versions:

An old context package must never silently be treated as current.

---

# 11. CONTEXT CLOSURE

Before an AI or downstream production system receives a context package:

[ ] all required dependencies resolved
[ ] no critical dependency missing
[ ] no rejected dependency included
[ ] no superseded critical dependency included
[ ] no unresolved critical conflict included
[ ] version state known
[ ] scene scope known
[ ] character scope known
[ ] relationship scope known
[ ] QA state known

---

# 12. MINIMAL CONTEXT PRINCIPLE

Send enough context to make the downstream operation correct.

Do not send the entire project unnecessarily.

This reduces:
- context pollution
- conflicting instructions
- token waste
- stale information
- retrieval ambiguity
- model confusion.

---

# 13. AUTHORITATIVE CONTEXT PRIORITY

When constructing a context package:

1. locked source decision
2. approved project rule
3. current terminology
4. current character state
5. current relationship state
6. current continuity state
7. current scene state
8. current production instruction
9. AI generation preference

AI preference is never above project authority.

---

# 14. DOWNSTREAM SYSTEMS

LANGUAGE may hand off to:

CANON
RESEARCH
CHARACTERS
ACTING
AUDIO
NARRATION
SCENES
SHOTS
SUBTITLES
PROMPTS
AI
CONTINUITY
QA
APPROVAL
MASTER_REGISTRY

The receiving system must preserve the status of the incoming information.

---

# 15. CANON HANDOFF

LANGUAGE → CANON must communicate:

- source identity
- source language
- source form
- quotation status
- translation status
- adaptation status
- terminology implications
- unresolved conflicts
- confidence
- provenance

LANGUAGE must NOT declare something canonical solely because it appears in a production script.

---

# 16. RESEARCH HANDOFF

LANGUAGE → RESEARCH should communicate:

- unresolved terminology
- pronunciation questions
- source conflicts
- translation ambiguity
- historical language questions
- Awadhi questions
- Sanskrit questions
- uncertain etymology
- unknown usage
- evidence gaps

Research findings must return with provenance.

---

# 17. CHARACTER HANDOFF

LANGUAGE → CHARACTERS must communicate language-relevant facts:

- approved names
- titles
- epithets
- address forms
- language identity
- terminology preferences
- pronunciation
- source-derived speech characteristics
- relationship-sensitive language

LANGUAGE must not redefine physical appearance, biography, personality, or canon.

---

# 18. ACTING HANDOFF

LANGUAGE → ACTING may provide:

- pronunciation
- sentence structure
- pauses
- silence points
- emotional language cues
- formality
- directness
- repetition
- interruption
- address sensitivity
- ritual pronunciation requirements

It must NOT dictate:
- voice timbre
- actor identity
- physical performance style
- facial performance
unless another system owns those decisions.

---

# 19. AUDIO HANDOFF

LANGUAGE → AUDIO may provide:

- approved spoken text
- pronunciation
- language
- phonetic data
- TTS normalization
- sandhi information
- Sanskrit/Awadhi pronunciation
- emphasis-sensitive terms
- narrator identity
- character identity

Audio must not alter source text silently.

---

# 20. NARRATION HANDOFF

LANGUAGE → NARRATION must provide:

- narrator identity
- narrative language
- narrative register
- source status
- narrator knowledge boundary
- handoff state
- listener
- approved terminology
- continuity state

For this project:

TULSIDAS
→ SHIVA–SATI–PARVATI STORY
→ SHIVA + PARVATI
→ TULSIDAS HANDOFF
→ SHIVA
→ RAMA-KATHA

must remain an explicit integration state.

---

# 21. SCENE HANDOFF

LANGUAGE → SCENES must provide:

- character language states
- relationship language state
- scene register
- terminology requirements
- pronunciation requirements
- source/adaptation status
- language switches
- ritual language requirements
- narration state
- continuity constraints

Scene design must not silently rewrite language authority.

---

# 22. SHOT HANDOFF

LANGUAGE → SHOTS may provide only language-sensitive information such as:

- spoken line
- speaker
- listener
- narration
- ritual speech
- visible textual language
- subtitle-sensitive content
- pronunciation-sensitive performance

Language must not dictate:
- lens
- framing
- camera movement
- lighting
- composition

unless another approved integration contract explicitly requires it.

---

# 23. SUBTITLE HANDOFF

LANGUAGE → SUBTITLES must provide:

- approved source text
- approved translation
- terminology
- names
- titles
- epithets
- language identity
- quotation status
- adaptation status
- version

Subtitle simplification must not alter approved meaning.

---

# 24. PROMPT HANDOFF

LANGUAGE → PROMPTS must provide:

- approved character names
- approved titles
- approved objects
- approved locations
- ritual terminology
- language-sensitive visual text
- pronunciation-sensitive textual elements where relevant

Prompt generation must not invent canonical terminology.

---

# 25. AI HANDOFF

LANGUAGE → AI must be treated as:

CONTROLLED_INPUT
not
AUTHORITY.

AI receives:

- approved context
- constraints
- terminology
- character language
- relationship state
- continuity
- source/adaptation status
- forbidden states
- output classification

AI returns:

UNVERIFIED_OUTPUT

until QA validates it.

---

# 26. AI RETURN HANDOFF

AI → LANGUAGE must include where available:

model:
model_version:
prompt_version:
context_package:
generation_parameters:
output:
candidate_status:
retrieval_sources:
citations:
uncertainty:
known_limitations:

AI output must never directly overwrite a locked record.

---

# 27. CONTINUITY HANDOFF

LANGUAGE → CONTINUITY must communicate:

- current language state
- terminology state
- pronunciation state
- relationship language state
- character language state
- narration state
- ritual state
- approved changes
- exceptions
- unresolved issues

CONTINUITY records the state across time.

---

# 28. QA HANDOFF

LANGUAGE → QA must provide:

- asset
- source
- current versions
- dependencies
- expected state
- applicable rules
- known exceptions
- risk level
- provenance
- approval requirements

QA must validate the current state rather than an obsolete copy.

---

# 29. APPROVAL HANDOFF

LANGUAGE → APPROVAL must provide:

- asset
- exact version
- QA state
- source evidence
- unresolved warnings
- waivers
- dependencies
- change history
- final recommendation

APPROVAL must never approve an unspecified version.

---

# 30. MASTER REGISTRY HANDOFF

LANGUAGE → MASTER_REGISTRY should provide:

- asset ID
- asset type
- owner
- status
- version
- approval state
- dependency state
- source state
- QA state
- current/obsolete state

The registry is an index.

It is not a replacement for source content.

---

# 31. BIDIRECTIONAL HANDOFF

Integration is not always one-way.

Example:

LANGUAGE
→ AUDIO
→ pronunciation feedback
→ LANGUAGE

or:

LANGUAGE
→ SUBTITLES
→ translation issue
→ LANGUAGE

Returned information must retain:

origin:
reason:
evidence:
status:
version:

---

# 32. RETURN-DATA FIREWALL

Downstream feedback must not automatically become authoritative.

It must pass through the appropriate owner.

Example:

TTS suggests a pronunciation.

That does NOT make the pronunciation canonical.

It becomes:

PRONUNCIATION_CANDIDATE

until validated.

---

# 33. FEEDBACK CLASSIFICATION

Returned feedback may be:

BUG
SUGGESTION
VARIANT
SOURCE_CONFLICT
PERFORMANCE_LIMITATION
MODEL_LIMITATION
PRODUCTION_CONSTRAINT
CANONICAL_EVIDENCE
NEW_RESEARCH
UNKNOWN

Only appropriate evidence can change authoritative records.

---

# 34. HANDOFF VERSION COMPATIBILITY

Every handoff must check:

source_version
compatible_with
destination_version

Compatibility status:

COMPATIBLE
COMPATIBLE_WITH_WARNING
INCOMPATIBLE
UNKNOWN

UNKNOWN must not silently become COMPATIBLE.

---

# 35. SCHEMA VERSIONING

Handoff contracts require:

schema_name:
schema_version:

If a field changes:
- version the schema
- document migration
- preserve old interpretation
- test compatibility

---

# 36. BACKWARD COMPATIBILITY

When possible, newer integration schemas should preserve interpretation of older valid payloads.

If not possible:

MIGRATION_REQUIRED

must be explicit.

---

# 37. FORWARD COMPATIBILITY

A receiving system must reject or safely ignore unknown fields rather than assigning invented meanings.

Unknown field:

UNKNOWN_FIELD

must not become:

ASSUMED_MEANING.

---

# 38. REQUIRED VS OPTIONAL DATA

Every handoff should distinguish:

REQUIRED
OPTIONAL
CONDITIONAL
DEPRECATED

A receiving system must know what missing data means.

Blank does not automatically mean:
- false
- none
- unknown
- not applicable.

---

# 39. NULL-STATE CONTROL

Use explicit states:

UNKNOWN
NOT_APPLICABLE
NOT_YET_RESEARCHED
NOT_AVAILABLE
WITHHELD
PENDING
CONFIRMED

Never use an empty field when the semantic state matters.

---

# 40. HANDOFF EXPIRY

Some handoffs are time/version sensitive.

Record:

valid_from:
valid_until:
superseded_by:

A stale handoff must be rejected or revalidated.

---

# 41. STALE HANDOFF DETECTION

A handoff is stale if any critical dependency has changed since it was generated.

Examples:

terminology changed
pronunciation changed
relationship changed
character language changed
source classification changed
script changed
continuity changed

Stale handoffs require regeneration or revalidation.

---

# 42. HANDOFF IMMUTABILITY

Once ACCEPTED, the original payload should remain recoverable.

Corrections create:

NEW_HANDOFF_VERSION

Do not silently mutate the accepted historical payload.

---

# 43. IDEMPOTENCY

Repeating the same valid handoff must not create uncontrolled duplicates.

A handoff should have:

handoff_id
payload_fingerprint

Repeated identical handoffs should be recognized.

---

# 44. DUPLICATE HANDOFF CONTROL

If the same payload is sent twice:

DUPLICATE_HANDOFF

must be distinguished from:

UPDATED_HANDOFF.

Do not treat duplication as a new authority decision.

---

# 45. TRANSACTIONAL HANDOFF

Where practical:

PREPARE
→ VALIDATE
→ SEND
→ RECEIVE
→ VALIDATE
→ ACCEPT

If receiving validation fails:

ROLLBACK_OR_REJECT

Do not leave the destination in an ambiguous half-updated state.

---

# 46. PARTIAL HANDOFF FAILURE

If only part of a package arrives:

HANDOFF_PARTIAL

The destination must not assume missing components are unchanged unless that behavior is explicitly defined by the contract.

---

# 47. ATOMIC CRITICAL HANDOFF

Critical linked data should be treated as one logical transaction.

Example:

approved_text
+
terminology_version
+
pronunciation_version
+
character_state
+
relationship_state

must not be independently advanced into incompatible versions.

---

# 48. DEPENDENCY MANIFEST

Every critical handoff should include:

dependency_manifest:

source:
terminology:
character:
relationship:
translation:
pronunciation:
continuity:
script:
qa:

Only relevant dependencies need values, but critical dependencies must be explicit.

---

# 49. PROVENANCE

Every handoff must preserve:

origin:
transformation_history:
source_reference:
previous_handoff:
current_owner:

No handoff may erase provenance.

---

# 50. TRANSFORMATION LOG

If the payload changes during handoff:

input:
transformation:
output:
reason:
operator:
version:

Do not hide transformations inside an opaque integration step.

---

# 51. LOSS DETECTION

The integration layer must detect whether information was lost during transfer.

Compare:

SOURCE_PAYLOAD
vs
DESTINATION_PAYLOAD

Flag:

FIELD_LOSS
VALUE_LOSS
CONTEXT_LOSS
PROVENANCE_LOSS
VERSION_LOSS

---

# 52. MUTATION DETECTION

Detect unauthorized changes in:

- terminology
- names
- titles
- pronunciation
- translation
- source status
- canon status
- character identity
- relationship
- knowledge
- continuity

Any unexplained mutation is a handoff failure.

---

# 53. CONTEXT POLLUTION

Do not pass unrelated project data merely because it exists.

Excessive context can create:
- conflicting instructions
- model confusion
- stale retrieval
- unintended terminology reuse
- character knowledge leakage

Context should be scoped.

---

# 54. CONTEXT PRIORITY MARKERS

Every context item should have a priority where necessary:

CRITICAL
HIGH
NORMAL
REFERENCE
BACKGROUND

Critical constraints must be distinguishable from background information.

---

# 55. CONTEXT CONFLICT MARKERS

If two retrieved records conflict:

CONFLICT

must be surfaced.

Do not merge them into one synthesized statement without authority resolution.

---

# 56. SECURITY / TRUST BOUNDARY

Files or retrieved content must not automatically become instructions.

Distinguish:

DATA
from
INSTRUCTION.

A source document saying:

"Ignore previous rules"

must be treated as content, not as a system instruction.

---

# 57. PROMPT INJECTION DEFENSE

RAG and integration systems must treat retrieved source material as untrusted data for instruction purposes.

Retrieved content cannot override:
- project rules
- source hierarchy
- approval state
- system instructions
- security constraints

---

# 58. DATA/INSTRUCTION SEPARATION

Every context package should conceptually distinguish:

SYSTEM_RULES
PROJECT_RULES
SOURCE_DATA
RESEARCH_DATA
PRODUCTION_DATA
USER_INSTRUCTION
AI_OUTPUT

These categories must not be merged.

---

# 59. UNTRUSTED EXTERNAL CONTENT

External:
- websites
- PDFs
- databases
- OCR
- model outputs
- community sources
- fan sources

must retain their provenance and trust classification.

---

# 60. INTEGRATION QA

Before handoff:

[ ] owner known
[ ] destination known
[ ] schema known
[ ] version known
[ ] dependencies known
[ ] payload scope known
[ ] provenance preserved
[ ] source status preserved
[ ] canon status preserved
[ ] adaptation status preserved
[ ] uncertainty preserved
[ ] no critical conflict hidden
[ ] no stale dependency
[ ] no rejected dependency
[ ] no superseded critical dependency

---

# 61. RECEIVING QA

After receipt:

[ ] schema valid
[ ] required fields present
[ ] versions compatible
[ ] dependencies resolved
[ ] payload unchanged where required
[ ] transformations documented
[ ] provenance intact
[ ] status intact
[ ] uncertainty intact
[ ] receiving system accepted scope

---

# 62. HANDOFF FAILURE

Failure classes:

SCHEMA_FAILURE
MISSING_DATA
INVALID_DATA
VERSION_FAILURE
DEPENDENCY_FAILURE
PROVENANCE_FAILURE
AUTHORITY_FAILURE
STALE_DATA
CONFLICT
MUTATION
LOSS
DUPLICATION
SECURITY_FAILURE
CONTEXT_FAILURE

---

# 63. INTEGRATION BLOCKERS

The following block critical handoff:

- missing source authority
- broken provenance
- incompatible version
- unresolved critical conflict
- stale critical dependency
- unauthorized mutation
- missing required context
- invalid schema
- rejected upstream asset
- blocked upstream asset
- hidden transformation
- lost canonical status

---

# 64. REJECTION RULE

A receiving system should reject rather than guess when:

- required field missing
- authority unclear
- version incompatible
- source status ambiguous
- critical dependency missing
- payload mutated unexpectedly
- provenance broken
- security boundary violated

Guessing creates hidden production errors.

---

# 65. INTEGRATION LOG

Record:

handoff_id:
source:
destination:
schema:
payload_fingerprint:
source_version:
destination_version:
dependency_manifest:
status:
validation:
errors:
warnings:
accepted_by:
timestamp:

---

# 66. HANDOFF AUDIT TRAIL

Never delete failed handoffs.

Preserve:

attempt
→ failure
→ correction
→ retry
→ acceptance

This allows diagnosis of integration failures.

---

# 67. RETRY RULE

A failed handoff may be retried only after determining whether failure was:

TRANSIENT
or
STRUCTURAL.

Do not repeatedly retry a structurally invalid payload.

---

# 68. RETRY IDEMPOTENCY

Retries must not create duplicate:
- records
- approvals
- terminology entries
- audio assets
- subtitle versions
- continuity states

Use handoff IDs and payload fingerprints.

---

# 69. RECONCILIATION

If source and destination disagree after handoff:

SOURCE_STATE
vs
DESTINATION_STATE

perform reconciliation.

Never automatically choose destination merely because it was received later.

---

# 70. INTEGRATION SNAPSHOT

At major milestones capture:

integration_snapshot_id:
language_versions:
downstream_versions:
active_handoffs:
open_conflicts:
open_blockers:
accepted_exceptions:
qa_state:

---

# 71. RELEASE HANDOFF

A LANGUAGE release to downstream production requires:

release_id:
language_release_version:
source_snapshot:
terminology_snapshot:
character_snapshot:
relationship_snapshot:
translation_snapshot:
pronunciation_snapshot:
continuity_snapshot:
qa_snapshot:
handoff_manifest:

No unspecified state may be assumed.

---

# 72. RELEASE COMPATIBILITY

Downstream systems must confirm compatibility with the LANGUAGE release before consuming it.

Status:

COMPATIBLE
COMPATIBLE_WITH_WARNING
INCOMPATIBLE
NOT_CHECKED

NOT_CHECKED is not safe for critical production.

---

# 73. ROLLBACK

If an integration release causes downstream errors:

1. identify release
2. identify affected systems
3. identify affected assets
4. stop propagation
5. restore previous compatible state
6. verify dependency closure
7. re-run QA
8. document rollback
9. repair root cause
10. re-release

---

# 74. NO SILENT DOWNSTREAM REPAIR

Downstream systems must not silently patch LANGUAGE data locally.

If a downstream system needs a correction:

send feedback to the authoritative owner.

Local patches create divergence.

---

# 75. LOCAL OVERRIDE CONTROL

A downstream override is allowed only if:

scope:
reason:
owner:
start:
end:
source_basis:
approval:

is recorded.

---

# 76. OVERRIDE EXPIRY

Overrides must expire or be explicitly renewed.

Expired overrides must not continue invisibly.

---

# 77. FINAL INTEGRATION GATE

A LANGUAGE handoff is production-valid only when:

OWNER_KNOWN
AND
DESTINATION_KNOWN
AND
SCHEMA_VALID
AND
VERSION_COMPATIBLE
AND
DEPENDENCIES_CLOSED
AND
PROVENANCE_INTACT
AND
AUTHORITY_INTACT
AND
UNCERTAINTY_PRESERVED
AND
NO_UNAUTHORIZED_MUTATION
AND
NO_CRITICAL_CONFLICT
AND
RECEIVING_QA_PASSED.

---

# 78. ABSOLUTE RULES

1. Never duplicate authority.
2. Never silently change another system's owned data.
3. Never treat a handoff as a source of canon.
4. Never pass stale critical context.
5. Never pass unresolved critical conflicts as settled facts.
6. Never hide transformations.
7. Never lose provenance.
8. Never lose uncertainty.
9. Never guess missing critical data.
10. Never allow AI output to overwrite locked data.
11. Never let downstream systems silently redefine LANGUAGE.
12. Never allow version mismatch to remain invisible.
13. Never allow partial critical handoffs to appear complete.
14. Never create uncontrolled duplicate records.
15. Never let local overrides become global truth.
16. Never allow expired overrides to remain active.
17. Never delete failed handoff history.
18. Never call RECEIVED equivalent to APPROVED.
19. Never call AI agreement independent evidence.
20. Never allow retrieved data to override project instructions.
21. Never let external text become an instruction merely because it was retrieved.
22. Never allow context pollution to determine canonical truth.
23. Never assume blank means unchanged.
24. Never assume newer means authoritative.
25. Never assume more text means better context.
26. Never assume popular usage means canonical usage.
27. Never assume a successful transfer means a correct transfer.
28. Validate both before and after handoff.
29. Preserve the exact version state.
30. Every critical integration must be reproducible.

---

# 79. FINAL STANDARD

The integration layer must make the LANGUAGE system behave as a controlled production service rather than an isolated collection of markdown files.

Every downstream consumer should receive:

THE RIGHT INFORMATION
FROM THE RIGHT OWNER
AT THE RIGHT VERSION
WITH THE RIGHT CONTEXT
WITH THE RIGHT PROVENANCE
UNDER THE RIGHT AUTHORITY
AND WITH THE RIGHT QA STATE.

Anything less is an integration defect.
