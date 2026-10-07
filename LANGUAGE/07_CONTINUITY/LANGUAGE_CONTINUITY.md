# LANGUAGE CONTINUITY SYSTEM

## 1. SYSTEM IDENTITY

system_name:
LANGUAGE CONTINUITY SYSTEM

system_id:
LANGUAGE-07-CONTINUITY

version:
1.0

status:
MASTER PRODUCTION STANDARD

purpose:
This system is the authoritative continuity-control layer for all language-related elements of the RAMAYAN production.

Its purpose is to ensure that language remains internally consistent, canonically controlled, character-appropriate, relationship-appropriate, temporally coherent, linguistically accurate, pronunciation-consistent, and production-consistent across every scene, episode, narration layer, dialogue layer, ritual layer, subtitle layer, and downstream AI-production asset.

This file defines continuity rules.

It does NOT write:
- scripts
- dialogue
- narration
- rituals
- character profiles
- terminology definitions
- pronunciation dictionaries
- subtitles
- prompts

Those systems create or maintain their own content and consume continuity control from this system.

---

# 2. CORE CONTINUITY PRINCIPLE

Language continuity does NOT mean every character speaks identically.

The objective is:

CONSISTENCY WITHOUT HOMOGENIZATION.

A character must remain recognizably linguistically themselves while their language may legitimately change because of:

- relationship
- age
- status
- emotion
- location
- audience
- ritual context
- public/private context
- narrative role
- source quotation
- canonical event
- adaptation requirement

Every change must be intentional.

Unexplained drift is a continuity error.

---

# 3. WHAT LANGUAGE CONTINUITY CONTROLS

This system controls continuity of:

1. language identity
2. language hierarchy
3. vocabulary
4. terminology
5. names
6. titles
7. epithets
8. kinship terms
9. pronouns
10. honorifics
11. vocatives
12. grammatical register
13. sentence structure
14. character vocabulary fingerprints
15. character sentence fingerprints
16. emotional language
17. relationship language
18. social hierarchy
19. Sanskrit usage
20. Awadhi usage
21. Hindi usage
22. pronunciation
23. source-text wording
24. translation choices
25. adaptation choices
26. narration identity
27. narrator transitions
28. ritual language
29. recurring formulas
30. recurring phrases
31. terminology forms
32. subtitle terminology
33. TTS pronunciation
34. AI prompt terminology
35. language-specific performance instructions
36. temporal language consistency
37. knowledge continuity
38. cultural register
39. scene-specific language overrides
40. episode-to-episode continuity
41. version continuity
42. change propagation
43. continuity QA

---

# 4. LANGUAGE CONTINUITY IS MULTI-DIMENSIONAL

Continuity must be checked across:

CHARACTER
+
RELATIONSHIP
+
SCENE
+
EPISODE
+
SOURCE
+
TIME
+
LOCATION
+
EMOTION
+
SOCIAL CONTEXT
+
NARRATIVE CONTEXT
+
LANGUAGE
+
TERMINOLOGY
+
PRONUNCIATION
+
TRANSLATION
+
ADAPTATION

A term or linguistic behavior that is correct in one dimension may still be incorrect in another.

---

# 5. MASTER CONTINUITY CHAIN

The master language continuity chain is:

SOURCE
↓
SOURCE LANGUAGE
↓
SOURCE FORM
↓
TRANSLATION
↓
ADAPTATION
↓
CHARACTER
↓
RELATIONSHIP
↓
SCENE
↓
EMOTION
↓
DIALOGUE/NARRATION/RITUAL
↓
PRONUNCIATION
↓
SUBTITLE
↓
AUDIO/TTS
↓
PROMPT
↓
FINAL MEDIA

Every meaningful transformation must remain traceable.

---

# 6. CONTINUITY UNIT

The smallest continuity-controlled unit may be:

- word
- phrase
- name
- title
- epithet
- pronoun
- address form
- sentence
- dialogue unit
- narration unit
- ritual unit
- quotation
- translation unit
- pronunciation unit
- terminology occurrence

Each unit may have:

continuity_id:
source_id:
term_id:
character_id:
relationship_id:
scene_id:
episode_id:
language:
status:
version:

---

# 7. CONTINUITY BASELINE

Every major character requires a language baseline.

Baseline includes:

character_language:
primary_language:
secondary_languages:
source_languages:
register:
formality:
pronoun_preferences:
honorific_preferences:
vocative_preferences:
vocabulary_profile:
sentence_profile:
emotional_profile:
relationship_modulation:
ritual_language_profile:
sanskrit_usage:
awadhi_usage:
hindi_usage:
pronunciation_profile:
known_terms:
restricted_terms:
never_use_terms:
knowledge_boundary:

This baseline must be established before continuity comparison.

---

# 8. CHARACTER CONTINUITY

A character must remain linguistically recognizable across episodes.

Continuity checks:

- vocabulary
- sentence length
- sentence rhythm
- preferred grammatical constructions
- degree of directness
- politeness
- honorifics
- pronoun usage
- emotional expression
- questioning style
- command style
- disagreement style
- affection
- anger
- silence
- repetition
- metaphor frequency
- philosophical language
- Sanskrit frequency
- Awadhi frequency
- Hindi register
- terminology preference

A character may change.

The change must have a reason.

---

# 9. CHARACTER DEVELOPMENT VS CONTINUITY ERROR

Not every language change is an error.

Legitimate change may result from:

- maturation
- grief
- marriage
- new relationship
- change in status
- spiritual development
- conflict
- trauma
- realization
- increased authority
- reduced authority
- new environment
- ritual context
- narrative role

The system must distinguish:

INTENTIONAL_CHARACTER_DEVELOPMENT

from

UNINTENTIONAL_LANGUAGE_DRIFT.

---

# 10. CHARACTER LANGUAGE VERSIONING

Character language may evolve.

Record:

character_language_version:
effective_episode:
effective_scene:
change:
reason:
source_basis:
adaptation_basis:
approval:

Never overwrite the previous state.

Maintain historical language states.

