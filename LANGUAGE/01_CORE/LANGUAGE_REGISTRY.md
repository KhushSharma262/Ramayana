# LANGUAGE REGISTRY
# RAMAYAN — CORE REGISTRY

registry_id: LANGUAGE_REGISTRY
registry_version: 2.0
status: ACTIVE
project: RAMAYAN

---

## 1. PURPOSE

The LANGUAGE REGISTRY is the authoritative index for the project's language system.

It records:

- what languages are used
- why each language is used
- which sources have authority
- how source material is classified
- how linguistic evidence is recorded
- how adaptation differs from canon
- how character language profiles are inherited
- how language decisions are approved
- how uncertainty and conflicts are handled

This registry does NOT replace the detailed rules in:

LANGUAGE_SYSTEM.md
02_LANGUAGE_RULES/
03_EPISODES/

---

## 2. SYSTEM IDENTITY

system:
  id: LANGUAGE
  name: Language System

scope:
  - screenplay language
  - dialogue
  - narration
  - source-language preservation
  - translation
  - adaptation
  - pronunciation
  - terminology
  - character language
  - relationship language
  - linguistic continuity
  - language QA
  - source traceability

primary_output:
  production_ready_language_data

---

## 3. PROJECT LANGUAGE ARCHITECTURE

The project deliberately separates:

SOURCE LANGUAGE
from
PRODUCTION SPEECH LANGUAGE.

This distinction is mandatory.

---

### 3.1 PRODUCTION SPEECH LANGUAGE

language_id: HIN
language_name: Hindi
role: Primary spoken language of the final screenplay
status: ACTIVE
production_priority: PRIMARY

purpose:

  - ordinary spoken dialogue
  - adapted dialogue
  - connective dialogue
  - scene-to-scene conversational language
  - accessible narration where appropriate
  - performance-oriented screenplay language

standard:

  refined
  natural
  dignified
  grammatically_correct
  culturally_appropriate
  human_performable
  accessible

Hindi must NOT be treated as permission to modernize the cultural or linguistic identity of the characters.

---

### 3.2 PRIMARY SOURCE LANGUAGE

language_id: AWA
language_name: Awadhi
source: Ramcharitmanas
author: Goswami Tulsidas
role: Primary source language of the project's principal textual foundation
status: VERIFIED
source_priority: PRIMARY

important:

The Ramcharitmanas is treated here as an Awadhi literary work.

Its original language must not automatically be normalized into modern Standard Hindi.

Awadhi source passages remain identifiable as source-language material even when their meaning is translated into Hindi for performance.

---

### 3.3 SECONDARY SOURCE LANGUAGE

language_id: SAN
language_name: Sanskrit
role: Secondary source language
status: ACTIVE
source_priority: SECONDARY

permitted_uses:

  - approved Sanskrit canonical sources
  - shlokas
  - mantras
  - ritual language
  - direct quotations
  - Sanskrit terminology
  - source-supported theological language
  - source-supported divine or ritual contexts

Sanskrit must never be inserted merely to make dialogue sound ancient or mythological.

---

## 4. LANGUAGE PRIORITY

The project language priority is:

01:
  Hindi
  role: production speech

02:
  Awadhi
  role: Ramcharitmanas source language and selected source preservation

03:
  Sanskrit
  role: secondary canonical and ritual source language

04:
  other_languages
  status: NOT_AUTOMATICALLY_ALLOWED
  requirement: explicit source or project justification

---

## 5. PRIMARY TEXTUAL FOUNDATION

primary_text:

  title: Ramcharitmanas
  author: Goswami Tulsidas
  source_language: Awadhi
  project_role: PRIMARY_TEXTUAL_FOUNDATION
  authority: HIGHEST_PROJECT_TEXTUAL_AUTHORITY

source_identity_rule:

The original wording, linguistic identity and poetic structure of the Ramcharitmanas must be preserved when the project decides to use a direct source passage.

Do not silently convert direct Awadhi source material into modern Hindi and then present the result as the original text.

---

## 6. PROJECT SOURCE HIERARCHY

The project has adopted:

source_hierarchy_policy: RAMCHARITMANAS_FIRST

This is a PROJECT DECISION.

It is not a universal scholarly claim that Ramcharitmanas overrides every other Ramayana tradition.

---

### LEVEL 01 — PRIMARY PROJECT TEXT

source_class: direct_canon

priority: HIGHEST

