# TERMINOLOGY SYSTEM

## 1. SYSTEM IDENTITY

system_name:
LANGUAGE TERMINOLOGY SYSTEM

system_id:
LANGUAGE-06-TERMINOLOGY

version:
1.0

status:
MASTER PRODUCTION STANDARD

purpose:
This system is the authoritative terminology-control layer for the RAMAYAN production LANGUAGE system.

It defines how words, names, titles, epithets, kinship terms, religious terms, ritual terms, philosophical concepts, social terms, geographical names, objects, institutions, weapons, flora, fauna, body-related terms, emotions, actions, Sanskrit terms, Awadhi terms, Hindi terms, and culturally specific expressions are identified, researched, normalized, translated, pronounced, adapted, approved, and used consistently.

This file defines the TERMINOLOGY SYSTEM.

It does NOT write:
- Episode scripts
- Dialogue
- Narration
- Character profiles
- Acting instructions
- Voice identities
- Music
- Sound design
- Shot descriptions
- Image prompts
- Video prompts

Those systems may consume approved terminology from this system.

---

# 2. CORE PRINCIPLE

Every production-significant term must have a controlled identity.

A term must never be treated as correct merely because:
- it sounds familiar
- it appears frequently online
- an AI model generated it
- a modern Hindi speaker commonly uses it
- a popular television adaptation uses it
- a translation uses it
- an English source uses it
- a search result contains it
- a social-media source uses it
- it appears in an unsourced database

The project must distinguish:

SOURCE FACT
TEXTUAL FORM
LINGUISTIC FORM
TRANSLITERATION
TRANSLATION
INTERPRETATION
TRADITIONAL USAGE
ADAPTATION
DIRECTORIAL CHOICE
PRODUCTION CONVENTION

These categories must never silently collapse into one another.

---

# 3. TERMINOLOGY AUTHORITY

The terminology system operates under the project source hierarchy.

## Primary project authority

RAMCHARITMANAS-FIRST

This is a project decision and does not claim universal scholarly supremacy.

Where terminology directly derives from Ramcharitmanas:
- preserve the source form where required
- preserve the source meaning
- record the source location
- record the source language
- record the poetic or grammatical context
- distinguish source form from modern Hindi adaptation

## Other authoritative sources

Depending on the terminology:
- Sanskrit textual sources
- Valmiki Ramayana
- other approved primary texts
- established traditional sources
- authoritative commentaries
- historical/linguistic references
- approved dictionaries
- scholarly translations

These may supplement the Ramcharitmanas-first framework.

## Never silently resolve conflicts

If sources disagree:
1. record the disagreement
2. identify the exact forms
3. identify the sources
4. identify source authority
5. determine whether the difference is linguistic, textual, editorial, interpretive, or adaptive
6. record the project decision
7. preserve unresolved uncertainty

---

# 4. TERM IDENTITY

Every controlled term should have a unique record.

Required conceptual fields:

term_id:
term_primary:
term_type:
term_subtype:
language:
script:
source_form:
normalized_form:
production_form:
transliteration:
pronunciation:
meaning:
literal_meaning:
contextual_meaning:
grammatical_information:
gender:
number:
case:
part_of_speech:
etymology_status:
source_status:
source_reference:
source_text:
source_section:
source_location:
source_language:
source_edition:
variant_status:
variant_forms:
translation_status:
adaptation_status:
approval_status:
confidence:
notes:

No field may be fabricated merely to complete a template.

Unknown information remains UNKNOWN.

---

# 5. TERM TYPES

Terminology may be classified into one or more controlled categories.

## 5.1 PERSONAL NAMES

Examples may include:
- Rama
- Sita
- Shiva
- Parvati
- Lakshmana
- Bharata
- Dasharatha

Names require:
- canonical form
- source-language form
- script
- transliteration
- pronunciation
- variant forms
- grammatical behavior
- address behavior
- source evidence
- approved production form

A name must not be normalized according to convenience alone.

---

# 6. TITLES

Titles are distinct from names.

Examples of possible categories:
- king
- queen
- sage
- rishi
- guru
- lord
- prince
- princess
- deity
- ascetic
- minister
- commander

For each title determine:
- exact meaning
- language
- grammatical gender
- social status
- contextual use
- who may use it
- whether it is self-reference, direct address, narration, or third-person reference
- whether it is canonical
- whether it is translated
- whether it is production adaptation

Do not treat every title as interchangeable.

---

# 7. EPITHETS

Epithets must be controlled separately from names and titles.

For every epithet record:

epithet:
literal_meaning:
contextual_meaning:
speaker:
listener:
referent:
source:
source_language:
grammatical_form:
emotional_function:
ritual_function:
poetic_function:
narrative_function:
approved_contexts:
restricted_contexts:
translation:
transliteration:
pronunciation:
canonical_status:

An epithet must not be inserted merely to make dialogue sound more mythological.

No random accumulation of divine epithets.

---

# 8. KINSHIP TERMINOLOGY

Kinship terms require relationship control.

Possible categories:
- father
- mother
- son
- daughter
- brother
- sister
- husband
- wife
- grandfather
- grandmother
- uncle
- aunt
- maternal relations
- paternal relations
- elder/younger relations

For each term determine:
- literal relationship
- social relationship
- speaker
- listener
- referent
- direct address vs third-person reference
- intimacy
- respect
- hierarchy
- emotional state
- source support
- production equivalent

Kinship terms must remain synchronized with:

CHARACTER_LANGUAGE
HONORIFICS_AND_ADDRESS
RELATIONSHIP_LANGUAGE
EPISODE_LANGUAGE

---

# 9. SOCIAL AND HIERARCHICAL TERMINOLOGY

Terms describing social position must not be modernized without justification.

Control:
- royal terminology
- court terminology
- administrative terminology
- warrior terminology
- ascetic terminology
- sage terminology
- household terminology
- ritual terminology
- servant/master terminology
- teacher/student terminology
- ruler/subject terminology

Do not automatically replace historically or textually meaningful terms with modern institutional equivalents.

---

# 10. RELIGIOUS AND THEOLOGICAL TERMINOLOGY

Religious terms require especially strict control.

Examples of categories:
- dharma
- karma
- tapas
- yajna
- vrata
- puja
- mantra
- stotra
- deva
- devi
- rishi
- muni
- brahmana
- atman
- brahman
- moksha
- bhakti

A term must not be assumed to have one universal English or Hindi equivalent.

For each theological term determine:

source:
source_language:
literal_meaning:
contextual_meaning:
theological_scope:
source_specific_meaning:
translation_options:
approved_translation:
forbidden_mistranslation:
interpretive_risk:
confidence:

Meaning must be determined from context and source.

---

# 11. PHILOSOPHICAL TERMINOLOGY

Philosophical terms require contextual interpretation.

A single Sanskrit term may have different practical meanings in different textual contexts.

Therefore:

TERM ≠ AUTOMATIC ONE-WORD TRANSLATION

The system must distinguish:
- lexical meaning
- contextual meaning
- philosophical meaning
- speaker-specific meaning
- theological interpretation
- production translation

Do not flatten complex concepts into modern motivational language.

---

# 12. RITUAL TERMINOLOGY

Ritual terms must remain synchronized with:

RITUAL_LANGUAGE.md

Control:
- yajna terminology
- offerings
- fire terminology
- sacrificial terminology
- mantra terminology
- invocation terminology
- priestly terminology
- ritual implements
- ritual actions
- vows
- blessings
- purification
- consecration
- marriage terminology
- funeral terminology
- worship terminology

Never invent ritual terminology.

Never substitute a modern religious term simply because it sounds familiar.

---

# 13. SANSKRIT TERMS

Sanskrit terminology must remain Sanskrit when the context requires Sanskrit.

The system must record:
- Devanagari
- IAST where useful
- pronunciation
- grammatical form
- sandhi state
- padaccheda where relevant
- compound structure
- gender
- number
- case
- verbal form where applicable
- contextual meaning
- source

Sanskrit must not be generated by mechanically adding Sanskrit-looking vocabulary to Hindi.

---

# 14. AWADHI TERMS

Awadhi terminology must remain distinct from Hindi.

