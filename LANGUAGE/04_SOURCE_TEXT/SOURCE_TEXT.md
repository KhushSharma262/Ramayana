# SOURCE TEXT — EPISODE 01

## SYSTEM IDENTITY

system_name:
  SOURCE_TEXT

system_scope:
  Episode 01 source-text authority and traceability system

system_level:
  episode_source_level

system_role:
  Master control layer for identifying, acquiring, preserving, classifying,
  comparing, validating, translating, citing, and approving textual sources
  used by Episode 01.

primary_project_source:
  Ramcharitmanas

project_source_priority:
  Ramcharitmanas-first

source_text_status:
  MASTER_SOURCE_CONTROL_LAYER

---

# 01. PURPOSE

SOURCE_TEXT.md controls the textual evidence underlying Episode 01.

It answers:

- What source is being used?
- Which text tradition does it belong to?
- Which edition or recension is being used?
- What is the exact source text?
- Where does it occur?
- Who is speaking?
- Who is being addressed?
- Is it narration or dialogue?
- What language is the source written in?
- What poetic form is being used?
- Is the passage direct, translated, adapted, derived, traditional, or uncertain?
- Are there textual variants?
- Is the wording verified?
- What translation is being used?
- What interpretation is being used?
- What material may be safely adapted?
- What must remain exact?
- What remains unknown?

This system is the textual evidence layer.

It does not replace:

LANGUAGE_SYSTEM.md
EPISODE_LANGUAGE.md
HINDI.md
AWADHI.md
SANSKRIT.md
PRONUNCIATION.md
CHARACTER_LANGUAGE.md
HONORIFICS_AND_ADDRESS.md
RELATIONSHIP_LANGUAGE.md

Those systems determine how approved source material is transformed into
production language.

SOURCE_TEXT determines what the source actually says.

---

# 02. CORE PRINCIPLE

SOURCE FIRST.

INTERPRETATION SECOND.

ADAPTATION THIRD.

PRODUCTION FOURTH.

Never reverse this order.

The production requirement must not determine what the source supposedly says.

---

# 03. ABSOLUTE NON-INVENTION RULE

Never fabricate:

- source quotations
- verses
- chaupais
- dohas
- sorathas
- shlokas
- mantras
- source references
- chapter references
- kand references
- sarga references
- speaker attribution
- listener attribution
- textual variants
- translations
- meanings
- etymologies
- manuscript claims
- edition claims
- commentary claims

If the exact source cannot be verified:

SOURCE_STATUS:
  UNVERIFIED

or:

SOURCE_STATUS:
  UNKNOWN

Do not fill the gap with memory.

---

# 04. SOURCE HIERARCHY

For this project:

LEVEL 01:
Ramcharitmanas

LEVEL 02:
Other approved primary textual sources

LEVEL 03:
Authoritative traditional commentaries and textual scholarship

LEVEL 04:
Reliable translations

LEVEL 05:
Historical or linguistic scholarship

LEVEL 06:
Traditional interpretations

LEVEL 07:
Adaptation sources

LEVEL 08:
Production-created material

LEVEL 09:
AI-generated material

AI-generated material is never source evidence by itself.

---

# 05. RAMCHARITMANAS-FIRST RULE

Ramcharitmanas is the primary textual foundation of the project.

When Episode 01 material is directly represented in Ramcharitmanas:

Ramcharitmanas takes priority for the project's primary adaptation unless an
explicit project decision states otherwise.

This is a project decision.

It is not a claim that all scholarly traditions universally rank sources this way.

---

# 06. SOURCE CLASSIFICATION

Every source unit must receive one classification.

DIRECT_CANON
DERIVED_CANON
TRADITIONAL_INTERPRETATION
HISTORICAL_RECONSTRUCTION
LINGUISTIC_RECONSTRUCTION
TRANSLATION
ADAPTATION
DIRECTORIAL_CHOICE
PRODUCTION_CHOICE
UNKNOWN
UNCERTAIN

Never use:

"canonical"

without specifying what kind of canonical relationship is meant.

---

# 07. SOURCE RECORD

Every source must have a master record.

Required:

source_id:
source_title:
author_or_attribution:
tradition:
source_type:
language:
script:
date_or_period:
textual_status:
edition:
publisher_or_repository:
editor:
volume:
section:
chapter:
page:
url_or_location:
access_date:
source_classification:
authority_level:
confidence:
verification_status:
notes:

Unknown fields must remain:

UNKNOWN

not invented.

---

# 08. SOURCE UNIT

A source unit is the smallest production-relevant textual evidence record.

Possible unit:

verse
half_verse
chaupai_line
chaupai
doha
soratha
shloka
paragraph
dialogue_exchange
narrative_sentence
ritual_text
mantra
prayer
description
episode_section

Every source unit must receive:

source_unit_id:
source_id:
location:
original_text:
language:
script:
speaker:
listener:
narrative_function:
textual_form:
verification_status:

---

# 09. SOURCE LOCATION

A source location must be as precise as the source allows.

Possible hierarchy:

text
→
kanda
→
section
→
chapter
→
sarga
→
verse
→
line
→
edition_page

Do not invent precision that the source does not provide.

If a source only supports a general location:

use the general location.

---

# 10. EXACT SOURCE PRESERVATION

When exact source wording is required:

preserve the source text exactly according to the approved edition.

Do not silently:

- modernize spelling
- change punctuation
- normalize words
- change line breaks
- remove words
- add words
- reorder words
- merge passages
- split passages
- replace names
- replace epithets

Any normalization must be stored separately.

---

# 11. SOURCE TEXT VS NORMALIZED TEXT

Maintain separate fields:

SOURCE_TEXT_EXACT

SOURCE_TEXT_NORMALIZED

SOURCE_TEXT_TRANSCRIBED

SOURCE_TEXT_TRANSLITERATED

SOURCE_TEXT_TRANSLATED

Never overwrite the exact source with normalized text.

---

# 12. EDITION CONTROL

Every exact quotation must identify its edition.

Required:

edition_id:
edition_title:
editor:
publisher:
publication_year:
volume:
printing:
page:
textual_basis:

If multiple editions are used:

do not silently merge them.

---

# 13. EDITION LOCK

Once an edition is approved for a source unit:

edition_status:
  LOCKED

The text must not be silently replaced with another edition's wording.

Changing editions requires:

change_id:
old_edition:
new_edition:
reason:
affected_units:
textual_difference:
approval:

---

# 14. EDITION VARIANT MANAGEMENT

If two approved editions differ:

record:

variant_id:
source_unit_id:
edition_a:
text_a:
edition_b:
text_b:
difference_type:
meaning_difference:
project_preference:
reason:
confidence:

Do not silently select one.

---

# 15. TEXTUAL VARIANT TYPES

Possible differences:

orthographic
punctuation
word_choice
word_order
line_order
verse_presence
verse_absence
name_variant
epithet_variant
grammatical_variant
metrical_variant
substantive_variant
editorial_variant
printing_error
unknown

---

# 16. VARIANT DECISION

If a variant affects meaning:

record:

meaning_impact:
interpretive_impact:
adaptation_impact:
pronunciation_impact:
subtitle_impact:

A textual variant that changes meaning is a production-critical issue.

---

# 17. SOURCE CONFLICT

When sources disagree:

record:

conflict_id:
source_a:
source_b:
exact_difference:
type_of_conflict:
authority_of_a:
authority_of_b:
project_hierarchy:
preferred_source:
reason:
remaining_uncertainty:
final_decision:
approval:

Never merge contradictory source claims into one artificial text.

---

# 18. CROSS-SOURCE FIREWALL

Different traditions must remain distinguishable.

Do not combine:

Ramcharitmanas
Valmiki Ramayana
Puranic material
regional traditions
later retellings
commentarial interpretations

into a single undifferentiated "Ramayana source."

Every claim must retain provenance.

---

# 19. SOURCE TRADITION

Every source unit must identify its tradition where relevant.

Examples:

Ramcharitmanas
Valmiki Ramayana
Puranic
regional
commentarial
later devotional
historical
linguistic
traditional

Do not use "Ramayana tradition" as sufficient provenance when a specific source
can be identified.

---

# 20. SOURCE LANGUAGE

Record the actual source language.

Examples:

Awadhi
Sanskrit
Hindi
other

Do not label Ramcharitmanas simply as "Hindi" because it is accessible to
Hindi speakers.

Source language and production language are separate fields.

---

# 21. SCRIPT

Record:

source_script:
transcription_script:
translation_script:

Do not confuse script with language.

Devanagari does not automatically mean Hindi.

---

# 22. POETIC FORM

Where applicable record:

poetic_form:
meter:
line_structure:
syllable_information:
rhythmic_notes:
performance_notes:

Possible forms:

chaupai
doha
soratha
shloka
stotra
mantra
other

Do not identify a poetic form by appearance alone if source verification is
available.

---

# 23. METRE PRESERVATION

When the source uses metre:

preserve the textual structure.

Record separately:

source_metre
performance_metre
adaptation_metre

Performance adaptation must not be mistaken for source alteration.

---