---

# 11. AGE CONTINUITY

Language must remain compatible with character age.

Check:

- vocabulary complexity
- sentence complexity
- emotional expression
- social awareness
- formality
- knowledge
- relationship terminology
- authority
- confidence

A child must not suddenly use unexplained adult expert terminology.

An older character must not randomly adopt youthful modern speech.

Age changes may justify controlled linguistic development.

---

# 12. STATUS CONTINUITY

Language must remain compatible with social status.

Track:

- ruler
- royal family
- sage
- ascetic
- warrior
- servant
- devotee
- parent
- child
- spouse
- teacher
- student
- deity
- ordinary subject

Status does not automatically determine personality.

Personality and status must remain separate.

---

# 13. RELATIONSHIP CONTINUITY

Language must be checked against the relationship state at that exact point in the story.

Track:

relationship_start:
relationship_state:
relationship_change:
relationship_end:

Examples of state changes:

stranger
→ acquaintance
→ friend
→ trusted person
→ spouse
→ conflict
→ estrangement
→ reconciliation

Do not use a later relationship's language in an earlier scene.

---

# 14. RELATIONSHIP LANGUAGE VECTOR

For important relationships track:

speaker:
listener:
relationship:
status_difference:
emotional_closeness:
formality:
pronoun:
honorific:
vocative:
title:
epithet:
directness:
affection:
conflict_level:
public_private:
approved_language_state:

The vector must be evaluated at scene time, not globally.

---

# 15. BIDIRECTIONAL CONTINUITY

A relationship is not one-directional.

Track separately:

A → B

and

B → A

The same relationship may produce different language depending on:
- status
- personality
- age
- affection
- authority
- emotion
- public/private setting.

---

# 16. PRONOUN CONTINUITY

Pronouns require strict continuity.

Track:

speaker:
listener:
relationship:
pronoun:
verb_agreement:
formality:
emotional_state:
scene:
episode:
reason_for_change:

A pronoun change is significant.

Do not normalize it automatically.

---

# 17. PRONOUN CHANGE EVENTS

A change in pronoun may indicate:

- intimacy
- distance
- anger
- respect
- humiliation
- authority
- reconciliation
- emotional rupture
- public/private shift

Every significant unexpected change must be investigated.

Do not assume all pronoun changes are errors.

---

# 18. HONORIFIC CONTINUITY

Track continuity of:

- title
- honorific
- epithet
- kinship address
- respectful pronoun
- vocative

Check against:

HONORIFICS_AND_ADDRESS.md

A title change may be intentional.

An unexplained title change may alter perceived social hierarchy.

---

# 19. VOCATIVE CONTINUITY

Direct address is separate from third-person reference.

Track:

direct_address:
third_person_reference:
narration_reference:

Do not automatically replace one with another.

---

# 20. NAME CONTINUITY

Major names must remain consistent across:

- dialogue
- narration
- ritual
- subtitles
- prompts
- metadata
- audio/TTS
- continuity records

Variants may exist, but the approved form must be controlled.

---

# 21. EPITHET CONTINUITY

Epithets must remain context-sensitive.

Check:

- who uses the epithet
- when it is used
- why it is used
- whether it is source-derived
- emotional context
- ritual context
- narrative context

Do not distribute an epithet to every character simply because it exists in the terminology database.

---

# 22. TERMINOLOGY CONTINUITY

Every recurring production term must link to:

06_TERMINOLOGY/TERMINOLOGY.md

Check:

- spelling
- language
- meaning
- translation
- pronunciation
- grammatical form
- source status
- production status
- character usage
- subtitle form

The terminology system remains the terminology authority.

This continuity system checks whether approved terminology is being used consistently.

---

# 23. TERMINOLOGY CHANGE

If a master terminology record changes:

DO NOT silently rewrite every downstream occurrence.

Perform:

1. impact detection
2. occurrence identification
3. context review
4. character review
5. pronunciation review
6. subtitle review
7. script review
8. prompt review
9. audio review
10. continuity approval

---

# 24. SOURCE-TEXT CONTINUITY

Direct source quotations must remain stable.

Check:

- exact wording
- speaker
- listener
- source
- location
- edition
- poetic form
- language
- translation

A source quotation must never drift into an adapted quotation while retaining the label "direct quotation."

---

# 25. SOURCE VARIANT CONTINUITY

Different editions may contain variants.

Once the project selects a source form for a particular production context:

record:

selected_variant:
edition:
reason:
scope:

Do not switch editions mid-series without documenting the change.

---

# 26. TRANSLATION CONTINUITY

Recurring source concepts must maintain translation consistency unless context requires a different rendering.

Track:

source_term:
translation:
translation_type:
context:
scene:
episode:
reason_for_change:

A changed translation must be classified as:

intentional_contextual_change

or

continuity_error.

---

# 27. TRANSLATION MEMORY

Approved recurring translations should function as a project translation memory.

For each recurring source term:

source_form:
approved_translation:
alternative_translation:
allowed_contexts:
restricted_contexts:
reason:
source_basis:

Do not force one translation into contexts where it becomes inaccurate.

---

# 28. ADAPTATION CONTINUITY

Adapted language must remain consistent with its adaptation status.

If a line is:

DIRECT_CANONICAL
TRANSLATED_CANONICAL
SOURCE_DERIVED
ADAPTED_CANONICAL
CONNECTIVE
DIRECTORIAL
PRODUCTION_CREATED

that status must not change silently.

---

# 29. DIALOGUE CONTINUITY

Dialogue must remain consistent with:

- previous conversation
- previous knowledge
- unresolved questions
- previous promises
- previous terminology
- relationship state
- emotional state
- character objective
- source/adaptation status

A character must not speak as though they forgot something they clearly know unless:
- the narrative establishes forgetting
- the information was not actually known
- the dialogue is intentionally indirect
- the scene context changes what is being communicated.

---

# 30. CONVERSATIONAL MEMORY

Continuity must track important conversational facts.

For each scene:

known_before:
revealed_here:
learned_here:
unknown_after:
promised:
threatened:
requested:
refused:
agreed:
disputed:
unresolved:

This prevents dialogue from resetting character knowledge every scene.

---

# 31. KNOWLEDGE CONTINUITY

Distinguish:

WORLD_KNOWLEDGE
CHARACTER_KNOWLEDGE
AUDIENCE_KNOWLEDGE
NARRATOR_KNOWLEDGE

These are not interchangeable.

A narrator may know something a character does not.

The audience may know something a character does not.

A character must not suddenly use information they have not acquired.

---

# 32. KNOWLEDGE ACQUISITION EVENTS

Whenever a major character learns important information, record:

knowledge_event_id:
character:
information:
source:
scene:
episode:
time:
confidence:
knowledge_status:

Possible statuses:

UNKNOWN
RUMORED
SUSPECTED
BELIEVED
KNOWN
VERIFIED
REVEALED
MISUNDERSTOOD
FORGOTTEN
CORRECTED

This is critical for dialogue continuity.

---

# 33. BELIEF CONTINUITY

Knowing and believing are different.

Track:

fact:
character_belief:
belief_source:
belief_confidence:
belief_change:
reason:

A character may speak from a false belief without the script becoming factually wrong.

---

# 34. NARRATOR CONTINUITY

Narrators must maintain:

- identity
- knowledge scope
- narrative distance
- register
- vocabulary
- relationship with listener
- temporal position
- storytelling mode

For this project, the fixed architecture is:

TULSIDAS
→ SHIVA–SATI–PARVATI STORY
→ SHIVA + PARVATI
→ TULSIDAS HANDOFF
→ SHIVA
→ RAMA-KATHA

The handoff must not become ambiguous.

---

# 35. TULSIDAS CONTINUITY

Tulsidas narration must remain consistent with:

- narrator role
- narrative framing
- approved source/adaptation architecture
- linguistic register
- audience relationship
- knowledge scope

Tulsidas must not accidentally speak as though he is:
- Shiva
- an omniscient camera
- a modern narrator
- an unrelated character

---

# 36. SHIVA NARRATOR CONTINUITY

When Shiva becomes the in-world narrator:

He remains:

CHARACTER
+
NARRATOR
+
SPEAKER TO PARVATI

These layers must remain distinct.

Shiva's Rama-katha narration must remain compatible with:
- his knowledge
- his relationship with Parvati
- his spiritual identity
- the established narrative frame
- source/adaptation decisions.

---

# 37. NARRATOR HANDOFF CONTINUITY

Every narrator handoff must preserve:

- who is speaking
- why narration transfers
- who is listening
- linguistic register
- temporal frame
- narrative authority
- source/adaptation status

A narrator handoff must never happen merely through unexplained voice change.

---

# 38. NARRATION VS CHARACTER DIALOGUE

Continuity must prevent narration from accidentally adopting:
- another character's vocabulary
- another character's knowledge
- another character's emotional position
- modern commentary
- production explanation

Narration has its own continuity state.

---

# 39. RITUAL CONTINUITY

Ritual language must remain consistent with:

RITUAL_LANGUAGE.md

Track:
- ritual identity
- ritual sequence
- participants
- authority
- language
- mantra
- prayer
- blessing
- vow
- response
- repetition
- pronunciation
- gesture-linked language
- sacred terminology

Do not alter ritual formulas between takes/scenes/episodes without justification.

---

# 40. RITUAL STATE

A ritual may have a sequence.

Track:

ritual_started:
ritual_stage:
ritual_action:
spoken_formula:
participant:
ritual_completed:

A later scene must not behave as though an earlier ritual stage has not occurred.

---

# 41. PRONUNCIATION CONTINUITY

Pronunciation must remain stable across:

- actors
- TTS
- voice cloning
- narration
- dialogue
- ritual
- subtitles/phonetic guides
- episodes

Pronunciation changes must be classified as:

SOURCE_VARIANT
LANGUAGE_CHANGE
GRAMMATICAL_CHANGE
PERFORMANCE_VARIANT
INTENTIONAL_ADAPTATION
ERROR

---

# 42. PRONUNCIATION LOCK

Critical names and sacred terms may be locked.

A pronunciation lock requires:

term_id:
approved_pronunciation:
language:
source_basis:
pronunciation_basis:
scope:
version:

Any later variation requires review.

---

# 43. LANGUAGE-SWITCH CONTINUITY

Characters may switch among:
- Hindi
- Awadhi
- Sanskrit
- other approved languages

Every switch must have a contextual reason.

Possible reasons:
- quotation
- ritual
- source preservation
- audience
- relationship
- formal setting
- cultural context
- emotional state
- narration
- adaptation

Do not add language switching merely for aesthetic effect.

---

# 44. LANGUAGE SWITCH EVENT

Record:

switch_id:
character:
from_language:
to_language:
scene:
reason:
source_basis:
duration:
scope:
return_condition:

This prevents uncontrolled multilingual drift.

---

# 45. SANSKRIT CONTINUITY

Sanskrit usage must remain consistent with:

SANSKRIT.md

Check:
- grammatical correctness
- source status
- pronunciation
- context
- ritual status
- character knowledge
- quotation status

A character who uses Sanskrit in one context must not automatically use it everywhere.

---

# 46. AWADHI CONTINUITY

Awadhi usage must remain consistent with:

AWADHI.md

Check:
- source form
- dialect identity
- poetic form
- grammatical behavior
- pronunciation
- context
- adaptation status

Do not allow accidental Hindi drift to accumulate across episodes.

---

# 47. HINDI CONTINUITY

Hindi must remain consistent with:

HINDI.md

Check:
- register
- syntax
- agreement
- pronouns
- vocabulary
- Sanskritization
- modernism
- slang
- Hinglish
- formality

---

# 48. REGISTER CONTINUITY

Each character and scene should have a register state.

Possible values:

INTIMATE
PRIVATE
ORDINARY
RESPECTFUL
FORMAL
ROYAL
CEREMONIAL
RITUAL
SACRED
PUBLIC
COMMAND
CONFRONTATIONAL
GRIEVING
DEVOTIONAL
NARRATIVE

Register changes must be justified by context.

---

# 49. REGISTER TRANSITIONS

A character may move:

PRIVATE
→ PUBLIC

or:

CALM
→ ANGRY

or:

ORDINARY
→ RITUAL

These transitions may change language.

Continuity must verify that the transition is reflected linguistically.

---

# 50. EMOTIONAL CONTINUITY

Track emotional language across scenes.

Important emotional states may include:

calm
joy
devotion
affection
concern
fear
doubt
anger
grief
shame
determination
compassion
wonder
spiritual absorption

Do not reset emotional language to neutral at every scene boundary.

---

# 51. EMOTION STATE TRANSITIONS

Record:

previous_state:
trigger:
new_state:
language_effect:
scene:
episode:

Language effects may include:
- shorter sentences
- greater directness
- repetition
- silence
- reduced honorific distance
- stronger vocatives
- altered pronouns
- increased formality
- controlled speech

---

# 52. EMOTIONAL MEMORY

If a character has experienced a major emotional event, later language should reflect it where appropriate.

Do not require constant verbal references.

Continuity may appear through:
- hesitation
- avoidance
- changed address
- reduced warmth
- increased formality
- recurring vocabulary
- silence
- changed sentence structure

---

# 53. PUBLIC VS PRIVATE CONTINUITY

A character may speak differently in:

PRIVATE
PUBLIC
COURT
FAMILY
RITUAL
BATTLE
SAGE-CIRCLE
DIVINE_ENCOUNTER

A public/private language change is not automatically inconsistency.

The scene context must determine the correct register.

---

# 54. LOCATION CONTINUITY

Language may vary according to location.

Track:
location:
social_environment:
language_environment:
expected_register:

Do not invent regional dialect simply because the scene is geographically different.

Geographical language differences require evidence or approved adaptation.

---

# 55. TEMPORAL CONTINUITY

The language system must respect narrative chronology.

Prevent:
- future terminology appearing earlier
- later relationships appearing earlier
- later knowledge appearing earlier
- later titles appearing earlier
- later pronunciation conventions being applied retroactively
- later source/adaptation decisions being inserted into earlier scenes

---

# 56. EVENT CONTINUITY

Major canonical events may change language.

For every significant event:

event:
before_language_state:
event_effect:
after_language_state:

This allows character development without accidental drift.

---

# 57. FIRST-USE CONTROL

When a major term, title, epithet, relationship form, or language behavior first appears:

record:

first_use_episode:
first_use_scene:
first_use_character:
first_use_reason:
source_basis:

Later use should be checked against the established state.

---

# 58. LAST-USE CONTROL

For terms or relationships that cease being used:

record:

last_use_episode:
last_use_scene:
reason:
replacement:
continuity_effect:

A suddenly abandoned recurring term may indicate an unnoticed continuity break.

---

# 59. RECURRING PHRASE CONTROL

Repeated phrases require special attention.

A phrase repeated by a character may be:
- deliberate characterization
- ritual formula
- canonical repetition
- narrative motif
- accidental AI repetition

Track intentional recurrence.

Do not allow AI to create repetitive verbal habits that were never established.

---

# 60. CHARACTER CATCHPHRASE FIREWALL

Do not create artificial catchphrases.

A recurring phrase must have:
- source basis
- character basis
- narrative purpose
- approved recurrence

Otherwise repetition should be treated as possible AI drift.

---

# 61. VOCABULARY DRIFT DETECTION

Continuity QA should detect when a character suddenly begins using:

- unfamiliar terminology
- modern vocabulary
- slang
- English
- excessive Sanskrit
- excessive poetry
- philosophical language
- another character's signature vocabulary

A deviation is not automatically an error.

It must be reviewed against scene context.

---

# 62. CHARACTER COLLISION DETECTION

Characters must not become linguistically indistinguishable.

Compare:
- sentence length
- directness
- preferred vocabulary
- questioning
- command style
- emotional expression
- metaphor
- politeness
- philosophical density
- Sanskrit usage
- Awadhi usage

If two characters converge excessively, flag:

CHARACTER_VOICE_COLLISION

---

# 63. GENERIC MYTHOLOGICAL SPEECH DETECTION

Flag dialogue where many characters independently begin sounding like:

- generic wise sage
- generic divine being
- generic king
- generic mythological narrator

Each character must preserve their individual language fingerprint.

---

# 64. PHILOSOPHY DRIFT

A character who is not normally philosophical must not suddenly deliver long philosophical explanations without a contextual reason.

Flag:
- excessive abstract vocabulary
- unexplained wisdom statements
- repetitive moral conclusions
- generic spiritual monologues

---

# 65. POETRY DRIFT

Characters must not become continuously poetic simply because the project is mythological.

Poetic language requires:
- source basis
- character basis
- emotional basis
- ritual basis
- narrative basis
- deliberate adaptation

---

# 66. MODERN LANGUAGE DRIFT

Continuity QA must detect:

- slang
- internet language
- Gen-Z vocabulary
- corporate terminology
- modern relationship terminology
- modern psychological jargon
- modern political vocabulary
- casual English
- Hinglish
- contemporary memes

A single modern word can be intentional.

Intent must be documented.

---

# 67. KNOWLEDGE LEAK DETECTION

Flag a line when a character appears to know:

- future events
- hidden identities
- private conversations
- unseen events
- narrator-only information
- later discoveries

unless the source/adaptation explicitly establishes that knowledge.

---

# 68. NARRATOR KNOWLEDGE LEAK

Narrators must not accidentally inherit:
- audience speculation
- modern historical knowledge
- production knowledge
- future plot information
- character-only knowledge

unless the narrative architecture allows it.

---

# 69. SOURCE-ADAPTATION LEAK

A later adaptation decision must not be rewritten into earlier source records.

Examples:

SOURCE
must remain SOURCE.

ADAPTATION
must remain ADAPTATION.

