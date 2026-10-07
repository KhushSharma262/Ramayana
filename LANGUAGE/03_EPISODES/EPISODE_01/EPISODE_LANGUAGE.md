# EPISODE LANGUAGE — EPISODE 01

## SYSTEM IDENTITY

system_name:
  EPISODE_LANGUAGE

system_scope:
  Complete language architecture and control for Episode 01

system_level:
  episode_level

system_role:
  Master integration layer between canonical source material, narration,
  scenes, characters, relationships, dialogue, pronunciation, adaptation,
  continuity, subtitles, AI generation, and language QA.

primary_spoken_language:
  Hindi

secondary_spoken_languages:
  Awadhi
  Sanskrit

primary_textual_foundation:
  Ramcharitmanas

project_source_priority:
  Ramcharitmanas-first

status:
  MASTER_EPISODE_LANGUAGE_CONTROLLER

---

# 01. PURPOSE

EPISODE_LANGUAGE.md controls the language behavior of the complete episode.

It answers:

- What language is used in this episode?
- Why is that language used?
- Who is speaking?
- To whom?
- In what relationship?
- In what situation?
- At what point in the episode?
- What source supports the language?
- Is the line canonical, translated, adapted, or newly written?
- What register is appropriate?
- What vocabulary is appropriate?
- What pronunciation is required?
- What emotional state affects delivery?
- What narration layer is active?
- What language changes occur between scenes?
- What must remain continuous?
- What must never be invented?
- What must be checked before approval?

This file is the episode-level integration authority.

It does not replace:

LANGUAGE_SYSTEM.md
HINDI.md
AWADHI.md
SANSKRIT.md
PRONUNCIATION.md
CHARACTER_LANGUAGE.md
HONORIFICS_AND_ADDRESS.md
RELATIONSHIP_LANGUAGE.md

Those systems provide specialized rules.

This file determines how they operate together inside Episode 01.

---

# 02. SYSTEM HIERARCHY

Language decisions must follow this hierarchy:

01. Canonical source
02. Approved project source interpretation
03. Approved character identity
04. Approved relationship state
05. Episode context
06. Scene context
07. Emotional state
08. Address and honorific rules
09. Pronunciation rules
10. Adaptation requirements
11. Production requirements

Production convenience must never override established canonical or approved
language constraints without an explicit adaptation decision.

---

# 03. NON-INVENTION RULE

Unknown information remains unknown.

The system must never invent:

- quotations
- canonical dialogue
- canonical narration
- Sanskrit verses
- Awadhi verses
- meanings
- etymologies
- historical speech patterns
- dialect features
- pronunciation
- relationship language
- honorifics
- titles
- epithets
- source attribution
- theological claims
- character language traits

merely because they appear plausible.

If evidence is unavailable:

source_status:
  unknown

or:

source_status:
  uncertain

must be used.

---

# 04. EPISODE LANGUAGE PROFILE

Every episode must maintain a master profile.

Required fields:

episode_id:
episode_title:
episode_language_version:

primary_spoken_language:
secondary_spoken_languages:
primary_source_language:
primary_textual_source:

narration_mode:
dialogue_mode:
poetry_mode:
ritual_language_mode:

overall_register:
overall_accessibility:
overall_formality:

historical_language_policy:
modern_language_policy:

adaptation_level:
canonical_density:
new_dialogue_density:

pronunciation_standard:
subtitle_standard:

approval_state:
version:
last_reviewed:

---

# 05. EPISODE LANGUAGE BASELINE

Episode 01 must establish a stable linguistic baseline.

Baseline includes:

- grammatical standard
- vocabulary standard
- politeness standard
- sentence complexity
- accessibility
- Sanskrit density
- Awadhi usage
- English usage
- emotional intensity
- poetic density
- narration style
- dialogue realism
- cultural dignity

The baseline must remain stable unless a scene-specific reason justifies deviation.

---

# 06. LANGUAGE IS NOT ONE UNIFORM VOICE

Episode language must never make every character sound identical.

The episode contains multiple linguistic layers:

episode_baseline
+
character_voice
+
relationship_behavior
+
scene_context
+
emotional_state
+
narrative_function
+
source_language
+
ritual_context

The final line is the result of their interaction.

---

# 07. LANGUAGE DECISION OBJECT

Every production dialogue or narration unit should conceptually resolve to:

language_id:
episode_id:
scene_id:
sequence_id:
speaker_id:
listener_id:
relationship_id:
narrator_id:

language:
script:
register:
formality:

source_type:
source_reference:
source_text:
translation_status:
adaptation_status:

character_voice_state:
relationship_state:
emotional_state:
knowledge_state:

pronunciation_status:
subtitle_status:
continuity_status:
qa_status:
approval_state:

---

# 08. LANGUAGE UNIT TYPES

Every language unit must be classified as one of:

DIRECT_CANONICAL_QUOTATION
TRANSLATED_CANONICAL_QUOTATION
CANONICAL_NARRATION
SOURCE_DERIVED_DIALOGUE
SOURCE_DERIVED_NARRATION
ADAPTED_CANONICAL_DIALOGUE
ADAPTED_CANONICAL_NARRATION
NEW_CONNECTIVE_DIALOGUE
NEW_CONNECTIVE_NARRATION
DIRECTORIAL_LANGUAGE
RITUAL_TEXT
MANTRA
PRAYER
CHANT
VOCATIVE
EXCLAMATION
NONVERBAL_VOCALIZATION
SILENCE
OTHER_APPROVED