primary_source:

  Ramcharitmanas

treatment:

  - preserve direct wording when selected
  - preserve source identity
  - cite exact location
  - do not fabricate wording
  - distinguish translation from original

---

### LEVEL 02 — OTHER APPROVED PRIMARY CANONICAL SOURCES

source_class: direct_canon

priority: HIGH

examples:

  - Valmiki Ramayana
  - approved Sanskrit canonical texts
  - other explicitly approved primary textual sources

treatment:

These may establish facts that are absent from, different in, or outside the scope of the Ramcharitmanas.

Conflicts must be recorded.

---

### LEVEL 03 — DERIVED CANON

source_class: derived_canon

examples:

  - material directly derived from primary texts
  - established textual consequences
  - source-supported narrative implications

treatment:

Do not present derived information as verbatim quotation.

---

### LEVEL 04 — TRADITIONAL INTERPRETATION

source_class: traditional_interpretation

examples:

  - established commentarial traditions
  - recognized theological interpretations
  - established traditional readings

treatment:

Useful for interpretation.

Must remain distinguishable from direct textual wording.

---

### LEVEL 05 — LINGUISTIC RESEARCH

source_class: linguistic_reconstruction

examples:

  - historical grammar
  - pronunciation research
  - historical phonology
  - Awadhi linguistic research
  - Sanskrit phonetics

treatment:

May establish linguistic facts.

Must not be used to invent unsupported character dialogue.

---

### LEVEL 06 — HISTORICAL RESEARCH

source_class: historical_reconstruction

purpose:

  - historical linguistic context
  - social terminology
  - historical usage
  - material culture affecting language

Historical reconstruction must not be mistaken for direct Ramayana canon.

---

### LEVEL 07 — TRANSLATION

source_class: translation

purpose:

  - understand source meaning
  - produce performance meaning
  - support screenplay adaptation

A translation is never automatically the original source.

---

### LEVEL 08 — ADAPTATION

source_class: adaptation

purpose:

  - screenplay structure
  - connective dialogue
  - condensation
  - expansion
  - performance restructuring

Adapted material must be identifiable as adaptation.

---

### LEVEL 09 — DIRECTORIAL CHOICE

source_class: directorial_choice

purpose:

  - project-specific creative decisions

Validity:

  APPROVED_ONLY

A directorial decision must never be falsely presented as scripture.

---

### LEVEL 10 — PRODUCTION CHOICE

source_class: production_choice

purpose:

  - technical implementation
  - subtitle formatting
  - timing
  - performance constraints
  - AI production requirements

Production choices have no canonical authority.

---

### LEVEL 11 — UNKNOWN

source_class: unknown

meaning:

  No adequate evidence has currently been established.

action:

  RESEARCH_REQUIRED

---

### LEVEL 12 — UNCERTAIN

source_class: uncertain

meaning:

  Evidence exists but does not permit a sufficiently confident conclusion.

action:

  preserve_uncertainty
  do_not_invent
  escalate_if_decision_is_required

---

## 7. SOURCE CONFLICT POLICY

When two credible sources disagree:

DO NOT silently choose one.

Record:

conflict_id:
claim:
source_a:
source_a_class:
source_b:
source_b_class:
exact_difference:
textual_evidence:
linguistic_evidence:
authority_assessment:
project_priority:
preferred_interpretation:
reason:
remaining_uncertainty:
final_project_decision:
approval_status:

Default:

Ramcharitmanas receives primary project priority for material specifically governed by the project's Ramcharitmanas-first policy.

Exception:

A different source may take priority when the question specifically concerns:

  - Sanskrit wording
  - Sanskrit pronunciation
  - material absent from Ramcharitmanas
  - historical linguistics
  - another explicitly selected canonical tradition
  - a project-approved adaptation choice

---

## 8. CANON CLASSIFICATION REGISTRY

direct_canon:
  definition: Directly supported by a primary canonical text.

derived_canon:
  definition: Derived from canonical material without necessarily being stated verbatim.

traditional_interpretation:
  definition: Established traditional or commentarial interpretation.

historical_reconstruction:
  definition: Historically reconstructed information.

linguistic_reconstruction:
  definition: Linguistically reconstructed information.

translation:
  definition: Meaning rendered from another language.

adaptation:
  definition: Deliberate transformation for screenplay or performance.

directorial_choice:
  definition: Explicit project creative decision.

production_choice:
  definition: Technical or production implementation.

