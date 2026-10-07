# LANGUAGE RAG SYSTEM

## 1. SYSTEM IDENTITY

system_name:
LANGUAGE RETRIEVAL-AUGMENTED GENERATION SYSTEM

system_id:
LANGUAGE-09-INTEGRATION-RAG

version:
1.0

status:
MASTER PRODUCTION STANDARD

purpose:
This system defines how retrieval-augmented generation is used to provide controlled LANGUAGE information to AI systems without allowing retrieval to become an uncontrolled source of canon.

RAG is a retrieval mechanism.

RAG is NOT:
- a source of authority by itself
- a replacement for research
- a replacement for source verification
- a replacement for terminology control
- a replacement for continuity
- a replacement for QA
- a replacement for human/source-based judgment.

---

# 2. RAG CORE PRINCIPLE

RAG must follow:

RETRIEVE
→ IDENTIFY
→ CLASSIFY
→ VERIFY
→ PRIORITIZE
→ CONTEXTUALIZE
→ GENERATE
→ VALIDATE
→ REGISTER

Never:

RETRIEVE
→ TRUST
→ GENERATE

---

# 3. RAG AUTHORITY

The authority hierarchy remains:

VERIFIED PRIMARY SOURCE
→ APPROVED PROJECT DECISION
→ APPROVED LANGUAGE SYSTEM
→ VERIFIED SECONDARY SOURCE
→ APPROVED TRADITIONAL/INTERPRETIVE SOURCE
→ RESEARCH CANDIDATE
→ AI-GENERATED CONTENT

AI-generated content is never automatically promoted by retrieval frequency.

---

# 4. RAG PURPOSES

RAG may support:

- source retrieval
- terminology retrieval
- character-language retrieval
- relationship retrieval
- pronunciation retrieval
- translation retrieval
- continuity retrieval
- narration retrieval
- ritual retrieval
- QA retrieval
- scene-context retrieval
- approved adaptation retrieval

---

# 5. RAG DOES NOT ESTABLISH CANON

Retrieving a document containing a claim does not establish that claim as canonical.

RAG must preserve:

source_status:
canon_status:
adaptation_status:
confidence:
provenance:

---

# 6. KNOWLEDGE LAYERS

RAG should conceptually separate:

LAYER 1:
DIRECT VERIFIED SOURCE

LAYER 2:
APPROVED PROJECT DECISION

LAYER 3:
VERIFIED LANGUAGE RULE

LAYER 4:
APPROVED PRODUCTION ADAPTATION

LAYER 5:
RESEARCH / SECONDARY EVIDENCE

LAYER 6:
UNVERIFIED CANDIDATE

LAYER 7:
AI OUTPUT

Lower layers must never silently override higher layers.

---

# 7. DOCUMENT CLASSES

Every indexed document should have a class.

SOURCE
PROJECT_RULE
LANGUAGE_RULE
CHARACTER_LANGUAGE
RELATIONSHIP
TERMINOLOGY
PRONUNCIATION
TRANSLATION
ADAPTATION
DIALOGUE
NARRATION
RITUAL
CONTINUITY
QA
RESEARCH
PRODUCTION
AI_OUTPUT

---

# 8. DOCUMENT TRUST

Every RAG document should have:

document_id:
document_class:
owner:
source:
authority:
version:
status:
canon_status:
language:
date:
supersedes:
superseded_by:

No document should enter high-trust retrieval without classification.

---

# 9. INDEXING PRINCIPLE

Do not index everything identically.

Indexing must preserve metadata required to distinguish:

- source from adaptation
- canon from production
- verified from unverified
- current from obsolete
- Hindi from Awadhi
- Sanskrit from translation
- character language from general language
- episode-specific from global rules.

---

# 10. CHUNKING PRINCIPLE

Chunk boundaries must preserve meaning.

Do not split:

- a canonical quotation from its attribution
- a Sanskrit verse from necessary grammatical context
- an Awadhi chaupai from its relevant context
- a terminology definition from its status
- a character rule from its conditions
- a continuity state from its effective time
- a relationship rule from its relationship identity
- a QA decision from its approval state.

---

# 11. SEMANTIC CHUNKING

Preferred chunk boundaries:

SOURCE UNIT
TERM RECORD
CHARACTER RULE
RELATIONSHIP RULE
SCENE STATE
CONTINUITY EVENT
TRANSLATION RECORD
PRONUNCIATION RECORD
QA DECISION