Do not blur these categories.

---

# 09. SOURCE TRACEABILITY

Every canonical or source-derived language unit must retain:

source_name:
source_section:
source_reference:
source_language:
original_text:
translation:
translation_type:
source_classification:
edition_or_version:
confidence:

Where exact citation is unavailable:

citation_status:
  unresolved

Do not fabricate references.

---

# 10. CANONICAL TEXT PRESERVATION

If an original canonical passage is used:

original wording must be preserved according to the approved source edition.

Do not silently:

- modernize
- paraphrase
- shorten
- combine
- reorder
- replace
- embellish
- remove theological meaning

If adaptation is necessary:

adaptation_status:
  adapted

must be recorded.

---

# 11. TRANSLATION LAYERS

Translations must remain separate.

Required conceptual layers:

ORIGINAL
LITERAL
CONTEXTUAL
PERFORMANCE
SCREENPLAY

The final screenplay version must not overwrite the original.

Translation must preserve:

meaning
speaker
listener
tone
relationship
cultural meaning
theological meaning
emotional intent

---

# 12. TRANSLATION PROHIBITIONS

Never translate:

- sacred terminology
- names
- epithets
- ritual terminology
- philosophical concepts
- culturally specific expressions

into misleading modern equivalents merely for accessibility.

Accessibility must not destroy meaning.

---

# 13. HINDI EPISODE STANDARD

Hindi is the primary spoken language.

Episode Hindi must be:

- grammatically correct
- dignified
- natural
- performable
- emotionally believable
- culturally appropriate
- understandable
- non-modernistic unless justified
- non-slang
- non-robotic
- non-machine-translated

Avoid:

- unnecessary English
- social-media Hindi
- Gen-Z vocabulary
- corporate language
- casual internet speech
- forced Sanskritization
- artificial "mythological" Hindi
- modern Bollywood phrasing where inappropriate

---

# 14. HINDI ACCESSIBILITY

Accessibility means:

clear syntax
+
appropriate vocabulary
+
natural sentence length
+
contextual explanation

Accessibility does not mean:

slang
+
modern idioms
+
simplified sacred terminology
+
childish language

---

# 15. AWADHI EPISODE POLICY

Awadhi must remain distinct from Hindi.

Awadhi may appear when justified by:

- Ramcharitmanas quotation
- poetic source material
- culturally appropriate performance
- source-derived passage
- approved adaptation

Do not manufacture Awadhi merely to make the episode sound "old."

Do not write Hindi with artificial village pronunciation and label it Awadhi.

---

# 16. SANSKRIT EPISODE POLICY

Sanskrit may appear when justified by:

- canonical quotation
- mantra
- ritual
- prayer
- invocation
- sacred declaration
- character identity
- source-specific language
- approved traditional usage

Sanskrit must not be inserted merely to make dialogue sound divine or ancient.

No invented Sanskrit.

No fake Sanskrit.

No unverified quotations.

---

# 17. LANGUAGE SWITCHING

A language switch must have a reason.

Possible reasons:

source quotation
ritual
prayer
mantra
poetry
character identity
narrative transition
formal declaration
spiritual context
canonical requirement

Every significant switch should record:

previous_language:
new_language:
reason:
source_basis:
duration:
return_condition:

---

# 18. CODE-SWITCHING

Modern Hindi-English code-switching is prohibited unless explicitly justified.

Words from another language may appear when:

- culturally established
- technically necessary
- canonical
- proper noun
- source-derived
- production-approved

Every unnecessary English word should be removed.

---

# 19. REGISTER SYSTEM

Episode language may use:

SACRED
RITUAL
ROYAL
COURTLY
FORMAL
RESPECTFUL
FAMILIAL
INTIMATE
PRIVATE
PUBLIC
MARTIAL
URGENT
GRIEVING
DEVOTIONAL
PHILOSOPHICAL
ORDINARY
NARRATIVE

Register must be determined by scene and relationship.

No single register applies to the entire episode.

---

# 20. REGISTER TRANSITION

A register change must have a trigger.

Possible triggers:

arrival_of_authority
departure_of_authority
private_conversation
public_announcement
ritual_start
ritual_end
emotional_escalation
emotional_deescalation
danger
revelation
grief
marriage
death
divine_appearance
narration_handoff

Unexpected register changes must be flagged.

---

# 21. CHARACTER LANGUAGE INTEGRATION

The individual character profile remains authoritative for:

- vocabulary
- sentence construction
- emotional reaction
- question style
- command style
- argument style
- rudeness
- affection
- silence
- humor
- information release
- personal speech habits

Episode context may modify expression.

It must not erase character identity.

---

# 22. RELATIONSHIP LANGUAGE INTEGRATION

Relationship language determines:

- interaction behavior
- relational formality
- trust
- affection
- authority
- conflict
- vulnerability
- information sharing
- public/private behavior
- relationship memory

It must operate together with character voice.

Character voice and relationship behavior must never be merged into one generic
voice.

---

# 23. ADDRESS INTEGRATION

Address behavior must be controlled by:

HONORIFICS_AND_ADDRESS.md

The episode layer may select the appropriate approved address state.

It may not invent a new address form because it sounds appropriate.

Every important address decision must be compatible with:

speaker
listener
relationship
status
emotion
context
source
public/private setting

---

# 24. EMOTIONAL LANGUAGE INTEGRATION

Emotion modifies:

- vocabulary
- sentence length
- directness
- repetition
- hesitation
- interruption
- silence
- question frequency
- command intensity
- politeness
- metaphor
- explicitness

Emotion does not automatically change:

- character identity
- relationship
- social hierarchy
- language
- canon

---

# 25. EMOTION DOES NOT EQUAL REGISTER

A character can be:

angry and respectful

grieving and formal

joyful and dignified

afraid and composed

devoted and restrained

affectionate and formal

Do not automatically lower register because emotion increases.

---

# 26. NARRATION ARCHITECTURE

Episode 01 uses a defined narration architecture.

The project-approved structure is:

TULSIDAS
→
SHIVA–SATI–PARVATI STORY
→
SHIVA + PARVATI
→
TULSIDAS HANDOFF
→
SHIVA
→
RAMA-KATHA

The exact scene placement must follow the approved episode architecture.

Narration changes must be explicit.

---

# 27. NARRATOR IDENTITY

Narrator identity must always be known.

Required:

narrator_id:
narrator_layer:
narrator_location:
narrator_time_position:
narrator_knowledge_scope:
narrator_relationship_to_story:

Do not allow narration to drift between narrators without a transition.

---

# 28. TULSIDAS NARRATION

Where Tulsidas functions as narrator:

his narration must not accidentally become:

Shiva's narration
modern documentary narration
anonymous omniscient narration
character dialogue

The narrative voice must remain consistent with the approved narration design.

---

# 29. SHIVA AS IN-WORLD NARRATOR

When Shiva narrates to Parvati:

Shiva is both:

character
+
in-world narrator

His narration must therefore preserve:

- Shiva's character voice
- his relationship with Parvati
- his knowledge state
- the narrative context
- the approved source/adaptation boundary

Shiva must not become an external narrator merely because he is narrating.

---

# 30. NARRATION HANDOFF

Every narrator transition requires:

previous_narrator:
new_narrator:
handoff_scene:
handoff_trigger:
audience_knowledge:
new_narrator_knowledge:
transition_language:
approval_status:

No silent narrator switch.

---

# 31. NARRATION VS DIALOGUE

Narration must not contain dialogue that should belong to a character.

Dialogue must not contain exposition that should naturally belong to narration.

Before approval ask:

Could this information naturally be spoken here?

If yes:
keep dialogue.

If no:
consider narration.

Do not use narration merely to avoid writing natural dialogue.

---

# 32. EXPOSITION CONTROL

No character should explain information solely because the audience needs it if
that character would not naturally say it.

Exposition must be motivated by:

question
instruction
memory
warning
storytelling
ritual
confession
revelation
narration

Avoid exposition dumps.

---

# 33. CHARACTER KNOWLEDGE CONTROL

Before writing every line determine:

What does the speaker know?

What does the listener know?

What does the audience know?

What does the speaker believe?

What does the speaker misunderstand?

No character may reveal information they have no access to unless:

omniscient narration
divine knowledge
prophecy
vision
canonical supernatural mechanism
explicit revelation

supports it.

---

# 34. AUDIENCE KNOWLEDGE CONTROL

The audience may know more or less than the characters.

Dialogue must not be rewritten merely to inform the audience.

The story must preserve:

dramatic irony
mystery
discovery
revelation
character ignorance

where narratively intended.

---

# 35. SCENE LANGUAGE PROFILE

Every scene should have:

scene_id:
scene_language:
scene_register:
scene_formality:
scene_source_density:
scene_narrator:
scene_speakers:
scene_relationships:
scene_emotional_baseline:
scene_ritual_status:
scene_public_private_state:
scene_language_switches:
scene_pronunciation_requirements:
scene_subtitle_requirements:
scene_approval_state:

---

# 36. SCENE OPENING LANGUAGE STATE

At the beginning of every scene establish:

who is speaking
where they are
who is present
relationship state
public/private state
emotional baseline
language
register
narrative mode

Do not begin with an unexplained linguistic state.

---

# 37. SCENE END LANGUAGE STATE

At scene end record:

final_language:
final_register:
final_emotional_state:
final_relationship_state:
final_narrator:
unresolved_language_questions:
continuity_requirements:

This becomes input for the next scene.

---

# 38. SCENE-TO-SCENE CONTINUITY

Language must carry forward:

- unresolved conflict
- emotional state
- relationship state
- address changes
- formal/informal shifts
- information learned
- promises
- insults
- apologies
- revelations
- language switches
- ritual state

A new scene must not reset dialogue behavior.

---

# 39. TEMPORAL LANGUAGE CONTINUITY

Language behavior must account for:

time_of_day
time_since_previous_scene
event_sequence
elapsed_days
ceremonial_stage
ritual_stage
relationship_history

Do not apply later emotional knowledge to earlier scenes.

---

# 40. PUBLIC/PERSONAL CONTINUITY

Track whether a character has:

publicly stated something
privately believed something
privately disclosed something
publicly concealed something

Do not accidentally expose private knowledge in a public scene.

---

# 41. RITUAL LANGUAGE

Ritual language must be tracked separately.

Required:

ritual_id:
ritual_name:
participants:
speaker:
ritual_stage:
source:
original_language:
exact_text_status:
translation_status:
pronunciation_status:
performance_status:

Ritual language must not be improvised without approval.

---

# 42. MANTRA AND SACRED TEXT

Every mantra or sacred quotation must have:

source
exact wording
approved edition
language
pronunciation
meaning
context
speaker/performer
ritual function

Never generate sacred text from memory when exact textual accuracy is required.

---

# 43. POETIC LANGUAGE

Poetic forms must be identified.

Possible forms:

chaupai
doha
soratha
shloka
stotra
mantra
other_source_specific_form

Preserve:

metrical identity
source language
meaning
line order
speaker
narrative function

unless an approved adaptation explicitly changes them.

---

# 44. METRE AND PERFORMANCE

If a source passage is metrical:

do not treat it as ordinary prose.

Performance must consider:

syllable structure
metrical rhythm
pause
breath
line boundary
emphasis
pronunciation

Performance adaptation must not alter the canonical text silently.

---

# 45. PRONUNCIATION INTEGRATION

Pronunciation follows:

PRONUNCIATION.md

Episode-level tracking must identify:

proper_names
divine_names
place_names
titles
epithets
Sanskrit_terms
Awadhi_terms
ritual_terms
difficult_words
source_quotation_terms

Every pronunciation-sensitive item must have one approved form.

---

# 46. PRONUNCIATION CONTINUITY

The same approved name or term must not receive multiple pronunciations across
Episode 01 without an explicit linguistic reason.

Track:

term:
language:
approved_pronunciation:
alternate_allowed:
speaker_specific_exception:
source_basis:

---

# 47. CHARACTER NAME CONTINUITY

Character names must remain consistent.

Do not randomly alternate between:

name
title
epithet
kinship term
vocative

unless the relationship/address system supports the change.

---

# 48. EPITHET CONTROL

Epithets must be:

source-supported
character-appropriate
context-appropriate
relationship-appropriate

Do not use an epithet simply because it sounds grand.

Frequency must be controlled.

Excessive epithet repetition makes dialogue artificial.

---

# 49. VOCATIVE CONTROL

Vocatives must be distinguished from:

third-person references
titles
names
epithets

The episode must preserve the correct grammatical function.

---

# 50. MODERNISM FILTER

Before approval scan for:

modern slang
internet language
social media expressions
corporate language
modern dating language
modern psychology jargon
modern political jargon
unnecessary English
modern idioms
modern abbreviations
Gen-Z vocabulary
casual filler
modern profanity

Each occurrence must be:

removed
or explicitly justified.

---

# 51. ANACHRONISM FILTER

Check for concepts that imply an inappropriate historical or cultural frame.

Potential problems:

modern institutions
modern technology metaphors
modern social terminology
modern relationship concepts
modern psychological labels
modern legal terminology
modern political vocabulary
modern scientific terminology

Do not use modern terminology merely because it is understandable.

---

# 52. OVER-SANSKRITIZATION FILTER

Do not make every line Sanskrit-heavy.

Sophisticated Hindi is not synonymous with Sanskritized Hindi.

Check:

Sanskrit density:
word complexity:
naturalness:
performability:
character fit:

---

# 53. UNDER-CULTURALIZATION FILTER

Do not flatten culturally meaningful language into generic modern Hindi.

Preserve when justified:

dharma
yajna
tapas
guru
ashrama
varna
rajadharma
pitṛ
matṛ
devata
mantra
puja
vrata
pranama
other source-supported concepts

Do not replace culturally meaningful concepts with inaccurate modern equivalents.

---

# 54. DIALOGUE REALISM

Dialogue must feel spoken by human beings.

Allow:

pause
hesitation
interruption
incomplete sentence
silence
self-correction
breath
response delay
emotional compression

But avoid modern filler words and casual speech patterns that violate the
project's language standard.

---

# 55. NO GENERIC MYTHOLOGICAL DIALOGUE

Do not allow lines that could be assigned to almost any mythological character.

Warning signs:

generic wisdom
generic destiny statements
generic divine declarations
generic poetic praise
generic moral speeches
generic emotional declarations

The line must belong to the specific speaker and situation.

---

# 56. NO CONSTANT ELOQUENCE

Characters must not speak as though every sentence is a quotation.

Allow:

simple sentences
direct responses
ordinary questions
practical statements
silence
unfinished thoughts

Sophistication must remain human.

---

# 57. NO CONSTANT PHILOSOPHY

A philosophical character may still discuss:

food
family
travel
danger
practical matters
immediate tasks
health
ritual
ordinary concern

Do not turn every exchange into philosophy.

---

# 58. NO CONSTANT POETRY

Poetic language must be motivated.

If every character speaks poetically:

CHARACTER_DIFFERENTIATION:

FAIL

Poetry must reflect:

source
character
emotion
ritual
narrative function
scene context

---

# 59. INFORMATION REPETITION CONTROL

Characters must not repeatedly state information they already know.

Repeated information is allowed only when it has a new function:

warning
emphasis
emotional escalation
clarification
ritual
public declaration
memory
revelation

---

# 60. DIALOGUE PURPOSE

Every important exchange should have at least one function:

advance_plot
reveal_character
change_relationship
reveal_information
create_conflict
resolve_conflict
establish_world
establish_ritual
create_emotional_change
foreshadow
transition
answer_question
raise_question

Dialogue with no meaningful function should be reviewed.

---