# 24. SPEAKER ATTRIBUTION

Every source dialogue unit should record:

speaker:
speaker_certainty:
listener:
listener_certainty:
speaker_basis:
listener_basis:

If attribution is uncertain:

speaker:
  UNCERTAIN

Do not infer attribution solely from modern screenplay convention.

---

# 25. NARRATION ATTRIBUTION

For source narration record:

narrator:
narrative_layer:
narrator_certainty:
source_basis:

Do not automatically attribute source narration to a character simply because
the production adaptation uses that character as narrator.

---

# 26. DIRECT QUOTATION STATUS

A passage may be called a direct quotation only when:

exact source text is verified
+
source location is verified
+
source attribution is verified

Otherwise use an appropriate lower-confidence classification.

---

# 27. QUOTATION PRESERVATION

Direct quotations must preserve:

wording
order
speaker
source location
textual form

Translation must remain separate from the quotation.

---

# 28. TRANSLATION RECORD

Every translation must record:

translation_id:
source_unit_id:
source_language:
target_language:
translator:
translation_type:
translation_text:
translation_method:
literalness:
interpretive_level:
verification_status:

---

# 29. TRANSLATION TYPES

Use:

LITERAL
CONTEXTUAL
PERFORMANCE
SCREENPLAY
POETIC
EXPLANATORY

Do not present a screenplay adaptation as a literal translation.

---

# 30. TRANSLATION INTEGRITY

Translation must preserve, as applicable:

semantic meaning
speaker intention
relationship meaning
cultural concepts
theological meaning
emotional meaning
grammatical function
poetic function

If exact preservation is impossible:

record the limitation.

---

# 31. TRANSLATION CONFLICT

If two translations differ materially:

record:

translation_a:
translation_b:
difference:
reason_for_difference:
source_text_check:
preferred_translation:
reason:
remaining_uncertainty:

Never choose a translation solely because it sounds more cinematic.

---

# 32. SOURCE MEANING VS INTERPRETATION

Separate:

WHAT THE TEXT SAYS

from:

WHAT THE TEXT MAY MEAN

from:

HOW TRADITION INTERPRETS IT

from:

HOW THE PROJECT ADAPTS IT

These must never be collapsed.

---

# 33. COMMENTARY CONTROL

Commentaries may provide:

interpretation
context
grammar
theology
traditional explanation

They must not be mistaken for the source text itself.

Record separately:

commentary_source:
commentary_claim:
source_text_basis:
interpretive_status:

---

# 34. TRADITIONAL MATERIAL

Traditional material may be included when approved.

Record:

tradition_source:
tradition_claim:
textual_source:
canonical_status:
project_use:
confidence:

Traditional popularity does not automatically make a detail direct canon.

---

# 35. UNSOURCED POPULAR CLAIMS

Statements such as:

"everyone knows..."
"according to the Ramayana..."
"it is written that..."

must not be accepted without source verification.

If no source is identified:

source_status:
  UNSOURCED

---

# 36. SOURCE ABSENCE RULE

If Episode 01 requires a detail and no reliable source establishes it:

do not manufacture it.

Possible production decisions:

UNKNOWN
OMIT
ADAPT_EXPLICITLY
RESEARCH_FURTHER

The decision must be recorded.

---

# 37. NEGATIVE EVIDENCE

Absence of a passage from one source does not automatically prove:

the event never happened
the character never existed
the relationship never existed
the dialogue never occurred

Record:

absence_from_source

rather than:

nonexistent

unless the source structure supports that conclusion.

---

# 38. SOURCE SCOPE

Every source has a scope.

Record:

source_scope:
episode_scope:
character_scope:
event_scope:
language_scope:

Do not use a source outside its scope without justification.

---

# 39. SOURCE TEMPORALITY

Record when relevant:

source_date:
historical_period:
textual_layer:
later_interpolation_status:
editorial_layer:

Do not treat every textual layer as historically simultaneous.

---

# 40. MANUSCRIPT / TEXTUAL HISTORY

Where textual scholarship is relevant, distinguish:

original_composition
manuscript_witness
recension
edition
editorial_reconstruction
modern_print

Do not claim access to an original manuscript unless actually available.

---

# 41. SOURCE REPRODUCTION CONTROL

Never reproduce large amounts of copyrighted modern editions merely because
they are convenient.

Store only the amount necessary for the project's legitimate source-tracing
workflow.

Maintain source metadata even when full text cannot be reproduced.

---

# 42. SOURCE ACCESS RECORD

For every accessed source record:

access_method:
access_location:
access_date:
retrieval_status:
retrieval_limitations:

If the source was inaccessible:

do not reconstruct missing text from memory.

---

# 43. SOURCE VERIFICATION

Each source unit receives:

UNVERIFIED
PARTIALLY_VERIFIED
VERIFIED
DOUBLE_VERIFIED
LOCKED

Verification means the actual text and location were checked against the
identified source.

---

# 44. DOUBLE VERIFICATION

High-risk passages should receive independent verification.

High-risk includes:

- major theological statements
- famous quotations
- major character declarations
- ritual text
- mantra
- prophecy
- important relationship statements
- episode-opening material
- episode-closing material
- disputed passages
- passages with major variants

---

# 45. SOURCE RISK LEVEL

Each source unit may receive:

LOW
MEDIUM
HIGH
CRITICAL

CRITICAL examples:

invented quotation risk
source conflict
uncertain speaker
major textual variant
sacred text
major theological statement
major adaptation dependency

---

# 46. SOURCE CONFIDENCE

Use:

VERY_HIGH
HIGH
MEDIUM
LOW
VERY_LOW
UNKNOWN

Confidence must describe evidence quality.

It must not describe how strongly the production team likes the material.

---

# 47. CANONICALITY VS CONFIDENCE

These are separate.

A passage can be:

canonical + uncertain textual wording

or:

non-canonical + highly certain traditional provenance

Never use confidence as a substitute for canonical status.

---

# 48. SOURCE UNIT STATUS

Every production-relevant source unit should have:

RESEARCH_REQUIRED
FOUND
EXTRACTED
VERIFIED
TRANSLATED
ADAPTATION_READY
APPROVED
LOCKED

---

# 49. SOURCE EXTRACTION

When extracting a passage:

record:

source_location:
extraction_method:
exact_text:
extraction_confidence:

Do not manually retype critical source passages without verification.

---

# 50. OCR CONTROL

If OCR is used:

ocr_status:
ocr_source:
ocr_confidence:

OCR output is not automatically authoritative.

Critical passages must be checked against the actual source.

Common OCR risks:

Devanagari character confusion
anusvara/chandrabindu confusion
visarga loss
conjunct corruption
line-order corruption
punctuation corruption
similar-character substitution

---

# 51. IMAGE / SCAN VERIFICATION

If a source is a scanned text:

the scan remains the visual authority for exact wording where OCR is uncertain.

Record:

scan_reference:
page:
image_verification:
verified_by:

---

# 52. TRANSCRIPTION CONTROL

If text is transcribed:

record:

transcription_method:
transcriber:
script:
normalization:
uncertainties:

Do not silently normalize source wording during transcription.

---

# 53. TRANSLITERATION CONTROL

If transliteration is created:

record:

transliteration_system:
source_script:
target_script:
diacritics:
normalization:

Examples may include:

IAST
ISO
IAST-like project notation

Do not mix systems without declaring the change.

---

# 54. DEVANAGARI PRESERVATION

For source texts in Devanagari:

preserve:

matras
anusvara
chandrabindu
visarga
halant
conjuncts
vowel length
retroflex/dental distinctions

when supported by the source.

---

# 55. SPELLING VARIANT CONTROL

Different editions may use different orthographic conventions.

Do not automatically "correct" a source spelling.

Record:

source_spelling:
normalized_spelling:
reason_for_normalization:

---

# 56. NAME VARIANT CONTROL

Character names may have variants.

Record:

canonical_name:
source_variant:
transliteration_variant:
pronunciation_variant:
approved_production_form:

Do not treat every spelling difference as a different character.

---

# 57. EPITHET SOURCE CONTROL

Every important epithet must be traceable.

Required:

epithet:
source:
location:
language:
meaning:
speaker_or_narrator:
context:
approval:

---

# 58. TITLE SOURCE CONTROL

Titles must be distinguished from:

names
epithets
kinship terms
vocatives
honorifics

Record their source separately.

---

# 59. CHARACTER DESCRIPTION SOURCE CONTROL

If a character appearance or behavioral claim is derived from text:

record:

character:
description:
exact_source:
location:
description_type:
directness:
confidence:

Do not turn visual inference into textual fact.

---

# 60. RELATIONSHIP SOURCE CONTROL

If a relationship is represented in source material:

record:

character_a:
character_b:
relationship_claim:
source:
location:
directness:
confidence:

Do not treat production-created dialogue as proof of a canonical relationship.

---

# 61. EVENT SOURCE CONTROL

Every major Episode 01 event should have:

event_id:
event:
source:
location:
source_classification:
confidence:
adaptation_status:

---

# 62. EVENT VS INTERPRETATION

Separate:

EVENT_IN_SOURCE

from:

INTERPRETATION_OF_EVENT

from:

PRODUCTION_ADAPTATION_OF_EVENT

---

# 63. SCENE SOURCE MAPPING

Every source-dependent scene should contain:

scene_id:
source_units:
source_events:
source_characters:
source_relationships:
source_narration:
adaptation_material:
new_material:

This creates source-to-scene traceability.

---

# 64. SOURCE COVERAGE

Episode 01 should maintain a coverage matrix:

source_unit
→
scene
→
sequence
→
dialogue/narration
→
final screenplay

Each important source unit must be identifiable as:

used
adapted
translated
omitted
reserved
not applicable

---

# 65. SOURCE OMISSION

If a relevant source passage is omitted:

record:

source_unit_id:
omission_reason:
episode_impact:
canon_impact:
adaptation_status:

Do not silently omit major source material when omission materially changes
meaning.

---

# 66. SOURCE EXPANSION

If the episode expands beyond the source:

record:

expansion_id:
source_basis:
new_material:
reason:
adaptation_type:
canon_status:

Expansion must never be presented as direct quotation.

---

# 67. SOURCE COMPRESSION

If multiple source passages are compressed:

record:

source_units_combined:
compression_reason:
meaning_preserved:
meaning_changed:
adaptation_status:

Do not combine passages in a way that creates a false quotation.

---

# 68. SOURCE REORDERING

If source events or passages are reordered:

record:

original_order:
production_order:
reason:
continuity_effect:
adaptation_status:

Do not imply that the production order is the original textual order.

---

# 69. SOURCE COMPOSITE SCENES

If one production scene combines multiple source locations:

record all source units.

Do not assign the entire scene to a single source unless that is actually
supported.

---

# 70. SOURCE-DERIVED DIALOGUE

Dialogue derived from source material but not directly quoted must be labelled:

DERIVED_CANON

or:

ADAPTED_CANONICAL_DIALOGUE

depending on the project's classification.

---

# 71. NEW CONNECTIVE DIALOGUE

New dialogue used to connect source events must be labelled:

NEW_CONNECTIVE_DIALOGUE

It must not be presented as:

direct quotation
historical quotation
Tulsidas quotation
Valmiki quotation
scriptural quotation

unless independently verified.

---

# 72. DIRECTORIAL LANGUAGE

Production-created language may be used for:

transitions
clarifications
scene connections
pacing
audience accessibility

It must remain clearly classified as production material.

---

# 73. SOURCE-TO-SCRIPT TRACEABILITY

Every final script passage must be traceable to:

SOURCE_UNIT_ID

or:

ADAPTATION_RECORD_ID

or:

NEW_DIALOGUE_ID

No final language unit may exist without provenance.

---

# 74. PROVENANCE GRAPH

Conceptually:

SOURCE
→
SOURCE_UNIT
→
TRANSLATION
→
INTERPRETATION
→
ADAPTATION
→
SCENE
→
DIALOGUE/NARRATION
→
PERFORMANCE
→
SUBTITLE

Every transformation must remain traceable.

---

# 75. PROVENANCE BREAK

If any transformation cannot be traced:

PROVENANCE_STATUS:
  BROKEN

The unit must not receive final approval until repaired or explicitly accepted
as an unknown production decision.

---

# 76. CANONICAL QUOTATION FIREWALL

The phrase:

"according to the Ramcharitmanas"

must only be used when the actual source supports the claim.

Likewise:

"as Tulsidas says"

must only be used when the relevant passage is verified.

---

# 77. POPULAR QUOTE FIREWALL

Internet-famous or commonly circulated lines must not be treated as canonical
without source verification.

Popularity is not evidence.

---

# 78. TRANSLATION QUOTE FIREWALL

A translation must never be placed in quotation marks as though it were the
original source text.

Label:

translated_from:
source_unit_id:

---

# 79. AI QUOTE FIREWALL

AI-generated "quotes" are prohibited from entering the source registry as
canonical material unless independently verified against the actual source.

---

# 80. SOURCE SEARCH RECORD

For difficult research questions maintain:

research_query_id:
question:
sources_searched:
search_date:
results:
useful_sources:
rejected_sources:
reason_rejected:
decision:

---

# 81. SOURCE REJECTION

A source may be rejected for:

fabrication
poor provenance
unsourced quotation
unreliable transcription
incorrect attribution
translation error
anachronism
secondary-source confusion
unsupported claim
incompatible textual tradition

Record the reason.

---

# 82. SOURCE RELIABILITY

Evaluate:

textual reliability
attribution reliability
edition reliability
translation reliability
editorial reliability
citation reliability