For Ramcharitmanas-derived terminology record:
- original Awadhi form
- normalized form only when necessary
- grammatical form
- poetic form
- pronunciation
- literal meaning
- contextual meaning
- modern Hindi equivalent if required
- production adaptation
- source location

Do not convert Awadhi into Hindi and then falsely label the result as original Awadhi.

Do not create "Awadhi" by adding rural-sounding vocabulary or accents.

---

# 15. HINDI PRODUCTION TERMINOLOGY

Production Hindi terminology must be:
- grammatically correct
- natural
- dignified
- understandable
- contextually appropriate
- culturally appropriate
- performable

It must not become:
- unnecessarily Sanskritized
- artificially archaic
- modern slang
- Hinglish
- social-media language
- generic television mythology language

Modern accessibility must not erase cultural or textual identity.

---

# 16. OBJECT TERMINOLOGY

Objects require controlled naming.

Categories may include:
- clothing
- ornaments
- weapons
- tools
- ritual implements
- household objects
- vehicles
- furniture
- architecture
- agricultural objects
- royal objects
- ascetic objects
- writing materials
- musical instruments

For every important object determine:
- exact identity
- source evidence
- period/context
- physical meaning
- production interpretation
- modern equivalent, if any
- whether modern equivalent is acceptable
- visual implications
- terminology
- translation
- uncertainty

Do not use a modern object name when it materially changes the object.

---

# 17. WEAPON TERMINOLOGY

Weapons require special control.

Record:
- canonical name
- Sanskrit/Awadhi/Hindi form
- literal meaning
- weapon category
- source description
- physical characteristics if supported
- wielder
- associated deity/person
- supernatural status
- activation terminology
- pronunciation
- translation
- visual-production interpretation

Do not invent weapon properties from popular fantasy adaptations.

Do not import terminology from unrelated mythological traditions.

---

# 18. GEOGRAPHICAL TERMINOLOGY

Place names require controlled identity.

Record:
- canonical name
- source-language form
- variants
- modern identification
- ancient/modern distinction
- geographical confidence
- source
- pronunciation
- production form
- translation policy

Ancient location ≠ modern location automatically.

A modern place must not be presented as the exact ancient location without sufficient evidence.

---

# 19. BOTANICAL AND ANIMAL TERMINOLOGY

Flora and fauna terms require special caution.

Record:
- textual name
- source language
- traditional identification
- modern scientific identification, if established
- uncertainty
- source
- visual implication
- translation
- production decision

Do not force a modern species identification when the textual evidence does not support it.

If multiple botanical or zoological identifications exist, preserve the alternatives.

---

# 20. BODY AND PHYSICAL TERMINOLOGY

Body-related terminology must distinguish:
- anatomical meaning
- poetic description
- metaphor
- symbolic meaning
- literal physical description
- ritual meaning

Do not automatically interpret poetic bodily terminology as modern anatomical terminology.

Do not introduce modern medical language into ancient textual terminology unless production context explicitly requires it.

---

# 21. EMOTION TERMINOLOGY

Emotion terms require contextual control.

Examples:
- grief
- sorrow
- anger
- fear
- joy
- compassion
- devotion
- longing
- shame
- pride
- affection
- wonder
- anxiety
- determination

For each term distinguish:
- lexical meaning
- emotional intensity
- contextual meaning
- speaker
- relationship
- source
- production translation

Do not assume modern psychological terminology is equivalent to a traditional emotional concept.

---

# 22. ACTION TERMINOLOGY

Actions must preserve the distinction between:
- literal physical action
- ritual action
- social action
- emotional action
- metaphorical action
- poetic action

A source verb must not automatically be translated into the nearest modern verb.

Context determines the production form.

---

# 23. ABSTRACT CONCEPTS

Abstract terminology requires maximum semantic caution.

Examples:
- dharma
- satya
- maryada
- tapas
- bhakti
- vairagya
- karuna
- shakti
- tejas
- bala
- krodha
- kama

Record:
- lexical meaning
- contextual meaning
- source context
- speaker context
- theological/philosophical interpretation
- translation choices
- rejected translations
- reason for rejection

No single-word translation is authoritative unless the source/context supports it.

---

# 24. COMPOUND TERMS

Sanskrit compounds must not be translated mechanically.

For a compound:
1. preserve original form
2. identify compound components
3. identify compound type where determinable
4. identify grammatical relationship
5. determine contextual meaning
6. record literal expansion
7. record contextual translation
8. record performance translation if different

Do not break a compound incorrectly merely to obtain a familiar meaning.

---

# 25. POLYSEMY

One word may have multiple meanings.

Therefore a terminology record must be context-sensitive.

TERM IDENTITY should distinguish:

lexical_entry:
contextual_instance:
meaning_in_this_context:

The same spelling must not automatically receive the same translation everywhere.

---

# 26. HOMONYMS

Identical or similar forms with different meanings must be distinguished.

Record:
- form
- pronunciation
- grammatical category
- meaning
- source
- context

Do not merge separate terms merely because their Romanized spellings look identical.

---

# 27. VARIANTS

Variants may arise from:
- manuscript traditions
- editions
- orthography
- transcription
- regional usage
- pronunciation
- transliteration systems
- historical spelling
- modern normalization
- translation

Every meaningful variant must be classified.

Variant classes:
- textual_variant
- orthographic_variant
- phonological_variant
- grammatical_variant
- transliteration_variant
- translation_variant
- traditional_variant
- modern_variant
- adaptation_variant
- uncertain_variant

Never silently replace one with another.

---

# 28. SPELLING CONTROL

Every approved production term must have:

canonical_spelling:
approved_production_spelling:
alternate_spellings:
forbidden_spellings:

Forbidden spelling must only be marked when there is a documented reason.

Do not call a valid textual variant "wrong" merely because another edition is preferred.

---

# 29. TRANSLITERATION

Transliteration must not become the source of truth.

Hierarchy:

SOURCE SCRIPT
↓
NORMALIZED SOURCE
↓
TRANSLITERATION
↓
TRANSLATION

Romanized spelling must never overwrite the original source form.

Where useful, record:
- IAST
- simplified Romanization
- pronunciation-oriented transcription
- production subtitle form

These are different functions.

---

# 30. PRONUNCIATION

Terminology must integrate with:

PRONUNCIATION.md

Important terms may require:
- Devanagari
- transliteration
- IPA
- phonetic guide
- syllable division
- vowel length
- aspiration
- retroflex/dental distinction
- nasalization
- visarga
- conjunct pronunciation
- sandhi pronunciation

A spelling is not automatically a pronunciation.

TTS systems must consume approved pronunciation data where required.

---

# 31. NAMES AND EPITHETS PRONUNCIATION

Names, titles and epithets must receive special treatment because pronunciation errors are highly visible.

Each high-priority name should have:
- canonical spelling
- approved spoken form
- syllable breakdown
- pronunciation notes
- source-language pronunciation
- production pronunciation
- rejected pronunciation variants where necessary

No pronunciation should be rejected merely because it differs from modern popular media unless the project has evidence supporting the preferred form.

---

# 32. HONORIFICS AND ADDRESS

Terminology must integrate with:

HONORIFICS_AND_ADDRESS.md

A term may change according to:
- speaker
- listener
- relationship
- status
- public/private context
- emotion
- formality
- source context

The same person may legitimately be referred to by:
- personal name
- title
- epithet
- kinship term
- respectful form
- descriptive form

These are not automatically interchangeable.

---

# 33. CHARACTER-SPECIFIC TERMINOLOGY

Character language files determine how approved terminology is actually selected.

Terminology provides the approved vocabulary.

CHARACTER_LANGUAGE determines:
- preference
- frequency
- register
- relationship use
- emotional use
- knowledge limitation

Do not force every character to use every approved term.

---

# 34. KNOWLEDGE FIREWALL

A term may exist in the project database without being known to every character.

Therefore:

DATABASE KNOWLEDGE ≠ CHARACTER KNOWLEDGE

A character may only use terminology consistent with:
- their knowledge
- experience
- social position
- time
- location
- relationship
- source-supported awareness

Future knowledge must not leak backward.