# 61. SUBTEXT CONTROL

Not every line needs subtext.

Use subtext when:

character cannot speak directly
social hierarchy prevents directness
emotion is suppressed
knowledge is concealed
relationship is strained
public/private behavior differs

Do not turn every conversation into hidden-message dialogue.

---

# 62. SILENCE CONTROL

Silence may function as:

respect
fear
grief
anger
thought
devotion
hesitation
acceptance
rejection
intimacy
shock

Silence must be interpreted through character and scene context.

---

# 63. INTERRUPTION CONTROL

Interruptions require:

speaker
listener
reason
urgency
relationship
social permission
emotional state

Do not add interruptions merely to make dialogue "cinematic."

---

# 64. QUESTION CONTROL

Questions must reflect the speaker's:

knowledge
personality
relationship
objective
emotional state

Avoid questions that exist only to explain information to the audience.

---

# 65. COMMAND CONTROL

Commands must reflect:

authority
urgency
relationship
situation
speaker personality

A command must not automatically become rude.

A request must not automatically become weak.

---

# 66. RUDENESS CONTROL

Rudeness must remain character-specific.

The episode must track:

rudeness_level:
rudeness_target:
rudeness_reason:
public_private:
canonical_basis:

No generic insults.

No random profanity.

No modern abuse language.

---

# 67. SACRED DIGNITY

Sacred characters, places, rituals, relationships, and concepts must not be
handled through:

mockery
casualization
vulgarity
modern slang
forced humor
cheap melodrama
unmotivated romanticization

Dramatic intensity may be high while dignity remains intact.

---

# 68. HUMOR CONTROL

Humor must be:

character-specific
situational
contextually appropriate

Humor must not be inserted into:

grief
death
sacred revelation
ritual climax
serious moral confrontation

unless explicitly justified by source or approved adaptation.

---

# 69. ROMANTIC LANGUAGE CONTROL

Romantic or marital language must remain:

character-specific
culturally appropriate
dignified
emotionally believable
canon-compatible

No modern dating vocabulary.

No forced sensual language.

No generic romantic poetry.

---

# 70. GENDER STEREOTYPE CONTROL

Do not make language patterns depend mechanically on gender.

Do not assume:

women are always soft
men are always forceful
mothers are always emotional
fathers are always stern
wives are always submissive
husbands are always dominant

Individual character and canonical behavior take priority.

---

# 71. AGE CONTROL

Age may influence:

vocabulary
authority
questioning
confidence
deference
emotional expression

But age alone must not determine personality.

---

# 72. STATUS CONTROL

Social status may influence:

formality
address
deference
authority
public behavior

But status must not erase individuality.

---

# 73. CULTURAL CONTEXT CONTROL

Language must respect:

kinship
dharma
ritual
social hierarchy
hospitality
royal protocol
sage traditions
devotional practice
marital relationships
family obligations

without inventing unsupported customs.

---

# 74. SCENE-SPECIFIC OVERRIDES

A scene may override episode baseline only when justified.

Required:

override_id:
scene_id:
base_rule:
override:
reason:
source_or_adaptation_basis:
start:
end:
approval:

Overrides must be temporary unless explicitly promoted to episode-wide rule.

---

# 75. EPISODE-WIDE EXCEPTIONS

An exception may become episode-wide only after approval.

Required:

exception_id:
affected_system:
rule_changed:
reason:
evidence:
scope:
start_scene:
end_scene:
approval:

Never allow a one-scene exception to silently spread across the episode.

---

# 76. LANGUAGE STATE TRANSITIONS

Every scene transition should preserve or intentionally change:

language
register
narrator
speaker
relationship
emotion
formality
pronunciation
ritual state
source mode

Unexpected changes are continuity errors.

---

# 77. LANGUAGE STATE SNAPSHOT

At every major scene boundary maintain:

previous_state:
new_state:
trigger:
approved_change:

This prevents language drift.

---

# 78. EPISODE LANGUAGE REGISTRY

Episode 01 must maintain records for:

characters
relationships
narrators
language switches
source passages
adaptations
ritual texts
poetic passages
pronunciation-sensitive terms
approved titles
approved epithets
scene overrides
exceptions
unresolved questions
approval states

---

# 79. UNRESOLVED LANGUAGE QUESTIONS

Every unresolved issue must be registered.

Required:

question_id:
scene_id:
issue:
why_unresolved:
sources_checked:
possible_options:
risk:
decision_required:
owner:
status:

Never hide unresolved uncertainty inside final dialogue.

---

# 80. SOURCE CONFLICT HANDLING

If sources disagree:

record:

source_a:
source_b:
exact_disagreement:
source_authority:
project_hierarchy:
preferred_option:
reason:
remaining_uncertainty:
final_project_decision:

Never silently merge conflicting sources.

---

# 81. SOURCE HIERARCHY

For this project:

PRIMARY:
Ramcharitmanas

OTHER APPROVED PRIMARY / SECONDARY SOURCES:
used according to project research architecture

TRADITION:
supporting evidence only unless explicitly approved

INTERPRETATION:
not automatically canon

ADAPTATION:
production decision

AI OUTPUT:
not evidence

---

# 82. AI SAFETY

AI may assist with:

drafting
classification
comparison
translation drafts
continuity detection
grammar checking
pronunciation assistance
dialogue alternatives

AI may not establish canon by itself.