Do not reduce all source quality to one number.

---

# 83. SOURCE AUTHORITY VS SOURCE RELIABILITY

A source may be:

high authority but poorly reproduced

or:

low authority but accurately reproduced.

Track both independently.

---

# 84. RESEARCH STOP RULE

Do not endlessly search for alternate sources once:

the relevant source is verified
+
the source conflict is resolved
+
the production decision is approved

Additional research is required only when it can materially change the decision.

---

# 85. SOURCE COMPLETENESS

A source record is complete only when all applicable fields are resolved.

Unknown fields may remain explicitly:

UNKNOWN

They must not be silently guessed.

---

# 86. SOURCE DEPENDENCY

If a language decision depends on a source decision:

record:

dependent_language_unit:
source_dependency:
dependency_status:

If the source changes, dependent production units must be rechecked.

---

# 87. SOURCE CHANGE PROPAGATION

When source text changes:

identify affected:

translations
adaptations
dialogue
narration
pronunciation
subtitles
scenes
continuity
AI prompts
QA decisions

Do not update only the visible quotation.

---

# 88. SOURCE LOCK

A source unit may become:

SOURCE_LOCKED

only after:

exact text verified
source location verified
edition verified
classification verified
speaker verified where applicable
translation separated
variants recorded where relevant
adaptation status recorded

---

# 89. LOCKED SOURCE MODIFICATION

Locked source text must never be edited directly.

Create:

source_change_request

with:

change_id:
old_text:
new_text:
reason:
evidence:
edition:
variant:
impact:
approval:

---

# 90. SOURCE VERSIONING

Maintain:

source_version:
edition_version:
transcription_version:
translation_version:
adaptation_version:

Never overwrite historical source decisions without preserving the previous
version.

---

# 91. SOURCE QA

Every source-dependent unit must pass:

[ ] Source identified
[ ] Source classification identified
[ ] Exact location identified
[ ] Edition identified
[ ] Language identified
[ ] Script identified
[ ] Text verified
[ ] Speaker verified where applicable
[ ] Listener verified where applicable
[ ] Poetic form verified where applicable
[ ] Translation separated
[ ] Interpretation separated
[ ] Adaptation separated
[ ] Variants recorded
[ ] Conflicts recorded
[ ] Confidence assigned
[ ] Provenance preserved
[ ] No fabricated quotation
[ ] No fabricated attribution
[ ] No unsupported claim
[ ] No silent normalization
[ ] No silent source merging

---

# 92. HIGH-RISK SOURCE QA

Mandatory double-check for:

[ ] Episode opening source material
[ ] Episode closing source material
[ ] Shiva/Sati/Parvati material
[ ] Tulsidas narration material
[ ] Shiva narration material
[ ] Rama-katha transition
[ ] Major divine statements
[ ] Ritual passages
[ ] Mantras
[ ] Chaupais
[ ] Dohas
[ ] Sorathas
[ ] Famous quotations
[ ] Theological statements
[ ] Major relationship statements
[ ] Disputed passages
[ ] Material translated from another language

---

# 93. SOURCE ERROR SEVERITY

CRITICAL:

- fabricated canonical text
- false attribution
- wrong source
- materially altered theological meaning
- invented sacred text
- wrong speaker in major passage
- false quotation
- source conflict hidden

HIGH:

- wrong location
- wrong edition
- wrong translation meaning
- wrong textual form
- unrecorded major variant
- incorrect relationship claim from source

MEDIUM:

- minor metadata error
- transcription inconsistency
- translation awkwardness
- incomplete contextual note

LOW:

- minor formatting
- minor non-semantic metadata issue

---

# 94. AUTOMATIC SOURCE REJECTION

Reject source material if:

quotation cannot be verified

OR

attribution cannot be supported

OR

source location is fabricated

OR

text is AI-generated and unverified

OR

translation materially changes meaning without disclosure

OR

multiple sources have been silently merged

OR

source classification is false

OR

adaptation is presented as canon

OR

a textual variant materially affecting meaning is hidden.

---

# 95. SOURCE–LANGUAGE HANDOFF

SOURCE_TEXT provides to LANGUAGE:

verified_original
source_language
textual_form
source_context
speaker
listener
meaning
translation_layers
pronunciation_requirements
adaptation_limits

LANGUAGE determines:

production_language
register
character_voice
relationship_behavior
address
performance_text

The two systems must remain separate.

---

# 96. SOURCE–CHARACTER HANDOFF

SOURCE_TEXT provides:

source_character
canonical_actions
canonical_words
described_behavior
relationship_evidence
speech_evidence