---

# 35. TEMPORAL FIREWALL

Terminology must be historically and narratively time-aware.

Do not introduce:
- later terminology
- later interpretations
- modern terminology
- modern institutional concepts
- modern scientific identifications

into an earlier scene unless explicitly justified by the project adaptation.

---

# 36. MODERNIZATION FIREWALL

Reject terminology that creates an unintended modern setting.

Watch for:
- modern psychological jargon
- corporate vocabulary
- modern legal terminology
- modern political terminology
- modern relationship terminology
- modern technological metaphors
- social-media vocabulary
- slang
- casual English substitutions

Modern audience accessibility does not justify uncontrolled modernization.

---

# 37. ENGLISH TERMINOLOGY

English may be used in:
- research
- internal metadata
- technical production documentation
- subtitles where required
- translation
- international documentation

English must not automatically replace Hindi/Sanskrit/Awadhi terminology in spoken dialogue.

Where a culturally important term has no precise English equivalent, preserve the original term when appropriate and explain it through context rather than forcing an inaccurate substitute.

---

# 38. HINGLISH CONTROL

Hinglish is not the default production language.

Any English word inside spoken Hindi must have a production justification.

Unnecessary English is rejected.

Exceptions may exist only where:
- project-specific production context requires it
- a technical production term is internal
- a subtitle requires it
- source/translation comparison requires it
- explicit adaptation approval exists

---

# 39. FORBIDDEN GENERIC SUBSTITUTIONS

Do not automatically substitute culturally specific terms with generic words such as:

god
goddess
king
queen
priest
temple
prayer
magic
spell
heaven
hell
sin
blessing
curse
devotion
meditation
soul
spirit

These may be useful translations in some contexts but are not automatically equivalent.

Each must be contextually validated.

---

# 40. CANONICAL VS TRADITIONAL TERMINOLOGY

A term may be:
- directly textual
- derived from textual context
- traditional
- commentarial
- popular
- later devotional
- modern scholarly
- adaptation-created

These categories must remain separate.

A popular devotional term must not be presented as direct Ramcharitmanas wording without evidence.

---

# 41. NEGATIVE EVIDENCE

Absence matters.

If a requested term is not found in the approved source:
- mark source_absence
- do not invent textual support
- do not claim canonical status
- investigate variants and synonyms
- determine whether the term exists elsewhere
- classify its final status

"Not found" is a valid research result.

---

# 42. SOURCE PROVENANCE

Every canonical or source-derived term should be traceable through:

SOURCE
→ SOURCE UNIT
→ TERM
→ NORMALIZATION
→ TRANSLATION
→ INTERPRETATION
→ ADAPTATION
→ SCENE
→ DIALOGUE/NARRATION/RITUAL
→ PERFORMANCE
→ SUBTITLE

No step may silently disappear when it materially changes meaning.

---

# 43. SOURCE CITATION

Where source-backed terminology is used, record as much as practical:

source_name:
source_type:
book:
kanda:
sarga:
chapter:
verse:
chaupai:
doha:
soratha:
edition:
page:
digital_reference:
quotation_reference:

Only fields supported by the actual source should be populated.

No fabricated citation.

---

# 44. EDITION CONTROL

Different editions may contain differences.

Record:
edition_name:
editor:
publisher:
year:
digital_source:
edition_status:

When wording differs:
- preserve both forms
- identify the edition
- identify the preferred project form
- document the reason

Do not silently merge editions.

---

# 45. OCR CONTROL

OCR-derived terminology is UNVERIFIED until checked against the source.

OCR may introduce:
- character substitutions
- missing matras
- incorrect conjuncts
- incorrect punctuation
- merged words
- split words
- wrong anusvara/chandrabindu
- wrong visarga
- incorrect names

OCR text must never become canonical merely because it came from a scanned book.

---

# 46. AI-GENERATED TERMINOLOGY FIREWALL

AI-generated terminology is NEVER evidence.

AI may:
- propose a search term
- identify possible variants
- organize terminology
- suggest questions for research
- normalize verified material

AI may NOT independently establish:
- canonical wording
- source quotation
- historical usage
- Sanskrit grammar
- Awadhi grammar
- etymology
- ritual terminology
- pronunciation
- textual attribution

All AI-derived claims require independent verification.

---

# 47. ETYMOLOGY

Etymology must be classified.

Possible statuses:
- verified
- probable
- traditional
- disputed
- uncertain
- unknown

Do not invent attractive Sanskrit derivations.

Folk etymology must not be presented as linguistic fact.

---

# 48. SEMANTIC DRIFT

Modern meanings may differ from historical/textual meanings.

Every high-risk term should be checked for:
- historical meaning
- textual meaning
- modern Hindi meaning
- popular religious meaning
- English translation meaning

If these differ, the production meaning must be explicitly selected.

---

# 49. TRANSLATION CONTROL

Every translation should be classified as:

DIRECT_LITERAL
CONTEXTUAL
EXPLANATORY
PERFORMANCE
SCREENPLAY
SUBTITLE
SCHOLARLY
TRADITIONAL

A translation must not be presented as the original source.

The original and translated forms must remain linked but separate.

---

# 50. SUBTITLE TERMINOLOGY

Subtitle terminology may differ from spoken terminology only when necessary.

Subtitle rules:
- preserve important proper nouns
- preserve culturally significant terms
- avoid unnecessary explanatory overload
- maintain consistency
- do not silently alter theological meaning
- distinguish translation from transliteration
- maintain recurring term consistency

Subtitle terminology must trace back to the approved master term.

---

# 51. VISUAL TERMINOLOGY

Terminology can affect visual production.

A term describing:
- clothing
- weapon
- ornament
- ritual
- architecture
- vehicle
- flora
- fauna
- body feature
- social position

may have direct visual consequences.

The visual interpretation must not become a new false textual fact.

Visual inference must be labelled separately.

---

# 52. PROMPT TERMINOLOGY

AI image/video prompts must consume approved terminology.

Prompt writers must not:
- invent synonyms that alter meaning
- use modern substitutes
- use fantasy terminology without approval
- merge distinct objects
- change titles into generic labels
- turn uncertain interpretations into factual descriptions

PROMPT LANGUAGE ≠ CANONICAL EVIDENCE.

---

# 53. TERM RELATIONSHIPS

Terms may have relationships:

synonym:
near_synonym:
antonym:
broader_term:
narrower_term:
related_term:
historical_variant:
regional_variant:
textual_variant:
translation_equivalent:
non_equivalent_translation:
epithet_of:
title_of:
kinship_relation:
ritual_relation:
object_relation:

Do not label two terms synonyms merely because translations appear similar.

---

# 54. SYNONYM CONTROL

Synonyms must be classified by equivalence.

EXACT_EQUIVALENT
NEAR_EQUIVALENT
CONTEXTUAL_EQUIVALENT
TRADITIONAL_EQUIVALENT
TRANSLATION_EQUIVALENT
NOT_EQUIVALENT

This prevents uncontrolled word substitution.

---

# 55. TERM COLLISION

A word may have multiple identities.

Before approving a term, check:
- spelling
- pronunciation
- language
- grammatical category
- meaning
- source
- character use
- context

If collision exists, create separate records.

---

# 56. TERM PRIORITY

Each term may have:

priority:
CRITICAL
HIGH
MEDIUM
LOW

CRITICAL terminology includes:
- divine names
- major character names
- sacred terms
- important weapons
- major places
- major relationships
- recurring theological concepts
- recurring ritual terminology
- terms with high translation risk

CRITICAL terms require stronger validation.

---

# 57. RISK LEVEL

Each term may have:

risk:
LOW
MEDIUM
HIGH
CRITICAL

High-risk causes:
- multiple meanings
- disputed etymology
- disputed identification
- conflicting sources
- sacred usage
- pronunciation uncertainty
- textual variants
- translation ambiguity
- historical uncertainty
- popular-media distortion

---

# 58. CONFIDENCE

Confidence must reflect evidence, not model certainty.

Suggested levels:

A:
direct verified primary-source evidence

B:
strong derived textual evidence

C:
authoritative secondary evidence

D:
traditional or scholarly interpretation