unknown:
  definition: Evidence unavailable or inadequate.

uncertain:
  definition: Evidence available but insufficient for confident determination.

---

## 9. SOURCE TEXT PRESERVATION

Direct source material must retain:

  source_title:
  source_language:
  original_script:
  exact_text:
  textual_location:
  poetic_form:
  speaker:
  context:
  translation_status:
  adaptation_status:

preserve_source_identity: REQUIRED

Never:

  - fabricate quotations
  - fabricate missing lines
  - silently rewrite canonical passages
  - attribute new dialogue to Tulsidas
  - attribute adaptation dialogue to scripture
  - manufacture Sanskrit
  - manufacture Awadhi

---

## 10. POETIC FORM REGISTRY

When a source passage is used, its poetic form must be recorded where identifiable.

supported_forms:

  chaupai
  doha
  soratha
  chhand
  shloka
  other_source_specific_form

poetic_form_is_not:

  generic_poetry
  interchangeable_meter
  optional_metadata

The source's actual poetic structure should be preserved when the passage is intended to remain source-faithful.

---

## 11. TRANSLATION REGISTRY

Translation is divided into five operational levels.

01_original:
  purpose: Preserve source wording
  source_identity: REQUIRED

02_literal:
  purpose: Establish lexical and grammatical meaning

03_contextual:
  purpose: Establish meaning within narrative and cultural context

04_performance:
  purpose: Produce natural spoken meaning while preserving source meaning

05_screenplay:
  purpose: Final approved production wording

priority:

  meaning
  theological_accuracy
  narrative_accuracy
  character_context
  natural_performance

A screenplay translation must never be mistaken for the original source.

---

## 12. ADAPTATION REGISTRY

Every non-verbatim screenplay passage must be classified where necessary as:

direct_source:
  original source wording

translated_source:
  source meaning rendered into Hindi

adapted_source:
  source material reshaped for performance

new_connective_dialogue:
  newly written material connecting canonical events

directorial_dialogue:
  project-created dialogue required by the chosen presentation

production_created:
  material created for production implementation

All newly written material must remain distinguishable from direct canon.

---

## 13. NARRATION REGISTRY

### NARRATION 01

narrator: Tulsidas
role: External/project narrator
scope: Shiva-Sati-Parvati opening story
classification: directorial_choice
status: APPROVED

### NARRATION 02

narrator: Shiva
listener: Parvati
role: In-world narrator of the Rama-katha
classification: directorial_choice
status: APPROVED

### NARRATION HANDOFF

sequence:

  01 Tulsidas
  02 Shiva-Sati-Parvati story
  03 Shiva-Parvati interaction
  04 Tulsidas handoff
  05 Shiva
  06 Rama-katha

classification: directorial_choice
status: APPROVED

IMPORTANT:

This narration architecture is a PROJECT ADAPTATION DECISION.

It must not be presented as the literal narrative structure of the original Ramcharitmanas.

---

## 14. LANGUAGE LAYER REGISTRY

layer_01:

  language: Hindi
  code: HIN
  role: Primary production speech
  status: ACTIVE

layer_02:

  language: Awadhi
  code: AWA
  role: Ramcharitmanas source language
  status: ACTIVE

layer_03:

  language: Sanskrit
  code: SAN
  role: Secondary canonical and ritual source language
  status: ACTIVE

---

## 15. CHARACTER LANGUAGE REGISTRY

Character-specific language belongs under:

03_EPISODES/EPISODE_XX/CHARACTERS/

Each character record must eventually establish only what evidence supports.

required_fields:

  character_id:
  character_name:
  source_name_forms:
  alternate_names:
  titles:
  epithets:
  language_register:
  vocabulary_profile:
  sentence_profile:
  pronoun_behavior:
  honorific_behavior:
  address_patterns:
  Hindi_usage:
  Awadhi_usage:
  Sanskrit_usage:
  pronunciation_requirements:
  emotional_language:
  relationship_variations:
  canonical_evidence:
  linguistic_evidence:
  research_evidence:
  adaptation_decisions:
  uncertainty:
  confidence:
  approval_status:

IMPORTANT:

These fields are not permission to invent data.

If evidence does not exist:

value: UNKNOWN

---

## 16. RELATIONSHIP LANGUAGE REGISTRY

Relationship-specific language belongs under:

03_EPISODES/EPISODE_XX/RELATIONSHIPS/