CHARACTER_LANGUAGE determines how that evidence is represented in dialogue.

---

# 97. SOURCE–RELATIONSHIP HANDOFF

SOURCE_TEXT provides only what the source supports.

RELATIONSHIP_LANGUAGE determines production behavior based on:

verified relationship evidence
approved project inference
scene state

Never use relationship assumptions to manufacture source evidence.

---

# 98. SOURCE–NARRATION HANDOFF

SOURCE_TEXT identifies:

source narrator
source narrative voice
source passage
source event

EPISODE_LANGUAGE determines:

production narrator
adaptation layer
handoff
performance form

---

# 99. SOURCE–PRONUNCIATION HANDOFF

SOURCE_TEXT provides:

original spelling
language
source form
textual variant

PRONUNCIATION determines:

actual pronunciation
phonetic representation
TTS pronunciation
performance guidance

---

# 100. SOURCE–SUBTITLE HANDOFF

SOURCE_TEXT provides:

verified meaning
proper names
technical terms
cultural terms

SUBTITLES determine:

compression
timing
readability

Subtitles must not alter source meaning.

---

# 101. SOURCE–AI HANDOFF

AI may receive:

verified source text
approved translation
source context
approved adaptation constraints

AI must not receive permission to invent source material.

---

# 102. SOURCE-BASED PROMPT FIREWALL

Prompts must distinguish:

SOURCE_FACT
SOURCE_INTERPRETATION
ADAPTATION
NEW_PRODUCTION_TEXT

Never place all four into a prompt as though they have equal authority.

---

# 103. SOURCE KNOWLEDGE BOUNDARY

A source passage may establish what a character knows only if:

the source explicitly establishes it
or
approved interpretation establishes it.

Do not infer omniscience from divine status unless the source supports the
specific knowledge claim.

---

# 104. SOURCE CHARACTERIZATION BOUNDARY

One action or one line must not automatically become a complete personality rule.

Character conclusions require:

direct evidence
repeated evidence
strong contextual evidence
or explicitly labelled inference.

---

# 105. SOURCE RELATIONSHIP BOUNDARY

One interaction does not automatically establish:

deep friendship
romantic intimacy
hostility
lifelong trust
familiarity
hatred

unless the source supports that conclusion.

---

# 106. SOURCE EVENT BOUNDARY

A production scene may dramatize an event.

That does not mean every production detail existed in the source.

Maintain:

source_event
production_event

separately.

---

# 107. PRODUCTION DETAIL FIREWALL

The following are not automatically source facts:

camera direction
blocking
costume details
facial expression
exact physical appearance
weather
background crowd
specific gestures
specific pauses
new dialogue
new reactions
new motivations

unless supported by source evidence.

---

# 108. VISUAL INFERENCE FIREWALL

If a visual decision is derived from text:

classify:

DIRECT_TEXT
STRONG_INFERENCE
WEAK_INFERENCE
TRADITION
ADAPTATION

Do not call inferred visual details canonical.

---

# 109. TEMPORAL INFERENCE FIREWALL

Do not infer exact:

ages
dates
durations
times
distances
historical chronology

unless the source or approved research supports them.

---

# 110. LINGUISTIC INFERENCE FIREWALL

Do not infer historical pronunciation merely from modern spelling.

Do not infer dialect merely from geography.

Do not infer ancient spoken Hindi merely because the production language is Hindi.

Source language and reconstructed pronunciation require separate evidence.

---

# 111. SOURCE INTERPRETATION LOG

Every significant interpretive decision should record:

interpretation_id:
source_unit_id:
question:
possible_interpretations:
supporting_evidence:
contrary_evidence:
preferred_interpretation:
reason:
confidence:
approval:

---

# 112. SOURCE ADAPTATION LOG

Every major adaptation should record:

adaptation_id:
source_units:
original_meaning:
production_change:
reason:
impact:
canon_status:
approval:

---

# 113. SOURCE OMISSION LOG

Every major omission should record:

omission_id:
source_unit:
omitted_from:
reason:
meaning_impact:
continuity_impact:
approval:

---

# 114. SOURCE EXPANSION LOG

Every major expansion should record:

expansion_id:
source_basis:
new_material:
reason:
canon_status:
risk:
approval:

---

# 115. SOURCE COMPRESSION LOG

Every major compression should record:

compression_id:
source_units:
compressed_material:
meaning_preserved:
meaning_lost:
reason:
approval:

---

# 116. SOURCE REORDERING LOG

Every major reordering should record:

reordering_id:
source_sequence:
production_sequence:
reason:
meaning_impact:
approval:

---

# 117. SOURCE ADAPTATION STATUS