E:
reasonable linguistic/historical inference

F:
production/adaptation choice

U:
unknown or unresolved

Confidence must not be upgraded because a term is widely repeated online.

---

# 59. APPROVAL STATES

Every production-significant term should have:

DRAFT
RESEARCHING
SOURCE_VERIFIED
LINGUISTICALLY_VERIFIED
TRANSLATION_VERIFIED
PRODUCTION_APPROVED
LOCKED
SUPERSEDED
REJECTED
UNCERTAIN

A REJECTED term must not be used unless explicitly reopened and approved.

---

# 60. LOCKING

LOCKED terminology may not be changed casually.

A locked change requires:
- reason
- evidence
- affected scenes
- affected scripts
- affected subtitles
- affected prompts
- affected pronunciation records
- affected continuity records
- approval
- version increment

---

# 61. SUPERSESSION

When terminology changes:

old_term:
new_term:
reason:
source:
change_date:
affected_assets:
migration_status:
approval:

Do not delete historical terminology records.

Preserve the audit trail.

---

# 62. EPISODE CONTINUITY

Recurring terms must remain stable across episodes unless the change is intentional.

Continuity checks must include:
- spelling
- pronunciation
- translation
- title
- epithet
- relationship term
- ritual term
- place name
- object name
- terminology register

Episode-specific usage may override the master record only with explicit justification.

---

# 63. SCENE OVERRIDE

A scene may have a terminology override.

Required:

term_id:
scene_id:
override:
reason:
source_or_adaptation_basis:
scope:
start:
end:
approval:

Scene override must not silently rewrite the master terminology.

---

# 64. CHARACTER OVERRIDE

Character-specific terminology may be controlled by:

CHARACTER_LANGUAGE

A character may:
- prefer a title
- avoid a term
- use a relationship term
- use a particular epithet
- use a source-derived form

Such differences must be intentional and documented.

---

# 65. RELATIONSHIP TERMINOLOGY

Relationship terms must remain synchronized with:

RELATIONSHIP_LANGUAGE.md

The system must distinguish:
- objective relationship
- spoken address
- third-person reference
- emotional address
- formal address
- private address
- public address

A relationship label is not automatically a spoken term.

---

# 66. NARRATION TERMINOLOGY

Narration may use terminology unavailable or inappropriate in direct dialogue.

Narration must still obey:
- source authority
- terminology approval
- narrator knowledge
- period/context
- language register

Tulsidas narration and Shiva narration must not be assumed to use identical terminology merely because both are narrators.

---

# 67. DIALOGUE TERMINOLOGY

Dialogue terminology must be selected through:

SOURCE
→ CHARACTER
→ RELATIONSHIP
→ CONTEXT
→ EMOTION
→ KNOWLEDGE
→ REGISTER
→ TERM APPROVAL

Do not insert approved terms simply to demonstrate vocabulary.

---

# 68. RITUAL TERMINOLOGY

Ritual terminology must additionally obey:

RITUAL_LANGUAGE.md

Sacred terminology receives higher validation requirements.

No invented mantra.
No invented Sanskrit prayer.
No invented ritual formula.
No invented ritual title.
No invented sacred etymology.

---

# 69. CULTURAL DIGNITY

Terminology must not:
- trivialize sacred concepts
- make sacred figures sound casual
- reduce philosophical concepts to memes
- turn ritual terms into fantasy magic terminology
- use vulgar equivalents
- use mocking modern equivalents
- flatten culturally specific concepts unnecessarily

---

# 70. POPULAR-MEDIA FIREWALL

Popular television, films, YouTube, social media, fan pages, games, novels, and AI-generated Ramayana content are NOT automatically canonical.

They may be used as:
- adaptation references
- comparative evidence
- research leads
- production inspiration

They must not silently become source authority.

---

# 71. SEARCH-RESULT FIREWALL

A search-engine result is not evidence by itself.

Verify:
- source identity
- source text
- exact wording
- source location
- publication/edition
- translation status
- context

Search snippets must never be copied into the terminology registry as canonical facts without verification.

---

# 72. DICTIONARY CONTROL

Dictionaries may establish lexical meanings but cannot automatically establish:
- textual occurrence
- character usage
- canonical status
- historical scene usage
- ritual usage
- project-specific meaning

Dictionary evidence and textual evidence must remain separate.

---

# 73. SOURCE ABSENCE VS NONEXISTENCE

If a term is not found in one source:

Do NOT conclude:
"the term does not exist."

Correct classification:
"not located in the checked source/edition."

Nonexistence requires substantially stronger evidence.

---

# 74. UNCERTAINTY LANGUAGE

Use precise uncertainty labels:

UNKNOWN
NOT_YET_RESEARCHED
NOT_FOUND_IN_CHECKED_SOURCE
DISPUTED
MULTIPLE_IDENTIFICATIONS
MULTIPLE_TRANSLATIONS
TRADITIONAL_ONLY
INFERRED
ADAPTATION_ONLY

Never disguise uncertainty as certainty.

---

# 75. TERM RESEARCH WORKFLOW

For every new important term:

1. Identify the term.
2. Identify the language.
3. Preserve original script.
4. Identify source.
5. Locate exact source occurrence where applicable.
6. Record grammatical form.
7. Determine contextual meaning.
8. Identify variants.
9. Check authoritative dictionaries/references.
10. Check pronunciation.
11. Check translation options.
12. Check character/relationship implications.
13. Check ritual/sacred implications.
14. Check modern semantic drift.
15. Classify confidence.
16. Classify canon/adaptation status.
17. Approve or mark uncertain.
18. Register the term.
19. Propagate approved form to dependent systems.

---

# 76. TERM VALIDATION ORDER

Validation should follow:

SOURCE
→ LANGUAGE
→ FORM
→ GRAMMAR
→ MEANING
→ CONTEXT
→ PRONUNCIATION
→ TRANSLATION
→ CHARACTER/RELATIONSHIP
→ PRODUCTION
→ CONTINUITY
→ QA

Do not begin with the desired production translation and reverse-engineer evidence.

---

# 77. TERM GENERATION ORDER

When AI assists with terminology:

1. retrieve candidate
2. preserve candidate as unverified
3. identify source
4. verify source
5. compare variants
6. verify language
7. verify meaning
8. verify pronunciation
9. classify status
10. approve
11. release to production

AI output before verification is a RESEARCH CANDIDATE only.

---

# 78. AUTOMATIC REJECTION CONDITIONS

Reject a terminology record if it:

- invents a source
- invents a quotation
- invents a Sanskrit form
- invents an Awadhi form
- invents an etymology
- presents AI output as canon
- merges distinct terms without evidence
- silently changes source wording
- silently changes meaning
- uses an unsupported modern equivalent
- falsely labels a translation as original
- falsely labels an adaptation as canonical
- creates unsupported historical certainty
- ignores a documented source conflict
- hides uncertainty
- uses popular media as sole canonical authority
- creates pronunciation without evidence where pronunciation is disputed
- introduces terminology unknown to the character
- creates temporal anachronism
- violates locked terminology without approved change control

---

# 79. QUALITY CONTROL

Every CRITICAL/HIGH terminology record should pass:

SOURCE QA
[ ] source identified
[ ] exact location recorded where applicable
[ ] source form preserved
[ ] edition identified where relevant

LANGUAGE QA
[ ] language correctly identified
[ ] script correct
[ ] grammar checked
[ ] variant status checked

MEANING QA
[ ] literal meaning checked
[ ] contextual meaning checked
[ ] translation checked
[ ] semantic drift checked

PRONUNCIATION QA
[ ] pronunciation checked
[ ] difficult sounds checked
[ ] TTS implications checked where required

PRODUCTION QA
[ ] approved production form exists
[ ] character usage checked
[ ] relationship usage checked
[ ] narration usage checked
[ ] ritual usage checked where applicable

CONTINUITY QA
[ ] recurring form consistent
[ ] episode usage consistent
[ ] subtitle form consistent
[ ] prompt terminology consistent

CANON QA
[ ] canonical status correctly classified
[ ] adaptation status correctly classified
[ ] uncertainty preserved

---