required_fields:

  speaker:
  listener:
  relationship:
  social_position:
  authority:
  intimacy:
  formality:
  pronoun:
  address_form:
  honorific:
  title:
  emotional_variation:
  canonical_evidence:
  linguistic_evidence:
  project_decision:
  confidence:
  approval_status:

Relationship language must be based on evidence wherever possible.

---

## 17. PRONUNCIATION REGISTRY

Pronunciation-sensitive records must track:

  term:
  language:
  original_script:
  transliteration:
  phonetic_representation:
  syllable_breakdown:
  pronunciation:
  pronunciation_notes:
  source:
  source_reference:
  confidence:
  approval_status:

Important distinctions:

  vowel_length
  dental_vs_retroflex
  aspirated_vs_unaspirated
  voiced_vs_voiceless
  anusvara
  chandrabindu
  visarga
  conjunct_consonants

English spelling alone is never sufficient pronunciation authority.

---

## 18. PROVENANCE REGISTRY

Every researched linguistic fact should preserve:

  source:
  source_type:
  source_reference:
  exact_passage_if_applicable:
  research_date:
  research_method:
  evidence:
  interpretation:
  confidence:
  project_decision:
  approval_status:

The registry must allow another researcher or future model to determine:

WHERE DID THIS FACT COME FROM?

---

## 19. CONFIDENCE SCALE

very_high:
  direct primary textual evidence
  OR
  independently verified linguistic fact

high:
  strong scholarly or textual evidence

medium:
  credible evidence with interpretive elements

low:
  limited or indirect evidence

uncertain:
  conflicting or inadequate evidence

unknown:
  no adequate evidence currently established

IMPORTANT:

Confidence describes evidence quality.

It does NOT mean:

very_high = canon

A highly confident historical reconstruction is still historical reconstruction.

---

## 20. EPISODE INHERITANCE

Global rules remain in:

01_CORE/
02_LANGUAGE_RULES/

Episode-specific language remains in:

03_EPISODES/EPISODE_XX/

When a character appears in a later episode, their approved language profile may be copied.

Copying must preserve:

  copied_from_episode:
  copied_from_version:
  copy_date:
  baseline_status:
  episode_specific_changes:
  source_dependencies:
  global_rule_dependencies:

A copied profile inherits its evidence.

It does NOT create new canon.

---

## 21. CHANGE CONTROL

No approved language decision may be silently overwritten.

Every change records:

change_id:
date:
previous_value:
new_value:
reason:
source:
source_class:
evidence:
impact:
affected_episodes:
affected_characters:
affected_scripts:
approval_status:

---

## 22. CORE QA

Before linguistic approval:

[ ] Source identified
[ ] Source language identified
[ ] Source location recorded
[ ] Canon classification assigned
[ ] Translation status assigned
[ ] Adaptation status assigned
[ ] Hindi grammar verified
[ ] Awadhi verified where applicable
[ ] Sanskrit verified where applicable
[ ] Pronunciation verified where applicable
[ ] Character register verified
[ ] Pronoun verified
[ ] Honorific verified
[ ] Relationship language verified
[ ] Terminology verified
[ ] Modern slang removed
[ ] Unnecessary English removed
[ ] False canonical attribution removed
[ ] Cultural dignity verified
[ ] Continuity verified
[ ] Confidence assigned
[ ] Uncertainty recorded
[ ] Approval status assigned

---

## 23. CORE AUTHORITIES

authority_01:

  source: Ramcharitmanas
  author: Goswami Tulsidas
  language: Awadhi
  authority: PRIMARY_PROJECT_TEXT
  use: Primary textual foundation

authority_02:

  source: Approved primary Sanskrit canonical texts
  language: Sanskrit
  authority: SECONDARY_PRIMARY_CANON
  use:
    - source comparison
    - Sanskrit material
    - material absent from Ramcharitmanas
    - canonical cross-reference

authority_03:

  source: Scholarly linguistic research
  authority: LINGUISTIC_SUPPORT
  use:
    - grammar
    - phonology
    - pronunciation
    - historical language
    - Awadhi research

authority_04:

  source: Traditional commentaries
  authority: INTERPRETIVE_SUPPORT
  use:
    - interpretation
    - traditional understanding
    - contextual clarification

authority_05:

  source: Approved translations
  authority: TRANSLATION_SUPPORT
  use:
    - meaning verification
    - translation comparison

No secondary source automatically overrides a primary source.

---