Avoid arbitrary fixed-size chunks when they destroy semantic boundaries.

---

# 12. CHUNK METADATA

Each chunk should retain:

chunk_id:
document_id:
document_version:
document_class:
section:
language:
source:
source_location:
character:
relationship:
episode:
scene:
term_id:
continuity_state:
authority:
canon_status:
adaptation_status:
confidence:
approval_status:
effective_from:
effective_until:
superseded:
provenance:

---

# 13. SOURCE CONTEXT PRESERVATION

A chunk must retain enough surrounding context to prevent false interpretation.

For source text, preserve where relevant:

preceding_unit:
current_unit:
following_unit:
speaker:
listener:
narrator:
location:
scene_context:

---

# 14. METADATA IS PART OF MEANING

Do not retrieve text without metadata when metadata changes interpretation.

Example:

"Rama"

without:
character identity
source
speaker
context

may be insufficient.

Metadata is not decorative.

---

# 15. RETRIEVAL TARGET

Every RAG query should identify:

task:
episode:
scene:
character:
listener:
relationship:
language:
required_information:
risk_level:

Where unavailable:

UNKNOWN

must be used rather than guessed.

---

# 16. QUERY CONSTRUCTION

A good retrieval query contains:

WHAT IS NEEDED
+
WHO NEEDS IT
+
WHEN
+
WHERE
+
RELATIONSHIP
+
LANGUAGE
+
SOURCE/STATUS REQUIREMENT

Avoid broad retrieval when a precise query is possible.

---

# 17. RETRIEVAL PRIORITY

Recommended priority:

1. exact current locked record
2. exact current approved record
3. current authoritative parent record
4. exact source occurrence
5. current contextual record
6. approved historical/variant record
7. research evidence
8. lower-trust background material

---

# 18. RECENCY VS AUTHORITY

The newest document is not automatically the most authoritative.

Priority is determined by:

AUTHORITY
+
SCOPE
+
VALIDITY
+
VERSION

not timestamp alone.

---

# 19. SCOPE MATCHING

Prefer records matching:

- same character
- same relationship
- same episode
- same scene
- same language
- same terminology context
- same ritual context
- same narrative role

A highly relevant lower-level context may be preferable to a generic global statement, provided authority is preserved.

---

# 20. TEMPORAL RETRIEVAL

RAG must respect effective time.

A query for Episode 01 must not retrieve a character state established only in Episode 30 unless the query explicitly requests future information.

Use:

effective_from:
effective_until:

---

# 21. CONTINUITY-AWARE RETRIEVAL

Retrieval should prefer the state valid at the requested scene.

Query:

character + episode + scene + relationship + continuity_version

rather than:

character only.

---

# 22. KNOWLEDGE-AWARE RETRIEVAL

If generating a character's dialogue, retrieve only information that the character is permitted to know.

Separate:

CHARACTER_KNOWLEDGE
from
AUDIENCE_KNOWLEDGE
from
NARRATOR_KNOWLEDGE.

Do not expose narrator-only knowledge to character generation.

---

# 23. RELATIONSHIP-AWARE RETRIEVAL

For dialogue, retrieve:

speaker:
listener:
relationship:
status_difference:
emotional_state:
public_private:
pronoun_state:
honorific_state:
address_state:

A generic character profile is insufficient.

---

# 24. CHARACTER-AWARE RETRIEVAL

Retrieve the character's:

- vocabulary
- sentence pattern
- emotional language
- command style
- question style
- disagreement style
- relationship modulation
- knowledge boundary
- forbidden patterns

Do not retrieve another character's language rules unless comparison is explicitly required.

---

# 25. TERMINOLOGY RETRIEVAL

Terminology retrieval must return:

term_id:
approved_form:
language:
meaning:
contextual_meaning:
pronunciation:
translation:
canon_status:
adaptation_status:
approval_status:
version:
variants:
restrictions:

Never return only a bare word when its metadata determines how it should be used.

---

# 26. PRONUNCIATION RETRIEVAL

Pronunciation retrieval should return:

term:
language:
script:
approved_pronunciation:
transliteration:
phonetic_data:
syllables:
sandhi:
source_basis:
version:
status:

Do not allow a general model pronunciation to override the retrieved approved form.

---

# 27. TRANSLATION RETRIEVAL

Return:

original:
literal:
contextual:
performance:
screenplay:
subtitle:
equivalence:
source:
version:
adaptation_status:

The model must know which translation layer it is being asked to use.

---

# 28. SOURCE RETRIEVAL

Source retrieval should prefer exact source units over broad summaries.

Where available return:

source_name:
edition:
section:
location:
original_text:
language:
speaker:
listener:
poetic_form:
variant_status:

---

# 29. RITUAL RETRIEVAL

For ritual generation retrieve:

ritual_identity:
stage:
participant:
authority:
source:
language:
formula:
pronunciation:
sequence:
adaptation_status:
approval:

Never retrieve isolated ritual words without their ritual context when sequence matters.

---

# 30. NARRATION RETRIEVAL

For narration retrieve:

narrator:
listener:
narrative_frame:
knowledge_scope:
language:
register:
source_status:
handoff_state:
continuity_state:

This is essential for Tulsidas/Shiva narrator transitions.

---

# 31. QA RETRIEVAL

AI generation should retrieve relevant QA constraints:

forbidden_forms:
locked_terms:
critical_pronunciations:
known_continuity_constraints:
approved_exceptions:
current_version:
open_blockers:

QA data must not be treated as canon.

It is a constraint layer.

---

# 32. RETRIEVAL OF NEGATIVE RULES

RAG must be able to retrieve what must NOT be done.

Examples:

- forbidden modern slang
- forbidden terminology
- superseded spelling
- rejected pronunciation
- invalid canon attribution
- restricted character vocabulary
- restricted knowledge
- obsolete production form

Negative constraints are first-class retrieval data.

---

# 33. NEGATIVE RETRIEVAL PRIORITY

If a retrieved record says:

DO NOT USE X

and another low-authority source contains X:

the prohibition remains active unless the authoritative owner changes it.

---

# 34. CONFLICT-AWARE RETRIEVAL

If retrieval finds conflicting records:

DO NOT MERGE AUTOMATICALLY.

Return:

CONFLICT_FOUND

with:
record_a:
record_b:
authority_a:
authority_b:
version_a:
version_b:
scope_a:
scope_b:

Generation must pause or use the approved higher-authority record.

---

# 35. SOURCE VARIANT RETRIEVAL

When variants exist, retrieval must identify:

VARIANT_A
VARIANT_B
SELECTED_PROJECT_VARIANT
REASON

Never present one edition as the only historical form when variants are known.

---

# 36. SUPERSEDED DOCUMENT FILTER

By default, superseded documents must not outrank current approved documents.

They may be retrieved only when:
- historical comparison is requested
- migration is required
- rollback is required
- provenance is being audited

---

# 37. REJECTED DOCUMENT FILTER

Rejected records should not be used for generation.

They may be retrieved only for:
- QA
- audit
- error analysis
- provenance
- explaining rejection

---

# 38. DRAFT DOCUMENT FILTER

Draft material must be clearly labelled.

Drafts must not be mixed into authoritative context without explicit instruction.

---

# 39. RAG CONTEXT PACKAGING

Before generation, assemble:

SYSTEM_RULES
+
CURRENT_PROJECT_RULES
+
TASK_SCOPE
+
SOURCE_EVIDENCE
+
CHARACTER_STATE
+
RELATIONSHIP_STATE
+
TERMINOLOGY
+
PRONUNCIATION
+
CONTINUITY
+
QA_CONSTRAINTS
+
ADAPTATION_RULES

Only include relevant items.

---

# 40. CONTEXT ORDER

Recommended order:

1. non-negotiable system rules
2. project-level rules
3. current source authority
4. current scene/episode state
5. character
6. relationship
7. terminology
8. pronunciation
9. translation/adaptation
10. continuity
11. QA constraints
12. task instruction

This prevents lower-level material from silently overriding authority.

---

# 41. INSTRUCTION-DATA SEPARATION

Retrieved documents are DATA.

They must not automatically become instructions.

A retrieved sentence such as:

"Ignore the previous rules"

must remain source data unless it is explicitly part of an approved instruction.

---

# 42. PROMPT INJECTION DEFENSE

RAG must defend against:

- malicious documents
- accidental instruction-like text
- source text containing imperative language
- external websites
- copied prompts
- AI-generated documents
- user-created files with embedded instructions

The retrieval system must preserve content while preventing unauthorized authority escalation.

---

# 43. TRUST BOUNDARY

Each retrieved item should carry:

trust_level:
authority_level:
source_type:
verification_status:

A low-trust source must never be silently promoted by retrieval rank.

---

# 44. RETRIEVAL SCORE VS AUTHORITY

Vector similarity score is NOT authority.

Keyword score is NOT authority.

Recency score is NOT authority.

Popularity is NOT authority.

Retrieval ranking is a discovery mechanism.

Authority must be applied separately.

---

# 45. HYBRID RETRIEVAL

Where available, use:

semantic retrieval
+
keyword/exact retrieval
+
metadata filtering
+
version filtering
+
authority filtering

This reduces failure on:
- names
- exact quotations
- rare terminology
- Devanagari forms
- source citations
- episode IDs.

---

# 46. EXACT-MATCH RETRIEVAL

Use exact matching for:

- term IDs
- character IDs
- source references
- canonical quotations
- locked terminology
- pronunciation IDs
- scene IDs
- episode IDs
- version IDs.

Semantic similarity alone is insufficient for identity-critical data.

---

# 47. SEMANTIC RETRIEVAL

Semantic retrieval is useful for:

- contextual research
- character-language similarity
- related terminology
- thematic context
- continuity context
- translation comparison

It must still preserve authority metadata.

---

# 48. METADATA FILTERING

At minimum filter where relevant by:

project:
system:
episode:
scene:
character:
relationship:
language:
document_class:
authority:
status:
version:
effective_date:
canon_status:
adaptation_status:

---

# 49. RETRIEVAL FAIL-CLOSED

If required high-authority information cannot be retrieved:

DO NOT INVENT IT.

Return:

RETRIEVAL_INSUFFICIENT

Then:
- research
- request clarification
- use explicitly approved fallback
- mark uncertainty.

---

# 50. RETRIEVAL FALLBACK

Fallback hierarchy:

EXACT_CURRENT_RECORD
→ CURRENT_AUTHORITY
→ EXACT_SOURCE
→ CURRENT_CONTEXTUAL_RECORD
→ VERIFIED_SECONDARY
→ RESEARCH_REQUIRED

Never:

EXACT_RECORD
→ RANDOM_INTERNET
→ AI_GUESS.

---

# 51. TOP-K CONTROL

More retrieved chunks do not necessarily mean better context.

Too many chunks can cause:
- contradictions
- context dilution
- stale data
- character contamination
- source confusion

Use the smallest sufficient set.

---

# 52. RETRIEVAL DIVERSITY

For research tasks, retrieval may intentionally include multiple independent sources.

For production generation, retrieval should prefer authoritative consistency over unnecessary diversity.

---

# 53. SOURCE DIVERSITY VS AUTHORITY

Multiple copies of the same claim do not equal multiple independent sources.

Detect:
- copied websites
- derivative summaries
- repeated AI text
- same source republished elsewhere

---

# 54. RAG CITATION REQUIREMENT

Every source-derived generated claim should retain:

source_document_id:
source_location:
retrieval_reference:
confidence:

Where exact citation is unavailable:

CITATION_MISSING

must be recorded.

---

# 55. RAG ANSWER PROVENANCE

Generated output should conceptually map:

OUTPUT_SEGMENT
→ RETRIEVED_CONTEXT
→ SOURCE
→ PROJECT_RULE
→ TRANSFORMATION

This allows later auditing.

---

# 56. RAG CLAIM TYPES

Generated claims should be classified:

DIRECT_SOURCE
SOURCE_DERIVED
PROJECT_RULE
RESEARCH
INTERPRETATION
ADAPTATION
PRODUCTION_CHOICE
UNKNOWN

The model must not flatten these categories.

---

# 57. RAG GENERATION FIREWALL

Before generation verify:

[ ] task identified
[ ] required source retrieved
[ ] authority known
[ ] character known
[ ] relationship known
[ ] continuity known
[ ] terminology current
[ ] pronunciation current
[ ] translation layer specified
[ ] adaptation scope specified
[ ] QA constraints loaded
[ ] forbidden states loaded

---

# 58. POST-GENERATION VALIDATION

Generated output must be checked for:

[ ] source fidelity
[ ] terminology
[ ] grammar
[ ] pronunciation
[ ] character voice
[ ] relationship
[ ] knowledge
[ ] continuity
[ ] translation
[ ] adaptation status
[ ] modernism
[ ] cultural dignity
[ ] QA blockers

RAG retrieval does not make generation automatically correct.

---

# 59. RETRIEVAL-INDUCED ERROR

RAG itself can create errors.

Examples:
- wrong episode retrieved
- wrong character retrieved
- old terminology retrieved
- wrong source edition retrieved
- adaptation retrieved instead of source
- narrator state retrieved instead of character state
- future continuity state retrieved
- superseded record retrieved

These must be explicitly testable.

---

# 60. RETRIEVAL REGRESSION

Maintain a golden retrieval test set containing queries such as:

- major character language
- major relationship
- major terminology
- canonical quotation
- pronunciation
- narrator transition
- ritual language
- continuity state
- source variant

Every major RAG change should be tested against it.

---

# 61. RETRIEVAL PRECISION

Measure:

correct_authority_retrieved:
correct_scope_retrieved:
correct_version_retrieved:
correct_context_retrieved:

A high semantic similarity score is not sufficient.

---

# 62. RETRIEVAL RECALL

Measure whether required critical records can actually be retrieved.

Failure to retrieve a critical record is a production risk even if retrieved records are individually correct.

---

# 63. RAG FALSE POSITIVE

Flag when an irrelevant record is retrieved strongly enough to influence generation.

Examples:
- another character's language
- another episode's relationship
- another source's variant
- superseded terminology

---

# 64. RAG FALSE NEGATIVE

Flag when the required authoritative record exists but is not retrieved.

This is a retrieval failure, not merely a generation failure.

---

# 65. RETRIEVAL LEAKAGE

Prevent retrieval of:

- future episode states
- confidential production notes
- rejected canonical claims
- character-only knowledge into narrator generation
- narrator-only knowledge into character generation
- obsolete versions into current generation

---

# 66. EPISODE ISOLATION

When generating Episode N:

default retrieval scope should be:

EPISODE_N
+
VALID_GLOBAL_RULES
+
REQUIRED_PRIOR_STATE

Do not retrieve later episodes by default.

---

# 67. CHARACTER ISOLATION

When generating Character A:

default retrieval should not include Character B's private language state unless:
- comparison requested
- scene requires it
- relationship requires it.

---

# 68. RELATIONSHIP ISOLATION

Relationship data should be retrieved for the specific pair and scene state.

Do not use a generic relationship rule if a more specific scene state exists.

---

# 69. NARRATOR ISOLATION

Tulsidas retrieval and Shiva narration retrieval must remain distinct.

Do not mix narrator contexts unless the handoff explicitly requires comparison.

---

# 70. RITUAL ISOLATION

Ritual terminology should be retrieved with ritual context.

Do not retrieve ordinary dialogue rules as substitutes for ritual language.

---

# 71. SOURCE/ADAPTATION SEPARATION

RAG should maintain separate retrieval paths for:

SOURCE
and
ADAPTATION.

When both are returned, label them clearly.

---

# 72. TRANSLATION LAYER CONTROL

Before generation specify:

requested_layer:

ORIGINAL
LITERAL
CONTEXTUAL
PERFORMANCE
SCREENPLAY
SUBTITLE

The model must not choose a layer silently.

---

# 73. PRONUNCIATION LAYER CONTROL

Specify whether the requested form is:

SOURCE_PRONUNCIATION
PRODUCTION_PRONUNCIATION
PERFORMANCE_PRONUNCIATION
TTS_PRONUNCIATION
SUBTITLE_ROMANIZATION

These must not be conflated.

---

# 74. RAG CACHE CONTROL

Caches must be version-aware.

Cache key should conceptually include:

query:
scope:
version:
language:
character:
episode:
scene:
authority:

A cache hit from an obsolete state must not be treated as current.

---

# 75. CACHE INVALIDATION

Invalidate/revalidate caches when:

- terminology changes
- pronunciation changes
- source changes
- continuity changes
- character language changes
- relationship changes
- translation changes
- QA lock changes

---

# 76. EMBEDDING VERSION CONTROL

If embeddings are regenerated:

embedding_model:
embedding_version:
chunking_version:
metadata_schema_version:

must be recorded.

Changing embeddings may change retrieval behavior.

Run regression tests after major embedding changes.

---

# 77. INDEX VERSION CONTROL

Record:

index_id:
index_version:
embedding_version:
chunking_version:
metadata_version:
source_snapshot:

A RAG result without index provenance is not fully reproducible.

---

# 78. RE-INDEXING SAFETY

Before replacing an index:

- preserve previous index identity
- validate new index
- run retrieval regression
- compare critical queries
- verify metadata
- verify authority filters
- verify superseded filters

Do not replace a production index blindly.

---

# 79. RAG MIGRATION

When documents or schemas change:

OLD_INDEX
→ MIGRATION
→ NEW_INDEX
→ REGRESSION
→ RELEASE

Never assume semantic equivalence after migration.

---

# 80. RETRIEVAL AUDIT LOG

Record for critical generation:

retrieval_id:
query:
scope:
filters:
index_version:
retrieved_documents:
scores:
authority_levels:
selected_context:
excluded_conflicts:
timestamp:

This makes retrieval reproducible.

---

# 81. CONTEXT AUDIT

Record:

context_package_id:
retrieval_id:
selected_records:
excluded_records:
reason_for_exclusion:
priority:
versions:

This prevents hidden context assembly.

---

# 82. EXCLUSION LOG

For critical tasks, record why a seemingly relevant source was excluded:

wrong_authority
wrong_episode
wrong_character
wrong_time
superseded
rejected
conflicting
irrelevant
unverified

---

# 83. RAG CONFLICT RESOLUTION

If two retrieved records conflict:

1. identify authority
2. identify scope
3. identify version
4. identify effective time
5. identify source
6. determine whether both are valid in different contexts
7. choose only after classification
8. record decision

---

# 84. NO MAJORITY-VOTE CANON

Do not choose a canonical form because:

"8 sources say X and 2 say Y."

Authority and evidence quality matter more than numerical count.

---

# 85. RAG GENERATION MODES

Possible modes:

RESEARCH_MODE
SOURCE_MODE
TRANSLATION_MODE
DIALOGUE_MODE
NARRATION_MODE
RITUAL_MODE
CONTINUITY_MODE
QA_MODE
PROMPT_MODE

Each mode should have its own retrieval constraints.

---

# 86. RESEARCH MODE

May retrieve broader sources.

Must preserve:
- source class
- confidence
- disagreement
- provenance.

Research mode may discover candidates.

It does not automatically approve them.

---

# 87. SOURCE MODE

Highest priority:
exact source.

Do not replace exact source with a summary.

---

# 88. TRANSLATION MODE

Must retrieve:
original
+
context
+
translation layer
+
translation constraints.

---

# 89. DIALOGUE MODE

Must retrieve:
character
+
listener
+
relationship
+
knowledge
+
scene
+
terminology
+
continuity
+
dialogue rules.

---

# 90. NARRATION MODE

Must retrieve:
narrator
+
listener
+
narrative frame
+
knowledge scope
+
continuity
+
source/adaptation status.

---

# 91. RITUAL MODE

Must retrieve:
ritual
+
stage
+
participants
+
source
+
language
+
pronunciation
+
sequence
+
sacred constraints.

---

# 92. CONTINUITY MODE

Must retrieve:
previous state
+
current state
+
expected state
+
change history
+
dependencies.

---

# 93. QA MODE

Must retrieve:
asset
+
expected state
+
source
+
current versions
+
rules
+
known exceptions
+
regression baseline.

---

# 94. PROMPT MODE

Must retrieve:
current production state
+
approved terminology
+
character state
+
scene state
+
visual-relevant language constraints.

Do not retrieve unnecessary source material merely to fill context.

---

# 95. RAG OUTPUT CONTRACT

A critical RAG response should conceptually return:

answer:
source_basis:
authority:
confidence:
version:
uncertainty:
adaptation_status:
relevant_constraints:
citation/provenance:

For pure generation tasks, internal metadata may be stored separately, but it must remain recoverable.

---

# 96. RAG UNKNOWN RESPONSE

If retrieval cannot establish an answer:

UNKNOWN

or:

INSUFFICIENT_EVIDENCE

must be preferred over hallucination.

---

# 97. RAG ABSTENTION

The RAG system must be allowed to abstain.