# 80. CROSS-SYSTEM INTEGRATION

TERMINOLOGY integrates with:

LANGUAGE_SYSTEM
LANGUAGE_REGISTRY
HINDI
SANSKRIT
AWADHI
PRONUNCIATION
CHARACTER_LANGUAGE
HONORIFICS_AND_ADDRESS
EPISODE_LANGUAGE
RELATIONSHIP_LANGUAGE
SOURCE_TEXT
TRANSLATION_AND_ADAPTATION
DIALOGUE
NARRATION
RITUAL_LANGUAGE
CANON
RESEARCH
CHARACTERS
ACTING
AUDIO
SUBTITLES
PROMPTS
AI
CONTINUITY
QA
APPROVAL
MASTER_REGISTRY

No system may silently redefine a locked master term.

---

# 81. SYSTEM BOUNDARIES

TERMINOLOGY owns:

- term identity
- terminology classification
- canonical/variant forms
- terminology provenance
- terminology meaning
- terminology translation control
- terminology pronunciation linkage
- terminology continuity
- terminology approval

TERMINOLOGY does NOT own:

- character personality
- dialogue writing
- narration writing
- acting
- voice identity
- audio mixing
- visual design
- shot composition
- cinematography
- music
- editing

Those systems consume terminology through controlled interfaces.

---

# 82. MASTER TERM RECORD

Recommended complete record:

term_id:
term_primary:
term_type:
term_subtype:

language:
script:
source_form:
normalized_form:
production_form:

transliteration:
pronunciation:
ipa:
syllable_breakdown:

part_of_speech:
gender:
number:
case:
grammatical_form:

literal_meaning:
contextual_meaning:
translation:
performance_translation:
subtitle_translation:

source_status:
canon_status:
adaptation_status:
evidence_level:
confidence:

source_name:
source_type:
source_section:
source_location:
edition:

variant_status:
variant_forms:
alternate_spellings:

character_usage:
relationship_usage:
narration_usage:
ritual_usage:
episode_usage:

semantic_risk:
pronunciation_risk:
translation_risk:
anachronism_risk:

approved_contexts:
restricted_contexts:
forbidden_usage:

visual_implications:
prompt_usage:

notes:
research_notes:
conflict_notes:

approval_status:
approved_by:
approval_date:
version:
supersedes:
superseded_by:

---

# 83. MINIMUM REQUIRED DATA

Not every term needs every field populated.

However, every production-used term must have enough information to establish:

WHAT IT IS
WHERE IT COMES FROM
WHAT IT MEANS HERE
WHICH FORM IS APPROVED
HOW IT IS PRONOUNCED WHEN RELEVANT
WHICH STATUS IT HAS
WHY IT IS APPROVED
WHERE IT MAY BE USED

Missing information must be explicitly marked rather than fabricated.

---

# 84. CHANGE CONTROL

Any terminology change must record:

change_id:
term_id:
old_value:
new_value:
reason:
evidence:
affected_assets:
risk:
approval:
date:

Changes affecting CRITICAL terminology must trigger review of:
- scripts
- dialogue
- narration
- rituals
- subtitles
- pronunciation
- character language
- continuity
- prompts
- existing rendered assets where terminology is spoken or displayed

---

# 85. PROPAGATION RULE

Master terminology changes must never automatically overwrite dependent production material without review.

Dependency chain:

MASTER TERM
→ CHARACTER LANGUAGE
→ RELATIONSHIP LANGUAGE
→ EPISODE LANGUAGE
→ DIALOGUE/NARRATION/RITUAL
→ PRONUNCIATION
→ SUBTITLES
→ PROMPTS
→ AUDIO/TTS
→ FINAL MEDIA

Every downstream change must preserve provenance.

---

# 86. TERMINOLOGY REGISTRY RULE

The terminology registry is not a dictionary dump.

A term belongs in the production registry when it is:
- used in the project
- likely to be used
- canonically significant
- linguistically significant
- pronunciation-sensitive
- translation-sensitive
- continuity-sensitive
- visually significant
- ritual/sacred
- potentially ambiguous
- high-risk

Do not create thousands of unnecessary records merely to make the system appear comprehensive.

---

# 87. NO EMPTY AUTHORITY

A terminology entry must contain actual evidence or an explicit research status.

Never create an apparently authoritative record containing only:
- a name
- an assumed meaning
- an assumed pronunciation
- an assumed origin

An incomplete verified record is preferable to a complete fabricated record.

---

# 88. TERM NORMALIZATION RULE

Normalization is permitted only to improve production consistency.

Normalization must never:
- erase source variants
- alter meaning
- erase grammatical information
- overwrite original spelling
- convert Awadhi into Hindi while calling it Awadhi
- convert Sanskrit into Hindi
- erase source-specific pronunciation
- hide textual disagreement

Original source data always remains recoverable.

---

# 89. SOURCE FORM VS PRODUCTION FORM

These must remain separate.

SOURCE FORM:
What the source actually contains.

PRODUCTION FORM:
What the production chooses to say/display after verified translation/adaptation.

The production form may differ.

If it differs, the reason must be recorded.

---

# 90. CANONICAL QUOTATION FIREWALL

A term or phrase may be marked as canonical quotation only when:
- source is identified
- source location is identified
- wording is verified
- language is identified
- speaker/narrator attribution is verified where applicable

Otherwise classify it as:
SOURCE-DERIVED
TRANSLATED
ADAPTED
CONNECTIVE
PRODUCTION-CREATED
or UNKNOWN.

---

# 91. POPULAR SPELLING FIREWALL

Common online spellings are not automatically canonical.

Examples of possible variation may include:
- Rama/Ram
- Sita/Seeta
- Shiva/Shiv
- Krishna/Krishn
- Lakshmana/Lakshman

The project must choose forms intentionally according to:
- source
- language
- context
- spoken production
- subtitle requirements

No spelling variant becomes universal merely because it is popular.

---

# 92. TRANSLATION EQUIVALENCE FIREWALL

The following must not be treated as automatically equivalent:

original term
literal translation
contextual translation
modern Hindi equivalent
English equivalent
devotional equivalent
scholarly equivalent
screenplay equivalent

Each layer must be labelled.

---

# 93. TERMINOLOGY AND REALISM

Terminological accuracy must support human realism.

Characters should not sound like:
- dictionaries
- encyclopedias
- Sanskrit textbooks
- AI-generated mythological characters
- theatrical caricatures

Approved terminology must be naturally selected according to character, context, relationship and emotion.

---

# 94. TERMINOLOGY AND CINEMATIC REALISM

Correct terminology alone does not make dialogue realistic.

Terminology must interact with:
- character intention
- knowledge
- emotional state
- social context
- scene objective
- relationship
- natural speech rhythm

Do not overload dialogue with specialized terminology merely because it is historically or textually available.

---

# 95. TERMINOLOGY AND ACCESSIBILITY

The audience should understand the story without requiring every culturally specific term to be replaced.

Preferred approach:

PRESERVE IMPORTANT TERM
+
PROVIDE MEANING THROUGH CONTEXT
+
USE NATURAL SENTENCE STRUCTURE
+
USE SUBTITLE/TRANSLATION SUPPORT WHERE NEEDED

Do not erase cultural terminology merely to make the dialogue easier.

---

# 96. FINAL TERMINOLOGY GATE

Before a term enters final production:

1. Is the term correctly identified?
2. Is its language correctly identified?
3. Is the source known where source authority is claimed?
4. Is the original form preserved?
5. Is the meaning verified?
6. Is the contextual meaning verified?
7. Are variants recorded?
8. Is pronunciation verified where relevant?
9. Is translation classified?
10. Is canon/adaptation status classified?
11. Is character knowledge respected?
12. Is relationship usage correct?
13. Is ritual usage correct where relevant?
14. Is the term free from modern anachronism?
15. Is uncertainty preserved?
16. Is the production form approved?
17. Is continuity checked?
18. Are dependent systems identified?
19. Is provenance traceable?
20. Can the term survive final canonical QA?

If any critical answer is NO or UNKNOWN without an approved uncertainty decision, the term must not be treated as fully production-approved.

---

# 97. ABSOLUTE RULES