Production convenience must never rewrite evidence.

---

# 70. TERMINOLOGY-PRONUNCIATION LINK

Every pronunciation-sensitive term must link:

term_id
→ approved_term
→ approved_pronunciation
→ language
→ source_basis
→ TTS_form
→ performance_form

Changing one should trigger a continuity check.

---

# 71. SUBTITLE CONTINUITY

Spoken language and subtitle language may differ.

But recurring concepts must remain aligned.

Check:
- names
- titles
- epithets
- terminology
- translations
- capitalization/transliteration policy
- source quotations
- repeated concepts

A subtitle must not silently introduce a different meaning.

---

# 72. AUDIO CONTINUITY

Audio/TTS systems must use the current approved pronunciation version.

If pronunciation changes:

flag:
AUDIO_REGENERATION_REQUIRED

Do not assume old audio remains valid.

---

# 73. PROMPT CONTINUITY

Image/video prompts must use current approved terminology for:

- character names
- titles
- clothing
- weapons
- places
- ritual objects
- culturally specific objects

A prompt can contain an outdated term even when the script is corrected.

Continuity QA must therefore include prompts.

---

# 74. RENDERED-ASSET CONTINUITY

If a terminology change affects already generated media:

record:

asset_id:
old_term:
new_term:
impact:
regeneration_required:
regeneration_status:

Do not silently leave contradictory final assets in the production.

---

# 75. CONTINUITY EXCEPTIONS

An exception may be intentional.

Required:

exception_id:
scope:
reason:
source_basis:
adaptation_basis:
start_scene:
end_scene:
approved_by:
version:

Exceptions must be bounded.

An exception without scope becomes uncontrolled drift.

---

# 76. SCENE OVERRIDE

Scene-specific language overrides are allowed.

They must specify:

scene:
character:
relationship:
language:
register:
term:
override:
reason:
scope:
start:
end:
approval:

A scene override must not rewrite the global character baseline.

---

# 77. EPISODE OVERRIDE

An episode may introduce temporary linguistic conditions.

Record:

episode:
reason:
affected_characters:
affected_terms:
affected_relationships:
start:
end:
approval:

The override must expire unless explicitly made permanent.

---

# 78. OVERRIDE PRECEDENCE

When rules conflict, use:

1. DIRECT VERIFIED SOURCE QUOTATION
2. LOCKED PROJECT SOURCE DECISION
3. SCENE-SPECIFIC CANONICAL CONTEXT
4. APPROVED CHARACTER LANGUAGE
5. APPROVED RELATIONSHIP STATE
6. APPROVED TERMINOLOGY
7. EPISODE OVERRIDE
8. SCENE OVERRIDE
9. GENERAL PRODUCTION RULE
10. GENERATIVE MODEL DEFAULT

Generative model behavior is always lowest authority.

---

# 79. CONTINUITY CONFLICT RESOLUTION

When two continuity records conflict:

1. identify both
2. compare timestamps/versions
3. compare authority
4. compare source
5. determine whether both are contextually valid
6. identify affected assets
7. select or preserve both if context requires
8. document decision
9. propagate approved change
10. re-run dependent QA

Never silently choose the most recent record.

---

# 80. CONTINUITY ERROR CLASSES

Classify errors:

C0:
NO_ERROR

C1:
TYPOGRAPHICAL

C2:
TERMINOLOGY

C3:
PRONUNCIATION

C4:
GRAMMAR

C5:
REGISTER

C6:
CHARACTER_VOICE

C7:
RELATIONSHIP

C8:
KNOWLEDGE

C9:
SOURCE

C10:
TRANSLATION

C11:
RITUAL

C12:
NARRATOR

C13:
TEMPORAL

C14:
LANGUAGE_SWITCH

C15:
SUBTITLE

C16:
AUDIO

C17:
PROMPT

C18:
MULTI_SYSTEM

C19:
CANONICAL_CRITICAL

Higher severity requires broader propagation review.

---

# 81. SEVERITY

LOW:
minor inconsistency with no meaning impact

MEDIUM:
noticeable inconsistency affecting realism or characterization

HIGH:
meaning, relationship, pronunciation, source, or continuity impact

CRITICAL:
canonical distortion, sacred-language error, major character-knowledge violation, major relationship distortion, or repeated systemic language failure

---

# 82. CONTINUITY TICKET

Every confirmed continuity error should record:

continuity_error_id:
severity:
error_class:
episode:
scene:
character:
term:
previous_state:
current_state:
expected_state:
evidence:
root_cause:
affected_assets:
correction:
approval:
status:
version:

---

# 83. ROOT-CAUSE ANALYSIS

Do not merely repair the visible line.

Determine whether the error originated in:

SOURCE
TRANSLATION
TERMINOLOGY
CHARACTER_LANGUAGE
RELATIONSHIP_LANGUAGE
DIALOGUE
NARRATION
RITUAL
PRONUNCIATION
SUBTITLE
PROMPT
TTS
CONTINUITY_DATABASE
AI_GENERATION

Correct the upstream cause where necessary.

---

# 84. CASCADING ERROR CONTROL

A continuity error may have propagated.

When an error is found:

1. identify origin
2. identify all occurrences
3. identify dependent assets
4. identify downstream copies
5. correct master source
6. correct approved dependent records
7. regenerate affected production assets
8. re-run continuity QA

Fixing only the first visible occurrence is insufficient.

---

# 85. CONTINUITY SNAPSHOT

Before major production milestones, create a language continuity snapshot containing:

- terminology version
- character language versions
- relationship versions
- pronunciation version
- translation version
- narration version
- ritual version
- episode language version
- approved overrides
- known unresolved issues

This establishes a reproducible production state.

---

# 86. REPRODUCIBILITY

A scene should be reproducible from its approved language state.

Given the same:

- source
- character
- relationship
- episode
- scene
- language version
- terminology version
- pronunciation version
- adaptation state

the production system should produce the same approved linguistic constraints.

---

# 87. NO HIDDEN STATE