AI-generated material must remain:

DRAFT

until verified.

---

# 83. AI PROMPT CONTEXT REQUIREMENT

AI must not generate Episode 01 dialogue using only:

character_name
scene_description

Minimum context:

episode language baseline
character profile
relationship profile
scene context
source context
emotional state
knowledge state
address rules
pronunciation rules
adaptation status

---

# 84. AI HALLUCINATION FIREWALL

Reject output containing:

invented quotations
invented Sanskrit
invented Awadhi
false source attribution
unsupported historical claims
unsupported relationship facts
unsupported titles
unsupported epithets
modern slang
generic mythology
wrong character knowledge
wrong relationship
wrong narrator
wrong language
wrong pronunciation

---

# 85. ADAPTATION FIREWALL

Every newly written line must declare:

adaptation_status:
  new_connective
  adapted
  directorial
  unknown

Never present production-created dialogue as canonical quotation.

---

# 86. DIALOGUE PROVENANCE

Every final dialogue unit should be traceable to:

source
or
adaptation decision

Minimum:

dialogue_id:
source_basis:
source_type:
adaptation_reason:
writer_or_generation_source:
review_status:

---

# 87. NARRATION PROVENANCE

Every narration unit must identify:

narrator:
source:
source_type:
adaptation_status:
narrative_function:
approval:

---

# 88. EPISODE DIALOGUE VERSIONING

Never overwrite approved canonical/source text with adapted text.

Maintain separate versions:

source_version
translation_version
adaptation_version
performance_version
final_screenplay_version

---

# 89. CHANGE CONTROL

Any change to an approved language decision requires:

change_id:
old_value:
new_value:
reason:
source_or_requirement:
affected_scenes:
affected_characters:
affected_relationships:
review_status:

Changes must be propagated to dependent scenes.

---

# 90. DEPENDENCY PROPAGATION

If a master language decision changes, identify affected:

characters
relationships
scenes
dialogue
narration
pronunciation
subtitles
prompts
continuity
QA

Do not fix only the first visible occurrence.

---

# 91. SUBTITLE INTEGRATION

Subtitles must preserve:

meaning
speaker intent
cultural terminology
proper names
titles
epithets
ritual meaning
emotional tone

Subtitle simplification must not change meaning.

---

# 92. SUBTITLE LANGUAGE

Subtitle language may differ in compression from spoken language.

However:

spoken meaning
+
speaker identity
+
relationship meaning
+
cultural meaning

must remain intact.

Do not use subtitles to silently correct spoken dialogue.

---

# 93. PRONUNCIATION VS SUBTITLE DISCREPANCY

If pronunciation and written form differ:

preserve correct written language according to the approved linguistic standard.

Do not alter spelling merely to imitate sound unless the subtitle system explicitly
requires phonetic representation.

---

# 94. TTS / AI VOICE INTEGRATION

Language output for TTS must preserve:

correct words
correct pronunciation
correct language
correct pauses
correct sentence boundaries
correct emotional emphasis

Do not modify text merely because a TTS model pronounces a word incorrectly.

Fix pronunciation through the pronunciation layer or approved phonetic control.

---

# 95. PERFORMANCE TEXT

Performance text may contain:

pause markers
breath markers
emphasis markers
pronunciation notes
emotional notes

These must not alter canonical source text.

Keep:

SOURCE_TEXT

separate from:

PERFORMANCE_TEXT

---

# 96. ACTING BOUNDARY

EPISODE_LANGUAGE.md does not dictate acting performance.

It may specify linguistic requirements such as:

pause_required
word_emphasis_required
pronunciation_required
silence_required

Actual acting remains controlled by ACTING.

---

# 97. AUDIO BOUNDARY

This system does not control:

voice timbre
voice casting
microphone
mixing
music
SFX
reverb
mastering

It only supplies language-related requirements to AUDIO.

---

# 98. SCENE BOUNDARY

This system does not determine:

camera
blocking
lighting
lens
shot size
editing

It only provides language continuity requirements to SCENES and SHOTS.

---

# 99. PROMPT BOUNDARY

AI prompts must consume approved language data.

Prompts must not independently invent:

character speech style
relationship behavior
pronunciation
source text
language switching

Prompt generation is downstream of approved language data.

---

# 100. MASTER LANGUAGE GENERATION PIPELINE

The approved production order is:

SOURCE
→
SOURCE CLASSIFICATION
→
CANONICAL TEXT PRESERVATION
→
TRANSLATION
→
EPISODE CONTEXT
→
CHARACTER PROFILE
→
RELATIONSHIP PROFILE
→
ADDRESS RULES
→
EMOTIONAL STATE
→
KNOWLEDGE STATE
→
SCENE LANGUAGE STATE
→
DIALOGUE/NARRATION DRAFT
→
PRONUNCIATION
→
PERFORMANCE TEXT
→
SUBTITLE TEXT
→
QA
→
APPROVAL
→
LOCK

No downstream system may silently rewrite an upstream approved decision.

---

# 101. FINAL DIALOGUE GENERATION ORDER

For every newly written line:

1. Identify speaker.
2. Identify listener.
3. Identify relationship.
4. Identify scene.
5. Identify source status.
6. Identify what speaker knows.
7. Identify what listener knows.
8. Identify speaker objective.
9. Identify emotional state.
10. Identify public/private context.
11. Identify authority.
12. Select approved language.
13. Select register.
14. Apply character vocabulary.
15. Apply relationship behavior.
16. Apply address rules.
17. Construct natural sentence.
18. Check cultural meaning.
19. Check canon.
20. Check pronunciation.
21. Check continuity.
22. Check adaptation status.
23. Check subtitles.
24. Approve or reject.

---

# 102. FINAL NARRATION GENERATION ORDER

For narration:

1. Identify narrator.
2. Identify narrative layer.
3. Identify source.
4. Identify knowledge scope.
5. Identify audience knowledge.
6. Identify narrative purpose.
7. Identify language.
8. Identify register.
9. Preserve source meaning.
10. Separate quotation from adaptation.
11. Check continuity.
12. Check narrator handoff.
13. Check pronunciation.
14. Check subtitles.
15. Approve or reject.

---

# 103. LANGUAGE QA GATE — EPISODE LEVEL

Every scene must pass:

SOURCE QA
CHARACTER QA
RELATIONSHIP QA
ADDRESS QA
REGISTER QA
GRAMMAR QA
VOCABULARY QA
PRONUNCIATION QA
EMOTION QA
KNOWLEDGE QA
CONTINUITY QA
CULTURAL QA
ADAPTATION QA
SUBTITLE QA
AI HALLUCINATION QA

---

# 104. CRITICAL LANGUAGE ERRORS

CRITICAL:

- fabricated canonical quotation
- false source attribution
- wrong narrator
- wrong language
- wrong character knowledge
- impossible relationship
- major relationship continuity break
- invented sacred text
- invented mantra
- wrong canonical meaning
- wrong source language
- severe pronunciation error in critical proper noun
- character speaking with another character's identity

These must block approval.

---

# 105. HIGH-SEVERITY ERRORS

HIGH:

- wrong honorific
- wrong relationship register
- wrong emotional language
- major vocabulary mismatch
- major modernism
- major Sanskrit/Awadhi misuse
- unexplained language switch
- major narrator drift
- major subtitle meaning loss
- unexplained character voice change

These must be corrected before final production.

---

# 106. MEDIUM-SEVERITY ERRORS

MEDIUM:

- unnatural sentence construction
- unnecessary poetic language
- unnecessary repetition
- weak relational specificity
- over-exposition
- inconsistent formality
- minor pronunciation issue
- unnecessary English
- excessive Sanskritization

---

# 107. LOW-SEVERITY ERRORS

LOW:

- minor punctuation
- minor rhythm issue
- minor wording awkwardness
- minor subtitle compression issue

Low-severity issues may remain only if they do not affect meaning, identity,
canon, or performance.

---

# 108. AUTOMATIC REJECTION CONDITIONS

Reject the language unit if:

source attribution is fabricated

OR

speaker identity is incorrect

OR

listener relationship is incorrect

OR

language is unjustified

OR

character voice is replaced by generic mythology

OR

relationship behavior contradicts approved state

OR

character knows impossible information

OR

modern language is unjustified

OR

sacred text is invented

OR

canonical meaning is materially changed

OR

pronunciation is knowingly incorrect

OR

continuity is broken

OR

adaptation is falsely presented as canon.

---

# 109. CROSS-CHARACTER COLLISION TEST

For every major scene select representative lines.

Test:

Could Rama say this?

Could Lakshmana say this?

Could Sita say this?

Could Sati say this?

Could Parvati say this?

Could Shiva say this?

Could Daksha say this?

Could Narada say this?

Could another character say this?

If too many characters could say the same line without modification:

CHARACTER_DIFFERENTIATION:

FAIL

---

# 110. CROSS-RELATIONSHIP COLLISION TEST

Take a representative line and change only the listener.

If the line remains exactly appropriate:

check whether relational specificity is sufficient.

If the line should change but does not:

RELATIONSHIP_DIFFERENTIATION:

FAIL

---

# 111. CROSS-SCENE COLLISION TEST

Compare the same character in:

public scene
private scene
ritual scene
conflict scene
grief scene
ordinary scene

The character must remain recognizable while adapting naturally to context.

---

# 112. LANGUAGE DENSITY CONTROL

Monitor episode-wide:

Sanskrit_density
Awadhi_density
poetic_density
philosophical_density
exposition_density
new_dialogue_density
canonical_dialogue_density
silence_density
narration_density

No single stylistic feature should dominate without narrative justification.

---

# 113. REPETITION AUDIT

Episode-wide audit must identify repeated:

phrases
metaphors
epithets
vocatives
emotional declarations
moral statements
warnings
questions
sentence patterns

Repeated language is acceptable when characteristically or canonically justified.

Otherwise revise.

---

# 114. CHARACTER VOCABULARY COLLISION

Compare important vocabulary across characters.

If the same unusual vocabulary appears equally in unrelated characters:

check whether:

source requires it
concept requires it
language baseline requires it

Otherwise:

CHARACTER_VOCABULARY_COLLISION:

FLAG

---

# 115. RELATIONSHIP VOCABULARY COLLISION

Relationship-specific language must not become a universal vocabulary pattern.

If every relationship uses the same:

concern words
affection words
respect words
conflict words

then:

RELATIONSHIP_DIFFERENTIATION:

FAIL

---

# 116. EPISODE LANGUAGE BALANCE

The episode should balance:

canonical fidelity
natural speech
cultural dignity
character individuality
relationship realism
accessibility
source traceability
performance usability