Abstention is required when:
- critical source unavailable
- conflicting authoritative records unresolved
- critical metadata missing
- retrieval confidence insufficient
- version state unknown
- requested claim exceeds available evidence.

---

# 98. RAG CONFIDENCE

Confidence must reflect:

evidence_quality
+
authority
+
scope_match
+
version_match
+
retrieval_reliability

not merely model probability.

---

# 99. CONFIDENCE CALIBRATION

Confidence categories:

VERY_HIGH
HIGH
MEDIUM
LOW
UNKNOWN

For critical canonical claims, LOW or UNKNOWN should trigger review.

---

# 100. RAG HALLUCINATION CONTROL

Never fill missing fields with plausible information.

Never infer:
- source
- citation
- quotation
- pronunciation
- etymology
- ritual formula
- historical usage

merely because the model can generate a plausible answer.

---

# 101. RAG CITATION CONTROL

A retrieved source must support the generated claim.

Do not cite a source merely because:
- it contains the same character
- it discusses the same topic
- it ranks highly
- it was retrieved nearby

Citation relevance must be checked.

---

# 102. CITATION GRANULARITY

Critical claims should point to the smallest useful source unit.

Prefer:

exact verse/section/record

over:

entire book/document

when practical.

---

# 103. CITATION MISMATCH

If the generated claim is broader than the retrieved evidence:

FLAG:

EVIDENCE_SCOPE_MISMATCH

Do not silently broaden the source claim.

---

# 104. RAG OUTPUT SEGMENTATION

When an output contains multiple claims:

each claim should be separable conceptually.

Example:

CLAIM_A:
source-derived

CLAIM_B:
project decision

CLAIM_C:
adaptation

CLAIM_D:
uncertain

Do not present all four as one undifferentiated factual statement.

---

# 105. GENERATION PROVENANCE

For generated dialogue/narration:

track, where practical:

line_id:
retrieval_id:
context_package_id:
character:
scene:
source_basis:
adaptation_basis:
generation_model:
generation_version:
qa_status:

---

# 106. RAG OUTPUT REUSE

A generated line that has passed QA may become:

APPROVED_PRODUCTION_ASSET

It does NOT automatically become:

CANONICAL_SOURCE.

Its status must remain:

PRODUCTION_APPROVED

unless independently supported by source evidence.

---

# 107. APPROVED OUTPUT INDEXING

If approved generated content is indexed for future RAG:

document_class:
PRODUCTION_APPROVED

must remain explicit.

It must not outrank verified source when answering canonical questions.

---

# 108. SELF-CONTAMINATION CONTROL

The system must prevent AI-generated production output from becoming false "evidence" for later generations.

AI output may be indexed for:
- continuity
- production consistency
- approved reuse

but must retain:

AI_GENERATED_ORIGIN.

---

# 109. FEEDBACK LOOP CONTROL

RAG pipeline:

SOURCE
→ RETRIEVAL
→ GENERATION
→ QA
→ PRODUCTION

must NOT become:

SOURCE
→ GENERATION
→ INDEX
→ RETRIEVAL
→ "SOURCE"

Approved generated material must retain its class.

---

# 110. RESEARCH/PRODUCTION SEPARATION

Research candidates may be retrieved for research.

They must not automatically enter production context.

Production context should prefer:

APPROVED
or
EXPLICITLY_REQUESTED_RESEARCH.

---

# 111. RAG QUALITY GATES

Before retrieval:
QUERY_VALID

After retrieval:
RETRIEVAL_VALID

Before generation:
CONTEXT_VALID

After generation:
OUTPUT_VALID

Before production:
QA_VALID

Before release:
INTEGRATION_VALID

---

# 112. RAG FAILURE MODES

Track:

RETRIEVAL_MISS
WRONG_DOCUMENT
WRONG_VERSION
WRONG_SCOPE
WRONG_AUTHORITY
CONTEXT_POLLUTION
CONTEXT_OMISSION
SOURCE_CONFUSION
ADAPTATION_CONFUSION
CHARACTER_LEAK
KNOWLEDGE_LEAK
TEMPORAL_LEAK
TERMINOLOGY_LEAK
PRONUNCIATION_LEAK
HALLUCINATION
CITATION_MISMATCH
STALE_CACHE
INDEX_DRIFT
EMBEDDING_DRIFT