Use:

NOT_ADAPTED
TRANSLATED
LIGHTLY_ADAPTED
SUBSTANTIALLY_ADAPTED
NEW_CONNECTIVE
DIRECTORIAL
UNKNOWN

Never hide adaptation level.

---

# 118. SOURCE APPROVAL STATES

Use:

RESEARCH_REQUIRED
SOURCE_FOUND
TEXT_EXTRACTED
SOURCE_VERIFIED
SOURCE_CHECKED
TRANSLATION_CHECKED
VARIANTS_CHECKED
ADAPTATION_CHECKED
CANON_APPROVED
SOURCE_LOCKED

---

# 119. SOURCE REGISTRY

Episode 01 source registry must track:

source records
source units
source variants
source conflicts
translations
interpretations
adaptations
omissions
expansions
compressions
reorderings
research questions
approval states
locks

---

# 120. SOURCE COMPLETENESS AUDIT

Before Episode 01 source-text system is considered complete:

[ ] All major episode events have source mapping
[ ] All source-dependent scenes have source mapping
[ ] All canonical quotations have exact source references
[ ] All source languages identified
[ ] All source traditions identified
[ ] All editions identified
[ ] All major variants recorded
[ ] All source conflicts recorded
[ ] All translations separated from originals
[ ] All interpretations separated from source facts
[ ] All adaptations labelled
[ ] All new dialogue labelled
[ ] All omissions documented
[ ] All expansions documented
[ ] All compressions documented
[ ] All reorderings documented
[ ] All major source uncertainties documented
[ ] All high-risk passages double-checked
[ ] All source dependencies traceable
[ ] All locked source units verified
[ ] No fabricated citations
[ ] No fabricated quotations
[ ] No unsupported canon claims

---

# 121. FINAL SOURCE INTEGRITY GATE

A source unit is production-safe only when:

TEXT
+
LOCATION
+
SOURCE
+
EDITION
+
CLASSIFICATION
+
ATTRIBUTION
+
LANGUAGE
+
VARIANTS
+
TRANSLATION
+
INTERPRETATION
+
ADAPTATION
+
PROVENANCE

are sufficiently resolved for the unit's intended use.

If any critical element remains unresolved:

DO NOT PRESENT IT AS VERIFIED CANON.

---

# 122. FINAL MASTER RULE

SOURCE_TEXT.md must always answer:

"Where exactly did this information come from?"

If the answer is:

"the source says it"

the exact source must be identifiable.

If the answer is:

"traditional interpretation"

label it.

If the answer is:

"reasonable inference"

label it.

If the answer is:

"production adaptation"

label it.

If the answer is:

"AI generated"

it is not evidence until independently verified.

If the answer is:

"we do not know"

keep it unknown.

---

# 123. COMPLETION DEFINITION

Episode 01 SOURCE_TEXT is complete only when:

every important source-dependent production decision has provenance

every canonical quotation is verified

every source conflict is visible

every textual variant affecting production is recorded

every translation is separated from the original

every interpretation is separated from source fact

every adaptation is explicitly classified

every omission is intentional and documented

every expansion is intentional and documented

every source-dependent scene is mapped

every source-dependent character claim is mapped

every relationship claim has evidence or an explicit inference label

every source uncertainty is visible

and no final production material depends on an invisible source assumption.

---

# 124. ABSOLUTE PRIORITY

When source-related systems conflict:

EXACT VERIFIED SOURCE TEXT
>
VERIFIED SOURCE LOCATION
>
APPROVED SOURCE EDITION
>
PROJECT SOURCE HIERARCHY
>
VERIFIED CONTEXT
>
APPROVED INTERPRETATION
>
APPROVED TRANSLATION
>
ADAPTATION DECISION
>
PRODUCTION CONVENIENCE
>
AI OUTPUT

If the conflict cannot be resolved:

STOP.

RECORD THE CONFLICT.

DO NOT GUESS.

---

# 125. FINAL STATUS

SOURCE_TEXT_STATUS:

STRUCTURALLY_COMPLETE

SOURCE_VERIFICATION_STATUS:

MUST_BE_COMPLETED_PER_SOURCE_UNIT

PRIMARY_PROJECT_SOURCE:

RAMCHARITMANAS

SOURCE_POLICY:

RAMCHARITMANAS-FIRST

AI_SOURCE_AUTHORITY:

NONE

ADAPTATION_STATUS:

MUST_BE_EXPLICITLY_LABELLED

FINAL_PRODUCTION_REQUIREMENT:

NO_UNTRACED_SOURCE_DEPENDENCY

END OF SOURCE_TEXT.md