Do not optimize one dimension by destroying another.

---

# 117. ACCESSIBILITY VS FIDELITY

When accessibility conflicts with exact source language:

do not silently rewrite.

Choose explicitly:

exact_source
literal_translation
contextual_translation
performance_translation
screenplay_adaptation

Record the decision.

---

# 118. PERFORMANCE VS CANON

Performance may alter:

pause
timing
breath
emphasis
delivery

It must not silently alter:

canonical wording
meaning
speaker
source attribution

---

# 119. DIALOGUE VS SOURCE CONFLICT

If the dramatic scene requires dialogue not directly present in the source:

write it only as:

adapted_dialogue
or
new_connective_dialogue

Never label it:

direct_canonical_dialogue

unless verified.

---

# 120. NARRATION VS SOURCE CONFLICT

If narration expands source material:

label:

source_derived_expansion

or:

adapted_narration

Never imply that expanded narration is a direct quotation.

---

# 121. EPISODE LANGUAGE LOCKS

The following may be locked after approval:

language_baseline
narration_architecture
narrator_identity
character_language_profiles
relationship_profiles
approved_address_rules
approved_source_passages
pronunciation_forms
major terminology
scene language states
major adaptation decisions

Locked elements cannot change silently.

---

# 122. LOCK CHANGE PROCEDURE

To modify a locked language decision:

create:

change_request:
reason:
evidence:
affected_units:
continuity_impact:
approval:

Only then update the lock.

---

# 123. DEPENDENCY CHECK BEFORE LOCK

Before locking any episode language decision check dependent:

characters
relationships
scenes
dialogue
narration
pronunciation
subtitles
TTS
AI prompts
continuity
QA

No dependency may be left silently stale.

---

# 124. FINAL EPISODE LANGUAGE AUDIT

Before Episode 01 language is considered complete:

[ ] Episode language baseline approved
[ ] Hindi policy approved
[ ] Awadhi policy integrated
[ ] Sanskrit policy integrated
[ ] Narration architecture locked
[ ] Narrator transitions locked
[ ] Character profiles integrated
[ ] Relationship profiles integrated
[ ] Address system integrated
[ ] Emotional language integrated
[ ] Knowledge states integrated
[ ] Scene language states established
[ ] Source traceability established
[ ] Canonical text preserved
[ ] Translation layers separated
[ ] Adaptations labelled
[ ] New dialogue labelled
[ ] Ritual language verified
[ ] Sacred text verified
[ ] Poetic forms verified
[ ] Pronunciation verified
[ ] Name/epithet continuity verified
[ ] Modernism audit passed
[ ] Anachronism audit passed
[ ] Over-Sanskritization audit passed
[ ] Cultural-language audit passed
[ ] Dialogue realism passed
[ ] Exposition audit passed
[ ] Character collision audit passed
[ ] Relationship collision audit passed
[ ] Scene continuity passed
[ ] Episode-wide repetition audit passed
[ ] Subtitle audit passed
[ ] AI hallucination audit passed
[ ] Source conflicts recorded
[ ] Uncertainty recorded
[ ] Change control established
[ ] Locks established
[ ] Final approval recorded

---

# 125. COMPLETION DEFINITION

Episode 01 LANGUAGE is complete only when:

every scene has a language state

every narrator has an identified role

every dialogue unit has a speaker

every important dialogue unit has a listener or audience state

every important relationship has an approved state

every source-derived unit has provenance

every adaptation is labelled

every sacred/poetic passage is source-checked

every pronunciation-sensitive item is resolved

every major language transition has a reason

every major continuity dependency is tracked

every unresolved issue is explicitly recorded

every critical QA gate has passed

and no material language decision depends on an unrecorded assumption.

---

# 126. FINAL MASTER RULE

EPISODE_LANGUAGE.md does not ask:

"Does this dialogue sound good?"

It asks:

"Is this the correct language for this exact moment of this exact episode,
spoken by this exact person, to this exact person or audience, within this exact
relationship and emotional state, using the correct source basis, register,
vocabulary, pronunciation, cultural meaning, narrative function, continuity,
and adaptation status?"

Only when the answer is YES may the language unit proceed to final production.

---

# 127. ABSOLUTE PRIORITY

When systems appear to conflict:

CANONICAL FACT
>
APPROVED PROJECT DECISION
>
CHARACTER IDENTITY
>
RELATIONSHIP STATE
>
SCENE CONTEXT
>
EMOTIONAL STATE
>
LANGUAGE STYLE
>
PERFORMANCE PREFERENCE
>
AI CONVENIENCE

If a conflict cannot be resolved:

DO NOT GUESS.

Record the conflict.

Research it.

Make an explicit project decision.

Then update the appropriate system.

---

# 128. FINAL STATUS

EPISODE_LANGUAGE_STATUS:

STRUCTURALLY_COMPLETE

CONTENT_STATUS:

READY_FOR_SCENE_INTEGRATION

SOURCE_STATUS:

MUST_BE_VERIFIED_PER_SOURCE_UNIT

AI_STATUS:

DRAFTING_TOOL_ONLY

CANON_STATUS:

RAMCHARITMANAS-FIRST

APPROVAL_STATUS:

REQUIRES_SOURCE_AND_SCENE_QA_BEFORE_LOCK

END OF EPISODE_LANGUAGE.md