Important continuity decisions must not exist only:
- inside an AI prompt
- in a creator's memory
- in an untracked chat
- in a temporary note
- in a generated model response

They must be recorded in the appropriate project system.

---

# 88. CONTINUITY REGISTRY

Each continuity record should be addressable through:

continuity_id:
episode_id:
scene_id:
character_id:
relationship_id:
term_id:
source_id:
version:

This allows exact retrieval rather than relying on free-text search.

---

# 89. MACHINE-VALIDATABLE FIELDS

Where machine validation is implemented, prefer controlled values for:

language:
register:
status:
canon_status:
adaptation_status:
confidence:
severity:
error_class:
approval_status:
version:
relationship_state:

Free text may supplement controlled values but should not replace them where validation depends on them.

---

# 90. AUTOMATED CONTINUITY TESTS

A continuity checker should test at minimum:

1. name consistency
2. title consistency
3. epithet consistency
4. terminology consistency
5. pronunciation consistency
6. subtitle consistency
7. pronoun consistency
8. honorific consistency
9. relationship consistency
10. character knowledge consistency
11. narrator identity consistency
12. source quotation consistency
13. translation consistency
14. language-switch consistency
15. register consistency
16. emotional-state continuity
17. ritual-state continuity
18. temporal continuity
19. episode continuity
20. version consistency
21. override validity
22. superseded-record usage
23. rejected-record usage
24. dependency impact
25. unresolved conflict usage

---

# 91. AUTOMATED CHARACTER VOICE TEST

For each major character, compare current material against their approved baseline.

Flag significant deviation in:
- vocabulary distribution
- sentence length
- directness
- question frequency
- command frequency
- honorific behavior
- Sanskrit usage
- Awadhi usage
- metaphor frequency
- philosophical density
- emotional expression
- recurring terminology

Statistical deviation is a FLAG, not automatic proof of error.

Human review remains required.

---

# 92. AUTOMATED PRONOUN TEST

Check:

speaker
+
listener
+
relationship_state
+
scene_context
+
approved_pronoun

Flag unexpected changes.

Do not auto-correct.

Human/contextual review is required because pronoun changes may intentionally encode emotion or power.

---

# 93. AUTOMATED TERMINOLOGY TEST

For every production term:

current_form
vs
approved_master_form

If mismatch:

TERM_VARIANT_DETECTED

Then determine:
- valid source variant
- approved contextual variant
- scene override
- subtitle variant
- typo
- continuity error

---

# 94. AUTOMATED LANGUAGE TEST

Detect unexpected language transitions.

Example:

Hindi
→ Sanskrit

Flag unless:
- quotation
- ritual
- source preservation
- approved scene condition
- character-specific behavior

Likewise:

Awadhi
→ modern Hindi

must be reviewed when the source form is supposed to be preserved.

---

# 95. AUTOMATED MODERNISM TEST

Flag newly introduced:
- slang
- English
- modern terminology
- internet expressions
- modern psychology
- modern bureaucracy
- contemporary relationship terms

Flagging is not rejection.

Context determines final status.

---

# 96. CONTINUITY DASHBOARD DATA

The system should be able to report:

total_terms_checked:
critical_terms:
unresolved_terms:
character_voice_flags:
pronoun_flags:
honorific_flags:
translation_flags:
pronunciation_flags:
source_flags:
relationship_flags:
knowledge_flags:
narrator_flags:
ritual_flags:
subtitle_flags:
audio_flags:
prompt_flags:
open_errors:
critical_errors:
locked_items:
pending_changes:

---

# 97. CONTINUITY HEALTH

Overall language continuity should be classified:

GREEN:
no unresolved critical issues

YELLOW:
non-critical issues remain

ORANGE:
high-impact issues require correction

RED:
critical continuity failure blocks production

A production episode should not be marked FINAL while critical language continuity errors remain unresolved.

---

# 98. PRE-PRODUCTION CONTINUITY GATE

Before writing an episode:

- character baseline exists
- relationship states exist
- terminology dependencies exist
- source language is established
- pronunciation requirements identified
- narrator identity established
- language architecture established
- known prior continuity loaded

---

# 99. PRE-RECORDING CONTINUITY GATE

Before recording/TTS:

- final dialogue approved
- terminology approved
- pronunciation approved
- names/titles locked
- character language checked
- relationship state checked
- ritual language checked
- subtitle terminology prepared
- language version frozen for recording

---

# 100. PRE-RENDER CONTINUITY GATE

Before final rendering:

- audio uses current pronunciation
- subtitles use current terminology
- prompts use current terminology
- scene language state matches approved script
- narrator identity correct
- no superseded terminology remains
- no rejected terminology remains
- no unresolved critical continuity issue remains

---

# 101. POST-RENDER CONTINUITY GATE

After rendering:

- spoken terminology checked
- pronunciation checked
- subtitles checked
- narrator handoff checked
- recurring names checked
- titles/epithets checked
- language switching checked
- audio/subtitle alignment checked
- known continuity errors rechecked

Generated media is part of continuity QA.

---

# 102. EPISODE HANDOFF

Before beginning the next episode, export:

- active character language states
- active relationship states
- active terminology version
- active pronunciation version
- active translation memory
- active narrator state
- active ritual states
- unresolved issues
- approved exceptions
- locked decisions
- recent language developments

The next episode must inherit the approved state.

---

# 103. EPISODE RESET FIREWALL

An episode must NOT reset:

- character vocabulary
- relationship state
- knowledge
- terminology
- pronunciation
- honorifics
- unresolved conflicts
- emotional consequences

unless the narrative explicitly changes them.

---

# 104. SEASON-LEVEL CONTINUITY

Continuity must survive:
- episode boundaries
- production pauses
- model changes
- voice changes
- translation revisions
- script revisions
- terminology revisions
- prompt revisions

A new AI model must consume the current continuity state rather than recreate it from memory.

---

# 105. MODEL-SWITCH FIREWALL

Changing:
- LLM
- translation model
- TTS model
- image model
- video model

must NOT change language continuity automatically.