---

# 113. RAG REGRESSION SUITE

Maintain tests for:

1. exact canonical quotation retrieval
2. major name retrieval
3. major title retrieval
4. terminology retrieval
5. pronunciation retrieval
6. character language retrieval
7. relationship retrieval
8. scene continuity retrieval
9. narrator retrieval
10. ritual retrieval
11. source/adaptation separation
12. superseded-record filtering
13. future-episode isolation
14. character knowledge isolation
15. conflict detection
16. negative constraint retrieval
17. citation correctness
18. unknown/abstention behavior

---

# 114. RAG SECURITY TESTS

Test against:

- prompt injection
- malicious source text
- conflicting instructions in documents
- poisoned metadata
- fake authority labels
- fake citations
- AI-generated false sources
- stale cache
- unauthorized context leakage

---

# 115. RAG RELEASE CRITERIA

A RAG release is production-ready only when:

index_valid
AND
metadata_valid
AND
authority_filters_valid
AND
version_filters_valid
AND
regression_passed
AND
critical retrieval tests passed
AND
injection tests passed
AND
stale-data tests passed
AND
abstention works
AND
provenance works.

---

# 116. RAG FINAL STANDARD

RAG exists to make the correct project knowledge easier to retrieve.

It must never make incorrect knowledge look authoritative merely because retrieval made it easy to access.

The final chain is:

RETRIEVE
→ IDENTIFY
→ VERIFY
→ PRIORITIZE
→ CONTEXTUALIZE
→ GENERATE
→ VALIDATE
→ TRACE
→ APPROVE
→ RELEASE

Never:

RETRIEVE
→ ASSUME
→ GENERATE
→ TRUST.

---

# 117. ABSOLUTE RAG RULES

1. Retrieval is not authority.
2. Similarity is not authority.
3. Recency is not authority.
4. Popularity is not authority.
5. AI confidence is not authority.
6. Multiple AI answers are not independent evidence.
7. Source and adaptation must remain separate.
8. Current and superseded versions must remain separate.
9. Character knowledge and narrator knowledge must remain separate.
10. Episode states must remain temporally scoped.
11. Retrieved data must not become instructions.
12. Prompt injection must not change project authority.
13. Missing evidence must not be filled by invention.
14. Conflicting evidence must remain visible.
15. Critical claims must retain provenance.
16. Critical retrieval must be reproducible.
17. Context must be versioned.
18. Cache must be versioned.
19. Index must be versioned.
20. Embeddings must be versioned.
21. Generated output must retain its production status.
22. Generated output must never contaminate source authority.
23. Rejected material must not enter normal production retrieval.
24. Superseded material must not outrank current material.
25. Future information must not leak into earlier scenes.
26. Downstream production feedback does not automatically become canon.
27. RAG must be able to abstain.
28. RAG must fail closed when critical evidence is unavailable.
29. RAG must be regression-tested after major changes.
30. Every critical RAG generation must be traceable.

---

# 118. FINAL INTEGRATION + RAG STANDARD

The LANGUAGE integration architecture is complete only when:

HANDOFF
+
VERSION CONTROL
+
DEPENDENCY CONTROL
+
PROVENANCE
+
CONTEXT CONTROL
+
AUTHORITY CONTROL
+
RAG RETRIEVAL
+
RAG SECURITY
+
RAG REGRESSION
+
POST-GENERATION QA

work together.

The system must guarantee:

NO SILENT MUTATION
NO HIDDEN AUTHORITY
NO STALE CRITICAL CONTEXT
NO UNCONTROLLED AI MEMORY
NO SOURCE/ADAPTATION COLLAPSE
NO CHARACTER KNOWLEDGE LEAK
NO TEMPORAL LEAK
NO TERMINOLOGY DRIFT
NO PRONUNCIATION DRIFT
NO UNTRACEABLE GENERATION
NO UNREPRODUCIBLE CRITICAL DECISION
NO UNCONTROLLED DOWNSTREAM OVERRIDE.

The purpose of integration is not merely to connect folders.

It is to create a controlled information pipeline in which every important language decision remains:

IDENTIFIABLE
AUTHORITATIVE
VERSIONED
CONTEXTUAL
TRACEABLE
VALIDATABLE
REPRODUCIBLE
AND
SAFE TO PROPAGATE.