## 24. EVIDENCE RULE

A language decision should move through:

RESEARCH
    ->
SOURCE IDENTIFICATION
    ->
EVIDENCE
    ->
CLASSIFICATION
    ->
INTERPRETATION
    ->
PROJECT DECISION
    ->
APPROVAL
    ->
PRODUCTION

AI generation alone is NOT evidence.

---

## 25. UNKNOWN DATA RULE

If the evidence is insufficient:

value: UNKNOWN
research_status: REQUIRED

Do not manufacture:

  - historical speech
  - dialect
  - pronunciation
  - honorifics
  - quotations
  - Sanskrit
  - Awadhi
  - etymology
  - character speech patterns
  - social-language rules

The system prefers:

UNKNOWN

over

UNSUPPORTED_CERTAINTY.

---

## 26. CORE PROJECT DECISIONS

decision_01:
  decision: Hindi is the primary spoken language of the final production.
  classification: directorial_choice
  status: APPROVED

decision_02:
  decision: Ramcharitmanas is the primary textual foundation.
  classification: directorial_choice
  status: APPROVED

decision_03:
  decision: Original Ramcharitmanas language is preserved as Awadhi when source passages are retained.
  classification: project_language_policy
  status: APPROVED

decision_04:
  decision: Sanskrit is used selectively and source-supported.
  classification: project_language_policy
  status: APPROVED

decision_05:
  decision: Tulsidas is the external narrator for the Shiva-Sati-Parvati opening architecture.
  classification: directorial_choice
  status: APPROVED

decision_06:
  decision: Shiva becomes the in-world narrator of the Rama-katha to Parvati.
  classification: directorial_choice
  status: APPROVED

decision_07:
  decision: Character language data is stored episode-by-episode.
  classification: production_architecture
  status: APPROVED

decision_08:
  decision: Character profiles may be copied into later episodes with provenance preserved.
  classification: production_architecture
  status: APPROVED

---

## 27. FINAL GOVERNING RULE

The LANGUAGE REGISTRY exists to ensure that:

CANON
+
LINGUISTIC RESEARCH
+
PROJECT DECISIONS
+
ADAPTATION
+
PRODUCTION

remain distinguishable.

No generated text becomes canonical merely because an AI produced it.

No interpretation becomes canon merely because it is traditional.

No translation becomes original text.

No adaptation becomes scripture.

No unknown becomes fact without research.

---

registry_end:
  status: ACTIVE
  authority: LANGUAGE_SYSTEM

## 28. AUTHORITY TYPE SEPARATION

Canonical authority and linguistic authority are separate dimensions.

canonical_authority:
  determines:
    - narrative canon
    - source events
    - source dialogue
    - source descriptions
    - theological/source claims

linguistic_authority:
  determines:
    - grammar
    - phonology
    - pronunciation
    - historical language
    - dialect/language classification
    - linguistic interpretation

textual_authority:
  determines:
    - exact wording
    - textual variants
    - edition/transcription
    - verse/chaupai/dohā location

No single source automatically has maximum authority in every category.


## 29. RAMCHARITMANAS-FIRST SCOPE

Ramcharitmanas-first applies primarily to:

  - project textual foundation
  - source selection
  - adaptation priority
  - source-faithful narrative decisions

It does NOT mean:

  - Ramcharitmanas automatically overrides linguistic scholarship
  - every pronunciation question must be answered from Ramcharitmanas
  - every historical question must be answered from Ramcharitmanas
  - another canonical source may never be used

When the question is linguistic rather than canonical, appropriate linguistic evidence must be used.


## 30. SOURCE EDITION CONTROL

Every direct textual quotation must identify, where available:

  source_work:
  edition:
  editor:
  publisher:
  publication_year:
  canto_or_kand:
  section:
  verse_or_chaupai_reference:
  page:
  digital_reference:
  transcription_status:

If textual variants exist:

  variant_present: true
  variant_description:
  preferred_variant:
  reason:
  unresolved_variants:


## 31. EVIDENCE TYPE

Every important research record must identify its evidence type.

evidence_type:

  direct_textual:
    meaning: Exact wording from the source text.

  textual_variant:
    meaning: Variant reading between editions/manuscripts/transcriptions.

  scholarly_linguistic:
    meaning: Published linguistic scholarship.

  traditional_commentary:
    meaning: Traditional exegetical/commentarial evidence.

  historical:
    meaning: Historical evidence.

  translation:
    meaning: Evidence supplied through a translation.

  comparative:
    meaning: Comparison with another source.

  inference:
    meaning: Reasoned conclusion not directly stated.

  project_decision:
    meaning: Deliberately chosen production rule.

  ai_generated:
    meaning: Generated by an AI system.