The model is a production tool.

The project continuity state remains authoritative.

---

# 106. REGENERATION FIREWALL

If a scene is regenerated by AI:

the regeneration must consume:
- current character language baseline
- current relationship state
- current terminology
- current source status
- current translation status
- current pronunciation
- current scene override
- current continuity snapshot

Regeneration must not reset linguistic history.

---

# 107. RANDOMNESS CONTROL

Where generative systems introduce variation:

- temperature/randomness should not alter locked terminology
- random paraphrasing must not alter canonical quotations
- random synonym substitution must not alter controlled terms
- random pronunciation must not alter locked pronunciations

Creative variation occurs only inside approved boundaries.

---

# 108. CANONICAL QUOTATION LOCK

Direct canonical quotations must be locked against:
- paraphrase
- synonym replacement
- grammatical modernization
- punctuation changes that affect meaning
- accidental translation
- AI rewriting

If adapted, the record must change status explicitly.

---

# 109. ADAPTED QUOTATION CONTROL

An adapted canonical line must preserve its relationship to the source.

Record:

source_text:
adapted_text:
change_type:
meaning_preserved:
meaning_changed:
reason:
approval:

Never call an adapted line "exact quotation."

---

# 110. LANGUAGE CONTINUITY VS STORY CONTINUITY

This system controls language continuity.

It does not independently decide:
- whether an event happened
- chronology of the entire story
- character biography
- visual continuity
- costume continuity

It may flag language consequences of those systems.

The owning system remains authoritative for non-language facts.

---

# 111. CROSS-SYSTEM AUTHORITY

When a language continuity issue concerns another system:

LANGUAGE CONTINUITY
detects and coordinates.

The relevant owning system decides its domain.

Examples:

Terminology:
06_TERMINOLOGY

Pronunciation:
02_LANGUAGE_RULES/PRONUNCIATION.md

Character language:
03_CHARACTER_LANGUAGE/CHARACTER_LANGUAGE.md

Honorifics:
03_CHARACTER_LANGUAGE/HONORIFICS_AND_ADDRESS.md

Relationship language:
03_EPISODES/EPISODE_01/RELATIONSHIPS/RELATIONSHIP_LANGUAGE.md

Source:
04_SOURCE_TEXT

Translation/adaptation:
04_SOURCE_TEXT/TRANSLATION_AND_ADAPTATION.md

Dialogue:
05_SCRIPT/DIALOGUE.md

Narration:
05_SCRIPT/NARRATION.md

Ritual:
05_SCRIPT/RITUAL_LANGUAGE.md

Continuity:
THIS SYSTEM

---

# 112. AUTHORITY CONFLICT

When another system conflicts with language continuity:

Do not silently overwrite either record.

Create:

CONTINUITY_CONFLICT

Record:
system_a:
system_b:
conflict:
authority:
resolution:
affected_assets:
approval:

---

# 113. CONTINUITY DOES NOT CREATE CANON

A repeated production choice does not become canonical merely because it has been used for many episodes.

Repeated adaptation remains adaptation.

Continuity preserves consistency.

It does not manufacture authority.

---

# 114. CONTINUITY DOES NOT CORRECT SOURCE

If a source contains a genuine variant, continuity does not "fix" it into the preferred production form.

It preserves:
- source form
- selected production form
- relationship between them

---

# 115. CONTINUITY DOES NOT FORCE UNIFORMITY

The following may legitimately vary:

- pronouns
- titles
- epithets
- sentence length
- vocabulary
- Sanskrit usage
- Awadhi usage
- register
- emotional intensity
- directness

provided the variation has contextual justification.

---

# 116. CONTINUITY DOES NOT FORBID CHARACTER GROWTH

A character may linguistically evolve.

The system must preserve:

BEFORE
→ TRIGGER
→ CHANGE
→ AFTER

This turns change into documented development rather than accidental drift.

---

# 117. CONTINUITY REVIEW METHOD

For every important scene compare:

PREVIOUS_STATE
CURRENT_STATE
EXPECTED_STATE
CONTEXT
CHANGE_REASON
SOURCE_BASIS
ADAPTATION_BASIS

Then classify:

CONSISTENT
INTENTIONAL_CHANGE
EXCEPTION
UNCERTAIN
ERROR

---

# 118. CONTINUITY REVIEW ORDER

Review in this order:

1. source
2. chronology
3. character identity
4. relationship
5. knowledge
6. language
7. terminology
8. register
9. pronunciation
10. dialogue/narration/ritual
11. subtitles
12. audio
13. prompts
14. rendered media

This prevents downstream symptoms from being mistaken for root causes.

---

# 119. CONTINUITY REVIEW FREQUENCY

Continuity should be checked:

- after source changes
- after terminology changes
- after character-language changes
- after relationship changes
- after translation changes
- after script revisions
- before recording
- before rendering
- after rendering
- before episode lock
- before season lock

---

# 120. CONTINUITY LOCK

An episode may be LANGUAGE_CONTINUITY_LOCKED only when:

source_state_locked = TRUE
character_language_locked = TRUE
relationship_state_locked = TRUE
terminology_locked = TRUE
translation_state_locked = TRUE
pronunciation_state_locked = TRUE
narration_state_locked = TRUE
ritual_state_locked = TRUE
subtitle_state_checked = TRUE
critical_errors = 0

Warnings may remain only when explicitly accepted.

---

# 121. ACCEPTED EXCEPTION

An unresolved issue may be accepted only if:

issue:
risk:
reason:
decision:
scope:
approval:
future_review_required:

Accepted exceptions must never be confused with errors that were overlooked.

---

# 122. CONTINUITY AUDIT TRAIL

Every meaningful continuity decision should preserve:

who:
what:
when:
why:
based_on:
affected:
approved:
version:

Do not rely on undocumented memory.

---

# 123. CONTINUITY BACKUP

Critical continuity records should be versioned and backed up with the project.

Loss of continuity metadata can cause:
- inconsistent regeneration
- pronunciation drift
- terminology drift
- character voice drift
- relationship errors
- subtitle mismatch