1. Never fabricate terminology.
2. Never fabricate a source.
3. Never fabricate a quotation.
4. Never fabricate Sanskrit.
5. Never fabricate Awadhi.
6. Never fabricate etymology.
7. Never fabricate pronunciation.
8. Never present translation as original.
9. Never present adaptation as canon.
10. Never erase meaningful source variants.
11. Never silently resolve source conflicts.
12. Never hide uncertainty.
13. Never use AI output as evidence.
14. Never let popular media silently become canonical authority.
15. Never let modern terminology create accidental anachronism.
16. Never assume one translation fits every context.
17. Never assume one character uses every approved term.
18. Never confuse database knowledge with character knowledge.
19. Never change locked terminology without change control.
20. Never allow downstream production to silently redefine a master term.
21. Never create unnecessary terminology records merely for appearance.
22. Never sacrifice canonical meaning for stylistic convenience.
23. Never sacrifice natural human speech merely to display terminology.
24. Preserve culturally significant terminology when translation would reduce meaning.
25. UNKNOWN remains UNKNOWN until evidence resolves it.

---

# 98. FINAL SYSTEM STANDARD

The RAMAYAN TERMINOLOGY SYSTEM exists to ensure that every important word used by the production has a controlled identity, verified meaning, appropriate linguistic form, traceable source status, correct pronunciation where required, correct contextual usage, and consistent downstream implementation.

The goal is not maximum vocabulary.

The goal is:

CANONICAL ACCURACY
+
LINGUISTIC ACCURACY
+
SEMANTIC ACCURACY
+
CULTURAL ACCURACY
+
PRONUNCIATION ACCURACY
+
CHARACTER ACCURACY
+
RELATIONSHIP ACCURACY
+
CONTINUITY
+
HUMAN NATURALNESS
+
TRACEABILITY

No term becomes authoritative merely because it sounds correct.

Evidence determines authority.

Context determines meaning.

The approved terminology record determines production consistency.


# 99. HARDENING LAYER — TERMINOLOGY INTEGRITY

This section closes implementation, validation, ambiguity, lifecycle, dependency, and machine-consistency gaps not covered by the preceding terminology rules.

---

# 100. TERM SCOPE

A terminology record may represent:

SINGLE_WORD
PROPER_NAME
TITLE
EPITHET
KINSHIP_TERM
COMPOUND
MULTIWORD_EXPRESSION
FIXED_PHRASE
IDIOM
FORMULA
RITUAL_FORMULA
MANTRA
INVOCATION
BLESSING
VOW
ADDRESS_FORM
VOCATIVE
PLACE_NAME
OBJECT_NAME
WEAPON_NAME
PLANT_NAME
ANIMAL_NAME
CONCEPT
ACTION_TERM
EMOTION_TERM
TECHNICAL_TERM
SOURCE_EXPRESSION

A multiword expression must not be split into independent words when doing so destroys its established meaning.

Conversely, words that only happen to occur together must not automatically be registered as a fixed phrase.

---

# 101. LEXICAL ENTRY VS OCCURRENCE

The system must distinguish:

LEXICAL_ENTRY
from
TEXTUAL_OCCURRENCE.

One lexical entry may have many textual occurrences.

Each occurrence may have:
- different grammatical form
- different meaning
- different speaker
- different context
- different source
- different translation

Therefore:

TERM_IDENTITY ≠ OCCURRENCE_ID

The master term defines the lexical/production identity.

The occurrence defines how that term functions in a particular source or scene.

---

# 102. INFLECTED FORM CONTROL

A word may appear in multiple grammatical forms.

Examples of variation may include:
- singular/plural
- nominative/oblique/case forms
- masculine/feminine forms
- verb tense/aspect/mood
- participles
- vocative forms
- sandhi forms
- poetic forms
- contracted forms

The system must record the relationship between:

LEMMA
→ INFLECTED_FORM
→ TEXTUAL_OCCURRENCE
→ PRODUCTION_FORM

An inflected form must not accidentally become a separate lexical term unless it has an independent lexical identity.

---

# 103. LEMMA CONTROL

Where linguistically appropriate, record:

lemma:
lexical_root:
derived_form:
inflected_form:

Do not invent a lemma merely because a word appears similar to another word.

For Sanskrit:
- root identification must be verified.
- derivation must not be guessed.
- verbal roots must not be fabricated.

For Awadhi/Hindi:
- historical or dialectal morphology must not be retroactively forced into modern grammatical categories without qualification.

---

# 104. MORPHOLOGICAL INTEGRITY

Terminology validation must check whether the production form preserves required grammatical information.

Check:
- gender
- number
- case
- person
- tense
- aspect
- mood
- voice
- agreement
- honorific agreement
- verbal agreement
- compound structure
- syntactic function

A correct lexical term can still be used incorrectly if its grammatical form is wrong.

---

# 105. PRONOUNCING A WORD VS PRONOUNCING A FORM

Pronunciation records must distinguish:

LEXICAL_PRONUNCIATION
from
CONTEXTUAL_PRONUNCIATION.

Contextual pronunciation may change through:
- sandhi
- connected speech
- poetic metre
- chanting
- grammatical inflection
- phonological environment

The citation form must not automatically be treated as the spoken form in every context.

---

# 106. SANDHI CONTROL

For Sanskrit and source material containing sandhi:

Record where relevant:

underlying_form:
sandhied_form:
padaccheda:
spoken_form:
meaning:

Never treat a sandhied form as an unrelated lexical term merely because its surface spelling differs.

Conversely, never manufacture sandhi merely to make text appear more Sanskritic.

---

# 107. POETIC FORM CONTROL

When terminology occurs inside:
- chaupai
- doha
- soratha
- shloka
- other metrical forms

the source form must be preserved.

Normalization must not destroy:
- metre
- syllable structure
- rhyme where relevant
- sandhi
- word order
- poetic grammar
- source-specific morphology

If production adaptation changes the poetic form, mark the change explicitly.

---

# 108. CONTEXT WINDOW

A term must not be interpreted from an isolated word alone when context materially affects meaning.

Minimum contextual evidence may include:
- surrounding phrase
- sentence
- verse
- chaupai
- doha
- preceding/following lines
- speaker
- listener
- narrative situation

For ambiguous terms, preserve enough context to reconstruct the interpretation.

---

# 109. CONTEXT-SPECIFIC MEANING ID

When one lexical term has materially different contextual meanings, create separate:

MEANING_RECORDS

rather than changing the master lexical definition.

Structure:

term_id:
meaning_id:
context:
meaning:
source:
confidence:
translation:
notes:

This prevents one contextual interpretation from contaminating every occurrence.

---

# 110. TERM COLLISION MATRIX

Before approving a new term, check against existing records for:

EXACT_SPELLING_COLLISION
ROMANIZATION_COLLISION
PRONUNCIATION_COLLISION
MEANING_COLLISION
TRANSLATION_COLLISION
NAME_COLLISION
TITLE_COLLISION
EPITHET_COLLISION
SOURCE_COLLISION

A collision is not automatically an error.

It must be classified as:
- SAME_TERM
- DIFFERENT_TERM
- DIFFERENT_SENSE
- DIFFERENT_LANGUAGE
- DIFFERENT_SOURCE_FORM
- DIFFERENT_TRANSLATION
- UNRESOLVED

---

# 111. CROSS-LANGUAGE COLLISION

Identical-looking forms across Hindi, Awadhi, Sanskrit, and other languages must not automatically be treated as the same term.

Record:

language_identity:
source_language:
production_language:
cross_language_relationship:

A shared spelling does not prove shared etymology or meaning.

---

# 112. ROMANIZATION COLLISION

Different Devanagari forms may collapse into the same Roman spelling.

Therefore Roman spelling must never be used as the primary deduplication key.

Primary identity must use:
- source script
- language
- term identity
- source context

Romanization is a representation layer.

---

# 113. CASE AND DIACRITIC CONTROL

Where transliteration is used, distinguish:

DIACRITIC_PRESERVING_FORM
from
SIMPLIFIED_ROMAN_FORM.

Do not compare the two as different lexical terms solely because diacritics are absent.

Example classes:

IAST
SIMPLIFIED_ROMAN
PRONUNCIATION_GUIDE
SUBTITLE_ROMANIZATION

Each has a different purpose.

---

# 114. TYPOGRAPHICAL NORMALIZATION

The system must distinguish actual textual variants from typographical differences.

Potential non-semantic differences:
- whitespace
- punctuation
- quotation marks
- Unicode normalization
- capitalization in Roman script

Potential semantic differences:
- matra
- anusvāra/chandrabindu
- visarga
- conjunct
- vowel length
- consonant identity

Never normalize semantic distinctions as typography.

---

# 115. UNICODE INTEGRITY

Devanagari terminology must be checked for Unicode integrity.

Watch for:
- visually identical but differently encoded characters
- incorrect combining marks
- misplaced vowel signs
- malformed conjuncts
- duplicate Unicode representations
- invisible characters

Source preservation must remain visually and semantically accurate.

---

# 116. SOURCE SNAPSHOT CONTROL

For critical source terminology, record enough information to identify the exact source version used.

Where technically available:

source_uri:
source_identifier:
edition:
version:
access_date:
page_or_location:
digital_identifier:
archive_identifier:

A source that later changes online must not silently alter the evidence supporting a locked terminology record.

---

# 117. SOURCE HIERARCHY PER TERM

The global project hierarchy is not sufficient by itself.

Each term may have its own evidence hierarchy.

Example:

PRIMARY_TEXT
→ APPROVED_CRITICAL_EDITION
→ AUTHORITATIVE_COMMENTARY
→ SCHOLARLY_REFERENCE
→ DICTIONARY
→ TRADITIONAL_SOURCE
→ SECONDARY_REFERENCE
→ POPULAR_SOURCE

The applicable hierarchy must be recorded when evidence conflicts.

---

# 118. CONFLICT TYPES

Every source conflict should be classified.

TEXTUAL_CONFLICT
EDITIONAL_CONFLICT
ORTHOGRAPHIC_CONFLICT
GRAMMATICAL_CONFLICT
TRANSLATION_CONFLICT
ETYMOLOGICAL_CONFLICT
PRONUNCIATION_CONFLICT
IDENTIFICATION_CONFLICT
TRADITIONAL_CONFLICT
HISTORICAL_CONFLICT
ADAPTATION_CONFLICT

Do not describe all disagreements simply as "different interpretations."

---

# 119. CONFLICT RESOLUTION RECORD

For unresolved or resolved conflicts:

conflict_id:
term_id:
source_a:
form_a:
source_b:
form_b:
exact_difference:
conflict_type:
authority_comparison:
project_decision:
decision_reason:
remaining_uncertainty:
approval_status:

The rejected alternative must remain recoverable.

---

# 120. NEGATIVE CLAIM CONTROL

Claims such as:

"this word was never used"
"this name did not exist"
"this pronunciation is incorrect"
"this term is not Sanskrit"
"this term is not Awadhi"

require evidence stronger than simply failing to find a result.

Use:

NOT_FOUND
NOT_VERIFIED
DISPUTED

unless actual evidence establishes the stronger negative claim.

---

# 121. FREQUENCY IS NOT AUTHORITY

A frequently occurring term is not automatically more canonical.

Popularity may be influenced by:
- television
- cinema
- devotional practice
- modern Hindi
- internet repetition
- search-engine ranking
- fan usage

Frequency can be recorded as a research property but must never determine authority by itself.

---

# 122. SEARCH ENGINE RANKING IS NOT EVIDENCE

Search ranking, autocomplete, snippets, and SEO frequency must never determine:
- canonical form
- preferred spelling
- pronunciation
- etymology
- source attribution
- meaning

They may only help locate candidate sources.

---

# 123. SOURCE CHAIN COMPLETENESS

A source-derived term must be traceable through the entire evidence chain.

Minimum:

SOURCE
→ LOCATION
→ FORM
→ INTERPRETATION
→ PRODUCTION DECISION

If a transformation occurs:

SOURCE
→ NORMALIZATION
→ TRANSLATION
→ ADAPTATION
→ PRODUCTION

No unexplained transformation is permitted.

---

# 124. TRANSLATION LOSS REGISTER

Where translation cannot preserve all dimensions of the original, record:

lost_feature:
- sound
- metre
- grammatical information
- cultural association
- semantic range
- metaphor
- wordplay
- theological nuance
- social register

preservation_strategy:
- original_term
- explanatory_context
- footnote/subtitle
- contextual_translation
- partial_translation
- adaptation

This prevents invisible semantic loss.

---

# 125. NON-EQUIVALENT TRANSLATION

If no exact translation exists, do not label an approximate translation as exact.

Use:

translation_equivalence:
EXACT
CLOSE
PARTIAL
CONTEXTUAL
EXPLANATORY
NON_EQUIVALENT

The production may still approve a translation, but its limitations must remain known.

---

# 126. BACK-TRANSLATION TEST

For critical translated terminology:

ORIGINAL
→ PRODUCTION TRANSLATION
→ BACK-TRANSLATION

Compare whether the central meaning survives.

This is a QA method, not evidence that the back-translation is canonical.

---

# 127. CHARACTER USAGE MATRIX

Critical terminology may require:

| Character | Term | Allowed | Preferred | Restricted | Reason |
|---|---|---|---|---|---|

Reasons may include:
- knowledge
- relationship
- status
- personality
- source evidence
- emotional context
- ritual role

This prevents every character from sharing one generic vocabulary.

---

# 128. AUDIENCE-ACCESSIBILITY MATRIX

For difficult terminology record:

audience_difficulty:
LOW
MEDIUM
HIGH

accessibility_strategy:
CONTEXT
TRANSLATION
SUBTITLE
NARRATIVE_EXPLANATION
NO_EXPLANATION_REQUIRED
PRESERVE_TERM

Do not simplify the term itself unless the production decision explicitly requires it.

---

# 129. SACRED-TERM LOCK

CRITICAL sacred terminology receives additional protection.

Before changing a sacred term verify:
- source
- context
- grammatical form
- pronunciation
- translation
- ritual context
- theological implications
- downstream usage

A stylistic preference is insufficient reason to change it.

---

# 130. PROPER-NAME LOCK

Major character and place names receive controlled consistency.

Changing a locked proper name requires review of:
- all scripts
- all subtitles
- pronunciation
- TTS
- character files
- continuity
- prompts
- existing media
- metadata

---

# 131. TERM DEPRECATION

A term may become inappropriate for production while remaining historically valid.

Status:

HISTORICALLY_VALID
BUT
PRODUCTION_DEPRECATED

Do not delete it.

Record:
deprecation_reason:
replacement:
scope:
effective_version:

---

# 132. TERM REACTIVATION

A deprecated term may be reactivated only when:
- new evidence appears
- a source requires it
- a scene-specific canonical quotation requires it
- an approved adaptation decision requires it

Record the reason and new scope.

---

# 133. VERSIONED TERMINOLOGY

Every approved master term must belong to a terminology version.

Example:

term_version:
1.0
1.1
2.0

Minor changes:
- metadata
- clarification
- additional evidence

Major changes:
- meaning
- source
- approved form
- translation
- canonical classification

---

# 134. DEPENDENCY GRAPH

Each critical term should be able to identify dependent assets:

term_id
→ character files
→ relationship files
→ episode files
→ dialogue
→ narration
→ ritual
→ subtitles
→ pronunciation
→ prompts
→ audio/TTS
→ continuity
→ QA
→ rendered media

This is required for safe change propagation.

---

# 135. IMPACT LEVEL

Terminology changes must be classified:

NO_PRODUCTION_IMPACT
METADATA_ONLY
TEXT_IMPACT
PRONUNCIATION_IMPACT
SUBTITLE_IMPACT
AUDIO_IMPACT
VISUAL_PROMPT_IMPACT
CONTINUITY_IMPACT
MULTI_SYSTEM_IMPACT

CRITICAL terms should default to impact assessment before modification.

---

# 136. ROLLBACK

Every released terminology change must be reversible.

Maintain:
previous_version:
previous_approved_form:
previous_status:
rollback_reason:

Do not overwrite the historical record.

---

# 137. APPROVAL SEPARATION

Research approval and production approval are separate.

A researcher may establish:

SOURCE_VERIFIED

without automatically establishing:

PRODUCTION_APPROVED.

Production approval requires consideration of:
- character
- scene
- translation
- pronunciation
- continuity
- subtitles
- adaptation

---

# 138. TWO-PERSON / SECOND-CHECK RULE

For CRITICAL terminology, a second independent validation is preferred before LOCKED status.

The second check should verify independently:
- source
- form
- meaning
- pronunciation where relevant
- translation
- status

Agreement should not be assumed merely because both reviewers used the same AI output.

---

# 139. AUTOMATED VALIDATION RULES

Where machine validation is implemented, check:

1. duplicate term_id
2. duplicate canonical form
3. duplicate source citation
4. missing language
5. missing status
6. missing confidence
7. unsupported canon claim
8. missing source for claimed direct quotation
9. missing translation classification
10. pronunciation-sensitive term without pronunciation status
11. locked term modified without change record
12. superseded term used as current
13. rejected term used in production
14. contradictory approved forms
15. unresolved collision
16. invalid Unicode
17. malformed transliteration
18. inconsistent character usage
19. inconsistent subtitle usage
20. dependency impact not assessed

---

# 140. VALIDATION FAILURE STATES

Machine or human QA should return:

PASS
PASS_WITH_WARNING
RESEARCH_REQUIRED
CONFLICT_REVIEW
PRODUCTION_REVIEW
REJECTED

Never convert a validation warning into PASS merely to unblock production.

---

# 141. RELEASE GATE

A terminology record can enter production only when:

identity_verified = TRUE
language_verified = TRUE
meaning_verified = TRUE
status_classified = TRUE
source_status_known = TRUE
translation_status_known = TRUE
risk_assessed = TRUE
continuity_checked = TRUE

For CRITICAL terms additionally:

pronunciation_checked = TRUE
conflicts_checked = TRUE
dependencies_checked = TRUE
approval_recorded = TRUE

If a requirement is genuinely not applicable, mark:

NOT_APPLICABLE

rather than leaving it blank.

---

# 142. BLANK-VS-UNKNOWN RULE

A blank field means:

NOT_YET_ENTERED

UNKNOWN means:

RESEARCHED_OR_ASSESSED_BUT_NOT_ESTABLISHED

NOT_APPLICABLE means:

FIELD DOES NOT APPLY

These states must never be conflated.

---

# 143. EVIDENCE AGE

For external sources that may change, optionally record:

evidence_date:
source_version:
last_verified_date:

A source-backed record should be rechecked when:
- the source changes
- an edition conflict is discovered
- a terminology conflict appears
- production requires a higher confidence level

---

# 144. RESEARCH STOP CONDITION

Research must not continue indefinitely without purpose.

A terminology investigation may be closed when:

- primary evidence is sufficiently established
- variants are documented
- uncertainty is explicitly recorded
- project decision is approved

OR:

- evidence remains unresolved
- all meaningful sources checked are recorded
- uncertainty is formally accepted

"Could search forever" is not a reason to leave a term permanently uncontrolled.

---

# 145. NO FALSE PRECISION

Do not create false precision such as:
- exact etymology when disputed
- exact ancient species when uncertain
- exact pronunciation when variants exist
- exact historical meaning when context is ambiguous
- exact geographical identification when evidence is incomplete

Use uncertainty explicitly.

---

# 146. TERM PRIORITY VS TERM FREQUENCY

A term can be:
HIGH_PRIORITY + LOW_FREQUENCY

Example:
A sacred name appearing once may be more important than a common household word appearing hundreds of times.

Validation priority must therefore depend on risk and significance, not frequency alone.

---

# 147. PRODUCTION-ONLY TERMS

Some terminology may exist only because the adaptation requires it.

These must be marked:

canon_status:
NOT_CANONICAL

adaptation_status:
PRODUCTION_CREATED

Such terms may be valid production choices but must never leak into research records as canonical terminology.

---

# 148. CONNECTIVE TERMINOLOGY

If a newly written connective scene requires terminology not directly present in the source:

record:
term_id:
source_basis:
adaptation_basis:
reason:
character:
relationship:
scene:
approval:

Do not retroactively label the term source-derived merely because the scene itself connects canonical events.

---

# 149. COMPOSITE TERMS

If a production combines terminology from multiple sources:

record:
source_a:
source_b:
combined_form:
reason_for_combination:
canon_status:
adaptation_status:

Composite terminology must remain identifiable as composite.

---

# 150. TERM REUSE RULE

An approved term may be reused without re-research only when:
- lexical identity is unchanged
- meaning is unchanged
- context is compatible
- pronunciation is unchanged
- character/relationship usage is compatible

Otherwise a new occurrence-level review is required.

---

# 151. CONTEXT OVERRIDE LIMIT

A scene-specific override must not alter:
- source history
- canonical spelling
- original source meaning

It may alter only the approved production realization within its documented scope.

---

# 152. NO CASCADING UNCONTROLLED EDITS

Changing one terminology record must not automatically cause:
- uncontrolled script rewriting
- uncontrolled translation rewriting
- uncontrolled character-language rewriting
- uncontrolled pronunciation rewriting
- uncontrolled subtitle rewriting
- uncontrolled prompt rewriting

All downstream changes must pass their own system gates.

---

# 153. TERMINOLOGY QA PRIORITY

When terminology conflicts with stylistic preference:

ACCURATE SOURCE
takes priority over
STYLE.

When exact source preservation conflicts with a production adaptation:

SOURCE FORM
must remain preserved,
while
PRODUCTION FORM
may be adapted and labelled.

When natural speech conflicts with an unsupported archaic expression:

NATURAL APPROVED LANGUAGE
takes priority.

Naturalness never authorizes fabricated historical terminology.

---

# 154. FINAL TERMINOLOGY AUDIT

Before a terminology system release, audit:

## Identity
[ ] Every critical term has unique identity.
[ ] Lexical entries are separated from occurrences.
[ ] Multiword expressions are controlled.
[ ] Inflected forms are correctly linked.

## Source
[ ] Source forms are preserved.
[ ] Source versions are identifiable.
[ ] Conflicts are recorded.
[ ] Negative claims are evidence-based.

## Language
[ ] Hindi/Awadhi/Sanskrit are not conflated.
[ ] Grammar is validated.
[ ] Transliteration is separated from source script.
[ ] Unicode integrity is checked.

## Meaning
[ ] Context is recorded.
[ ] Polysemy is controlled.
[ ] Translation equivalence is classified.
[ ] Semantic loss is documented.

## Production
[ ] Character usage is controlled.
[ ] Relationship usage is controlled.
[ ] Narration usage is controlled.
[ ] Ritual usage is controlled.
[ ] Subtitle usage is controlled.

## AI
[ ] AI output is never treated as evidence.
[ ] AI-generated forms remain unverified until independently validated.
[ ] No fabricated citations exist.

## Continuity
[ ] Locked terms are protected.
[ ] Superseded terms are tracked.
[ ] Dependencies are known.
[ ] Change impact is assessed.
[ ] Rollback is possible.

## QA
[ ] Critical terms have second-check where practical.
[ ] Validation failures are not hidden.
[ ] UNKNOWN/NOT_FOUND/NOT_APPLICABLE are distinguished.
[ ] Final release gate has passed.

---

# 155. ABSOLUTE HARDENED RULE

The terminology system must always preserve three separate truths:

1. WHAT THE SOURCE ACTUALLY SAYS.
2. WHAT THE TERM MEANS IN THAT SOURCE CONTEXT.
3. WHAT THE PRODUCTION CHOOSES TO SAY.

These three may be identical.

They may also legitimately differ.

When they differ, the difference must be visible, classified, justified, and traceable.

No production convenience may silently rewrite the source.

No source claim may silently become a production assumption.

No AI suggestion may silently become evidence.

No popular usage may silently become canon.

No translation may silently become the original.

No uncertainty may silently become certainty.

No locked terminology may silently change.

This is the final integrity boundary of the TERMINOLOGY system.