IMPORTANT:

ai_generated is NEVER acceptable as authoritative evidence.


## 32. SOURCE TEXT VS PARAPHRASE

Every source-derived passage must be classified as one of:

  exact_source_text
  normalized_source_text
  transliteration
  literal_translation
  contextual_translation
  paraphrase
  adaptation
  new_dialogue

Rules:

exact_source_text:
  must preserve the selected source reading.

normalized_source_text:
  must explicitly state what was normalized.

paraphrase:
  must never be presented as quotation.

adaptation:
  must never be presented as original source wording.

new_dialogue:
  must never be attributed to the canonical author.


## 33. LANGUAGE VS SCRIPT

Language and writing system are separate metadata fields.

Example:

language: Awadhi
script: Devanagari

language: Sanskrit
script: Devanagari

language: Hindi
script: Devanagari

The use of Devanagari does NOT determine the language.

The system must never classify a passage as Hindi merely because it is written in Devanagari.


## 34. SOURCE NORMALIZATION POLICY

Do not silently modernize historical/source language.

If a source passage is normalized for readability:

  normalization_status: NORMALIZED
  original_available: true
  original_source_reference:
  changes_made:
  reason:
  responsible_system:

Original wording must remain recoverable.

This is particularly important for Ramcharitmanas because scholarship specifically discusses grammatical forms occurring in Tulsidas's original language. 


## 35. RESEARCH QUESTION REGISTRY

Unresolved questions must be recorded rather than forgotten.

research_question_id:
question:
character_or_term:
affected_episode:
why_it_matters:
current_evidence:
sources_checked:
current_conclusion:
confidence:
next_research_action:
status:

status_values:

  OPEN
  IN_RESEARCH
  RESOLVED
  RESOLVED_WITH_UNCERTAINTY
  BLOCKED


## 36. DECISION SUPERSESSION

A new approved decision does not erase an old decision.

When superseded:

previous_decision:
new_decision:
reason_for_change:
new_evidence:
date:
approved_by_project:
affected_material:

The old decision remains in the historical record.

This prevents research changes from destroying provenance.


## 37. MODEL GENERATION SAFETY

AI-generated language is classified as:

evidence_status: NONE

unless independently verified against an authoritative source.

The model may:

  - retrieve
  - compare
  - translate
  - organize
  - propose
  - draft

The model may NOT independently establish:

  - canon
  - historical fact
  - pronunciation
  - quotation
  - etymology
  - traditional practice
  - character language behavior

without supporting evidence.


## 38. APPROVAL STATES

research_status:

  UNRESEARCHED
  IN_RESEARCH
  RESEARCHED
  VERIFIED
  CONFLICTED
  UNCERTAIN

production_status:

  DRAFT
  REVIEW
  APPROVED
  REJECTED
  SUPERSEDED

A researched item is not automatically production-approved.


## 39. TRACEABILITY REQUIREMENT

Every production-critical language decision must be traceable:

PRODUCTION LINE
    ->
CHARACTER / RELATIONSHIP PROFILE
    ->
LANGUAGE RULE
    ->
SOURCE / RESEARCH
    ->
EVIDENCE
    ->
CLASSIFICATION
    ->
APPROVAL

If this chain cannot be reconstructed, the decision is not considered fully traceable.


## 40. CORE CLOSURE RULE

01_CORE is considered complete only when:

[ ] Language hierarchy established
[ ] Source hierarchy established
[ ] Ramcharitmanas-first scope defined
[ ] Canon classification established
[ ] Linguistic authority separated from canonical authority
[ ] Textual edition control established
[ ] Source quotation/paraphrase distinction established
[ ] Language/script distinction established
[ ] Translation hierarchy established
[ ] Adaptation classification established
[ ] Narration architecture recorded
[ ] Character inheritance established
[ ] Provenance established
[ ] Confidence system established
[ ] Conflict handling established
[ ] Unknown handling established
[ ] Research-question tracking established
[ ] Decision supersession established
[ ] AI-generation restriction established
[ ] QA established
[ ] Approval states established
[ ] Production traceability established

core_status: COMPLETE
core_version: 3.0