Therefore continuity data is production-critical.

---

# 124. FINAL LANGUAGE CONTINUITY AUDIT

Before final approval, verify:

## Character
[ ] Every major character has a stable language baseline.
[ ] Character evolution is documented.
[ ] No unexplained voice collision exists.
[ ] No generic mythological voice has replaced individuality.

## Relationship
[ ] Relationship state is correct at every scene.
[ ] Pronouns are contextually correct.
[ ] Honorifics are contextually correct.
[ ] Vocatives are controlled.
[ ] Public/private differences are justified.

## Knowledge
[ ] No future knowledge leaks backward.
[ ] Character beliefs remain coherent.
[ ] Information acquisition is traceable.
[ ] Narrator knowledge remains distinct.

## Language
[ ] Hindi remains controlled.
[ ] Awadhi remains distinct.
[ ] Sanskrit remains controlled.
[ ] Language switching is justified.
[ ] Register changes are justified.
[ ] Modernism drift is controlled.

## Terminology
[ ] Master terminology is respected.
[ ] Variants are intentional.
[ ] Superseded forms are not accidentally used.
[ ] Critical terms remain locked.

## Source
[ ] Canonical quotations remain exact.
[ ] Source variants remain identifiable.
[ ] Adaptations remain labelled.
[ ] Translation changes are traceable.

## Pronunciation
[ ] Names remain consistent.
[ ] Sacred terms remain consistent.
[ ] TTS uses current pronunciation.
[ ] Performance pronunciation matches approved records.

## Narration
[ ] Tulsidas remains Tulsidas.
[ ] Shiva remains Shiva when he becomes the in-world narrator.
[ ] Handoffs are clear.
[ ] Narrator knowledge is controlled.

## Ritual
[ ] Ritual language remains consistent.
[ ] Ritual sequence remains consistent.
[ ] Sacred formulas are controlled.
[ ] No invented sacred language appears.

## Production
[ ] Dialogue uses current language state.
[ ] Narration uses current language state.
[ ] Subtitles use current language state.
[ ] Audio uses current pronunciation state.
[ ] Prompts use current terminology.
[ ] Existing rendered assets have been assessed after changes.

---

# 125. FINAL CONTINUITY STANDARD

The purpose of language continuity is NOT to make every scene sound the same.

It is to make every scene sound like it belongs to the SAME WORLD, SAME STORY, SAME CHARACTER HISTORY, SAME RELATIONSHIP HISTORY, SAME SOURCE ARCHITECTURE, AND SAME PRODUCTION.

A character may change.

A relationship may change.

Emotion may change.

Register may change.

Pronouns may change.

Terminology may change.

Language may change.

But every meaningful change must have a traceable reason.

The system therefore follows:

CONSISTENCY
WITHOUT
HOMOGENIZATION

CHANGE
WITHOUT
DRIFT

ADAPTATION
WITHOUT
CANONICAL CONFUSION

NATURALNESS
WITHOUT
MODERN ANACHRONISM

SOURCE FIDELITY
WITHOUT
MECHANICAL SPEECH

CHARACTER DIFFERENTIATION
WITHOUT
LINGUISTIC CHAOS

---

# 126. ABSOLUTE RULES

1. Never allow unexplained language drift.
2. Never reset character language at an episode boundary.
3. Never reset relationship language without a narrative reason.
4. Never reset character knowledge.
5. Never let terminology drift from the master terminology system.
6. Never silently alter a canonical quotation.
7. Never convert adaptation into canon.
8. Never allow AI regeneration to erase continuity state.
9. Never allow a new AI model to become the continuity authority.
10. Never allow pronunciation to drift silently.
11. Never allow subtitles to silently change approved meaning.
12. Never allow prompts to use obsolete critical terminology.
13. Never allow future knowledge to leak backward.
14. Never allow narrator knowledge to leak into characters.
15. Never allow character knowledge to leak into narrators.
16. Never allow one character's linguistic fingerprint to overwrite another's.
17. Never use generic mythological language as a substitute for character identity.
18. Never treat every linguistic variation as an error.
19. Never treat every variation as acceptable without contextual review.
20. Never erase source variants.
21. Never erase adaptation history.
22. Never silently resolve continuity conflicts.
23. Never fix downstream symptoms without investigating the upstream cause.
24. Never delete historical continuity states.
25. Never modify locked continuity without change control.
26. Never leave critical continuity decisions only inside an AI prompt.
27. Never use popularity as proof of canonical correctness.
28. Never use model confidence as evidence.
29. Never sacrifice source truth for stylistic consistency.
30. Never sacrifice natural human speech merely to preserve superficial uniformity.
31. Never let continuity become a mechanism for inventing canon.
32. Every important language change must be traceable.
33. Every critical continuity error must be resolved before final lock.
34. UNKNOWN remains UNKNOWN until evidence establishes otherwise.
35. The continuity record must always distinguish SOURCE, PRODUCTION DECISION, AND CHARACTER USAGE.

---

# 127. FINAL SYSTEM GATE

A language state is production-valid only when:

SOURCE IS CONTROLLED
AND
CHARACTER IS CONTROLLED
AND
RELATIONSHIP IS CONTROLLED
AND
KNOWLEDGE IS CONTROLLED
AND
TERMINOLOGY IS CONTROLLED
AND
REGISTER IS CONTROLLED
AND
PRONUNCIATION IS CONTROLLED
AND
TRANSLATION IS CONTROLLED
AND
NARRATION IS CONTROLLED
AND
RITUAL LANGUAGE IS CONTROLLED
AND
SUBTITLES ARE ALIGNED
AND
AUDIO IS ALIGNED
AND
PROMPTS ARE ALIGNED
AND
NO UNRESOLVED CRITICAL CONTINUITY ERROR EXISTS.

If any critical dependency is uncontrolled, the language state is NOT FINAL.

The goal is not merely linguistic consistency.

The goal is a continuous linguistic reality across the entire RAMAYAN production.
