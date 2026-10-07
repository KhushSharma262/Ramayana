# SANSKRIT LANGUAGE RULES
# RAMAYAN — PRODUCTION SANSKRIT STANDARD

language_id: SAN
language_name: Sanskrit
scope: Sanskrit source-language, ritual-language, quotation, terminology, and performance rules
status: ACTIVE
version: 1.0

---

## 1. PURPOSE

This file defines the Sanskrit used, preserved, researched, translated, and performed in the RAMAYAN project.

It covers:

- Sanskrit source quotations
- Sanskrit dialogue where canonically justified
- Sanskrit shlokas
- mantras
- ritual language
- divine/formal Sanskrit expressions
- Sanskrit terminology
- Sanskrit names and compounds
- Sanskrit passages embedded within otherwise Hindi/Awadhi material
- Sanskrit-to-Hindi translation
- Sanskrit pronunciation flags
- Sanskrit grammar required for production QA

It does NOT define:

- Modern Hindi grammar
- Awadhi grammar
- complete Sanskrit phonetics
- acting
- voice identity
- audio mixing

Detailed pronunciation belongs to:

02_LANGUAGE_RULES/PRONUNCIATION.md

---

# 2. CORE PROJECT RULE

SANSKRIT MUST NEVER BE USED MERELY TO MAKE A LINE SOUND ANCIENT.

Every Sanskrit expression must have a reason.

Possible reasons:

- direct canonical quotation
- source-supported terminology
- mantra
- ritual utterance
- Sanskrit shloka
- character identity
- theological context
- traditional formula
- established name/title
- deliberately approved Sanskrit dialogue

Artificial Sanskritization is prohibited.

---

# 3. SANSKRIT IS DISTINCT FROM HINDI AND AWADHI

Sanskrit is a separate classical Indo-Aryan language.

It must not be treated as:

Hindi + Sanskrit vocabulary

or:

Awadhi + Sanskrit vocabulary.

A grammatically Sanskrit sentence must follow Sanskrit morphology and syntax.

Changing a few Hindi words into Sanskrit equivalents does not produce Sanskrit.

---

# 4. SOURCE TYPES

Sanskrit material must be classified before production use.

Possible classifications:

DIRECT_CANON
DERIVED_CANON
TRADITIONAL_FORMULA
RITUAL_FORMULA
MANTRA
SLOKA
TRANSLATION
ADAPTATION
LINGUISTIC_RECONSTRUCTION
PRODUCTION_SANSKRIT
DIRECTORIAL_CHOICE
UNKNOWN
UNCERTAIN

---

# 5. SANSKRIT PERIOD / REGISTER

Do not treat all Sanskrit as one undifferentiated linguistic stage.

Potential categories include:

Vedic Sanskrit
Epic Sanskrit
Classical Sanskrit
Later / post-classical Sanskrit
Traditional liturgical Sanskrit

For Ramayana-related material, Epic Sanskrit is especially important for the Valmiki Ramayana.

However, an individual Sanskrit quotation must be classified from its actual source rather than assumed to be Epic Sanskrit merely because the story is ancient.

---

# 6. SOURCE-FIRST RULE

When Sanskrit is directly quoted:

SOURCE TEXT
>
EDITORIAL VERIFICATION
>
TEXTUAL VARIANT REVIEW
>
PRONUNCIATION
>
MEANING
>
PERFORMANCE

Do not reconstruct canonical Sanskrit from memory if the source is available.

---

# 7. SANSKRIT SOURCE PRESERVATION

Direct Sanskrit quotations must preserve:

- source wording
- grammatical forms
- sandhi
- compounds
- metre
- significant particles
- repetition
- case endings
- verbal forms
- textual identity

Do not modernize a Sanskrit quotation into Hindi and continue to label it Sanskrit.

---

# 8. DEVANAGARI

The production script for Sanskrit is normally:

देवनागरी

Roman transliteration may be used for:

- research
- pronunciation
- database records
- subtitles
- linguistic analysis
- source comparison

Preferred scholarly transliteration:

IAST

Examples:

रामः
Rāmaḥ

धर्मः
dharmaḥ

महर्षिः
maharṣiḥ

---

# 9. SANSKRIT ORTHOGRAPHY

Sanskrit written in Devanagari must preserve relevant distinctions including:

- vowel length
- anusvāra
- visarga
- conjunct consonants
- retroflex consonants
- aspirated consonants
- palatal consonants
- dental consonants
- retroflex consonants

Do not remove diacritically meaningful distinctions in research records.

---

# 10. VOWEL LENGTH

Sanskrit distinguishes short and long vowels.

Short:

अ
इ
उ
ऋ
ऌ

Long:

आ
ई
ऊ
ॠ
ॡ

Other vowels:

ए
ऐ
ओ
औ

Vowel length may affect:

- meaning
- grammatical form
- metre
- pronunciation

Never normalize long and short vowels merely because they sound similar to a Hindi speaker.

---

# 11. CONSONANT SYSTEM

Sanskrit distinguishes important consonant classes including:

VELARS:
क ख ग घ ङ

PALATALS:
च छ ज झ ञ

RETROFLEX:
ट ठ ड ढ ण

DENTALS:
त थ द ध न

LABIALS:
प फ ब भ म

SEMIVOWELS:
य र ल व

SIBILANTS:
श ष स

OTHER:
ह

These distinctions must be preserved in source text and pronunciation.

---

# 12. ASPIRATION

Sanskrit distinguishes:

क / ख
ग / घ
च / छ
ज / झ
ट / ठ
ड / ढ
त / थ
द / ध
प / फ
ब / भ

Aspirated consonants are not optional pronunciation variants.

Do not pronounce:

ध as द

भ as ब

थ as त

फ as प

when performing Sanskrit.

---

# 13. RETROFLEX / DENTAL DISTINCTION

Sanskrit distinguishes:

ट / त
ठ / थ
ड / द
ढ / ध
ण / न

This distinction is phonologically and morphologically important.

It must not be flattened into approximate Hindi pronunciation.

---

# 14. ANUSVĀRA

Anusvāra:

ं

must be interpreted according to phonological and grammatical context.

Do not treat every anusvāra as a generic nasal "m" sound.

In pronunciation, the nasal realization may assimilate to the following consonant.

Detailed pronunciation rules belong in PRONUNCIATION.md.

---

# 15. VISARGA

Visarga:

ः

is a Sanskrit sound marker with phonological and sandhi behavior.

It must not simply be deleted because modern Hindi pronunciation often omits comparable final sounds.

When performing Sanskrit:

preserve or appropriately realize visarga according to the source, phonological environment, and approved pronunciation model.

---

# 16. SANDHI

Sandhi is a central part of Sanskrit textual structure.

Sandhi may operate:

- within words
- between words
- across grammatical boundaries

It can change the surface form of words when they occur together.

Therefore:

a Sanskrit sentence should not be analyzed only by visually separated Devanagari tokens.

---

# 17. SANDHI ANALYSIS

For important Sanskrit quotations, the production database should be capable of recording:

surface form
→
underlying word forms
→
sandhi rule
→
grammatical analysis
→
meaning

Example concept:

word A + word B
→
sandhied form

The exact rule must be verified rather than guessed.

---

# 18. SANDHI CATEGORIES

Important broad categories include:

vowel sandhi
visarga sandhi
consonant sandhi
internal sandhi
external sandhi

The project should preserve the actual source form.

Do not insert spaces merely to make Sanskrit look like Hindi.

---

# 19. SANDHI AND PERFORMANCE

For performance:

- the actor must know the lexical word boundaries
- the spoken form must follow correct sandhi
- pauses must not arbitrarily break obligatory phonological connections
- a dramatic pause may be used only where linguistically and performatively acceptable

A performer reading each written token as an independent Hindi word is not acceptable Sanskrit pronunciation.

---

# 20. NOMINAL SYSTEM

Sanskrit nouns and adjectives are inflected for:

- case
- number
- gender

Traditional Sanskrit grammar recognizes:

7 primary case categories plus vocative:

1. nominative
2. accusative
3. instrumental
4. dative
5. ablative
6. genitive
7. locative
vocative

Sanskrit also has:

SINGULAR
DUAL
PLURAL

The dual is a genuine grammatical category and must not be reduced to plural.

---

# 21. GENDER

Sanskrit has:

masculine
feminine
neuter

Grammatical gender is lexical/grammatical.

It is not necessarily identical to biological sex.

Agreement must follow grammatical gender.

---

# 22. DUAL NUMBER

Sanskrit has a distinct dual.

The dual may refer to two entities.

This is especially important in:

- pairs
- ritual contexts
- paired characters
- paired body parts
- poetic descriptions

Do not automatically translate dual forms as plural.

---

# 23. CASE FUNCTIONS

Cases express grammatical and semantic relationships.

Broadly:

NOMINATIVE:
subject / agent of many finite constructions

ACCUSATIVE:
direct object and related functions

INSTRUMENTAL:
means, instrument, accompaniment, agent in passive constructions and other functions

DATIVE:
recipient, beneficiary, purpose and related functions

ABLATIVE:
source, separation, cause and related functions

GENITIVE:
possession, relation and other dependent relationships

LOCATIVE:
location, sphere, context and related relationships

VOCATIVE:
direct address

Actual case meaning is context-dependent.

Do not force every occurrence into a single English equivalent.

---

# 24. KARAKA / SEMANTIC ROLES

Sanskrit grammatical analysis may distinguish semantic relationships such as:

agent
object
instrument
recipient
source
location

The project may record both:

surface case

and:

semantic function

when necessary.

This is especially useful for translation and QA.

---

# 25. DECLENSION

Nouns decline according to stem type and gender.

Important stem classes include:

a-stems
ā-stems
i-stems
ī-stems
u-stems
ū-stems
ṛ-stems
consonant stems
irregular stems

Do not generate a declined form by applying one generic ending table.

The lexical stem must be identified first.

---

# 26. ADJECTIVES

Sanskrit adjectives generally agree with the nouns they qualify in:

- gender
- number
- case

Example principle:

masculine noun
→ masculine adjective

feminine noun
→ feminine adjective

neuter noun
→ neuter adjective

The actual stem class determines the surface ending.

---

# 27. PRONOUNS

Important Sanskrit pronoun systems include:

first person
second person
third person
demonstratives
relative pronouns
interrogatives
indefinite pronouns
reflexive forms

Pronouns are inflected.

Do not use Hindi pronouns inside Sanskrit sentences.

---

# 28. PERSONAL PRONOUNS

Core forms include:

अहम्
I

आवाम्
we two

वयम्
we

त्वम्
you singular

युवाम्
you two

यूयम्
you plural

The exact form changes according to case.

Do not treat अहम्, त्वम्, etc. as invariant words.

---

# 29. THIRD-PERSON / DEMONSTRATIVE SYSTEM

Sanskrit demonstratives include forms based on:

सः
सा
तत्

and related inflected forms.

Pronoun selection and agreement depend on:

- gender
- number
- case
- syntactic role
- discourse context

---

# 30. RELATIVE-CORRELATIVE STRUCTURE

Sanskrit commonly uses relative-correlative constructions.

Examples include structures based on:

यः ... सः ...

यत् ... तत् ...

यत्र ... तत्र ...

यदा ... तदा ...

The exact form changes with case, gender, number, and syntactic function.

These constructions should not be translated mechanically word-for-word.

---

# 31. VERBAL SYSTEM

Sanskrit verbs encode substantial grammatical information.

Important dimensions include:

- person
- number
- voice
- tense/aspect/mood
- verbal class
- derivational formation

The project must not reduce Sanskrit verbs to a simple "past/present/future" system.

---

# 32. PERSON

Sanskrit grammatical tradition uses:

प्रथम पुरुष
third person

मध्यम पुरुष
second person

उत्तम पुरुष
first person

This terminology differs from the everyday English use of "first/second/third person."

Production databases should use explicit labels to prevent confusion.

---

# 33. NUMBER IN VERBS

Sanskrit verbs distinguish:

singular
dual
plural

Verb agreement must therefore account for dual subjects.

Do not translate a dual verbal form as plural merely because English or Hindi lacks a corresponding category.

---

# 34. VOICE

Sanskrit verbal morphology includes:

parasmaipada
ātmanepada

and passive constructions.

Traditional grammatical terminology does not map perfectly onto English "active/passive."

Therefore the project must record the actual Sanskrit verbal form before translating it.

---

# 35. TENSE / MOOD SYSTEM

Sanskrit includes multiple verbal systems and moods.

Important categories include:

present system
imperfect
aorist
perfect
future
conditional
imperative
optative
and other traditional categories.

The exact classification depends on the grammatical tradition and source.

Do not collapse all non-present forms into "past tense."

---

# 36. PRESENT SYSTEM

The Sanskrit present system is organized around verbal classes.

Traditional Sanskrit grammar recognizes ten present classes.

A root must be identified before generating its present forms.

Do not invent present forms by attaching endings to an English/Hindi transliteration.

---

# 37. PERFECT

The Sanskrit perfect is a distinct verbal formation.

It is not simply:

present stem + past meaning.

It may involve:

- reduplication
- stem changes
- specific endings
- historical/lexical variation

Canonical forms must be source-verified.

---

# 38. AORIST

The aorist is a distinct Sanskrit verbal formation with multiple patterns.

Do not automatically equate every aorist with one simple Hindi past form.

Translation must be context-sensitive.

---

# 39. FUTURE

Sanskrit has future formations including the s-future and periphrastic future.

Future meaning may also interact with mood and context.

Use the actual source form rather than translating English "will" backward into Sanskrit.

---

# 40. IMPERATIVE

The imperative expresses:

- command
- request
- exhortation
- injunction
- blessing-like force in some contexts

Its form varies with:

- person
- number
- verbal class
- voice

Do not generate commands using Hindi imperative morphology.

---

# 41. OPTATIVE

The optative may express:

- wish
- possibility
- injunction
- recommendation
- potentiality
- conditional or related meanings depending on context

Do not translate every optative simply as "should."

---

# 42. PARTICIPLES

Sanskrit has extensive participial systems.

Important forms include:

- present active participles
- passive participles
- future passive participles
- past active participles
- other participial formations

Participles often carry meanings that require a full clause in Hindi.

Translation must therefore be contextual.

---

# 43. GERUNDS

Sanskrit uses gerundial/adverbial constructions to express an action related to a subsequent or main action.

Common formation includes:

-त्वा
-य

depending on derivational environment.

Do not mechanically translate every gerund with "करके."

Context determines the appropriate Hindi meaning.

---

# 44. INFINITIVES

Sanskrit infinitival constructions may express purpose or other relationships.

The common infinitive ending:

-तुम्

occurs in forms such as:

गन्तुम्
कर्तुम्
द्रष्टुम्

Exact meaning is contextual.

---

# 45. CAUSATIVE

Sanskrit has a productive causative formation.

A causative expresses causing another participant to perform an action.

The semantic roles and case behavior may change.

Do not treat causative verbs as merely longer versions of the root verb.

---

# 46. DESIDERATIVE

Sanskrit has a desiderative formation expressing desire/intention toward an action.

It is commonly marked through reduplicative/derivational morphology.

Do not invent desideratives by adding a generic Sanskrit suffix.

---

# 47. PASSIVE

Sanskrit passive formation has its own morphology and syntax.

Do not assume:

Hindi passive = Sanskrit passive.

The Sanskrit source form must be analyzed first.

---

# 48. PREVERBS

Sanskrit verbs frequently combine with preverbs such as:

प्र
परि
सम्
अनु
अव
अप
उद्
आ
वि
नि
प्रति

These may alter the meaning of a verbal root.

The resulting lexical item must be interpreted as a whole.

---

# 49. COMPOUNDS / SAMĀSA

Sanskrit is highly productive in compounding.

Important compound categories include:

tatpuruṣa
karmadhāraya
dvandva
bahuvrīhi
avyayībhāva

Traditional grammatical analyses may further subdivide these.

Compounds should be analyzed rather than translated word-by-word blindly.

---

# 50. TATPURUṢA

In a tatpuruṣa-type compound, the relationship between members corresponds broadly to a dependent syntactic relationship.

The exact case relation may need to be reconstructed during analysis.

Do not assume every two-word Sanskrit compound is tatpuruṣa.

---

# 51. KARMADHĀRAYA

Karmadhāraya compounds commonly involve an attributive relationship in which one member qualifies the other.

The semantic relation should be preserved in translation.

---

# 52. DVANDVA

Dvandva compounds coordinate their members.

They may correspond to:

X and Y

or a coordinated group.

Number and gender must be determined according to the compound's grammatical behavior.

---

# 53. BAHUVRĪHI

Bahuvrīhi compounds function as adjectives/nouns referring to an entity characterized by the compound's internal meaning.

The compound does not simply mean:

first word + second word.

This is especially important for:

- epithets
- character titles
- poetic descriptions
- divine names

---

# 54. COMPOUND LENGTH

Long compounds may be entirely grammatical Sanskrit.

Do not automatically break them apart for performance.

However, actors must understand their internal structure and meaning.

If a compound is difficult for the audience, translation/subtitling may explain it without altering the original Sanskrit.

---

# 55. SYNTAX

Sanskrit word order is relatively flexible because grammatical relationships are heavily encoded through inflection.

Therefore:

word order ≠ grammatical relationship by itself.

Case endings, verb forms, particles, and compounds must all be analyzed.

Do not impose Modern Hindi SOV syntax mechanically on Sanskrit.

---

# 56. WORD ORDER AND EMPHASIS

Word order can be used for:

- emphasis
- topic
- poetic structure
- contrast
- metre
- discourse organization

A reordered Sanskrit sentence is not necessarily grammatically incorrect.

However, production adaptation must preserve the source meaning.

---

# 57. PRO-DROP

Sanskrit frequently permits omission of an explicit personal pronoun when person and number are recoverable from the verb.

Do not insert अहम् / त्वम् / सः merely to make the sentence resemble Hindi.

Pronoun insertion is an adaptation decision, not an automatic correction.

---

# 58. PARTICLES

Sanskrit contains many indeclinable particles and discourse markers.

Examples include:

हि
तु
च
वा
एव
अपि
नु
खलु
अथ
अथवा

Their meanings are strongly context-dependent.

Do not translate every occurrence with a fixed Hindi word.

---

# 59. NEGATION

The principal negative particle is:

न
/ 
नहि

depending on construction and register.

Negation may interact with:

- verb
- particle
- prohibition
- syntax
- poetic structure

Do not automatically replace Sanskrit न with Hindi नहीं inside Sanskrit.

---

# 60. PROHIBITION

Negative commands and prohibitions have their own Sanskrit constructions.

Source form must be preserved.

Do not construct a Sanskrit prohibition by translating:

"मत करो"

word-for-word into Sanskrit.

---

# 61. RITUAL SANSKRIT

Ritual language must be treated separately from ordinary Sanskrit dialogue.

Examples include:

- invocations
- offerings
- vows
- blessings
- sacrificial formulas
- deity invocations
- mantras
- saṅkalpa-related formulae

The exact wording must be source-verified.

---

# 62. MANTRA RULE

A mantra must never be paraphrased and presented as the original mantra.

Record separately:

- original mantra
- source
- textual form
- transliteration
- pronunciation
- meaning where applicable
- ritual context
- speaker/reciter
- performance instructions

---

# 63. MANTRA MEANING

Not every mantra should be forced into a simplistic Hindi sentence.

Some mantras have:

- syntactic meaning
- formulaic meaning
- invocation
- liturgical function
- symbolic meaning
- layered traditional interpretation

Translation must distinguish literal meaning from ritual function.

---

# 64. BLESSINGS

Sanskrit blessings may use specialized grammatical and formulaic forms.

Do not invent Sanskrit blessings by translating a modern Hindi blessing word-for-word.

Use an attested source or approved traditional formula whenever possible.

---

# 65. VOWS AND OATHS

Vows must be treated according to their source and ritual context.

Do not automatically Sanskritize ordinary Hindi vows.

If a canonical Sanskrit formula exists:

preserve it.

If a Hindi/Awadhi source exists:

preserve that language instead.

---

# 66. DIVINE SPEECH

A divine character may use Sanskrit when source and context justify it.

But:

divine ≠ automatically Sanskrit.

A character who canonically speaks Awadhi or another language in a given source should not be switched to Sanskrit merely to sound divine.

Language is determined by source and scene.

---

# 67. SANSKRIT TERMINOLOGY IN HINDI

Hindi dialogue may contain Sanskrit-derived terms without becoming Sanskrit.

Example:

धर्म
कर्म
मर्यादा
संकल्प
वरदान
आशीर्वाद

Such words remain Hindi usage when grammatically integrated into Hindi.

Do not classify the entire line as Sanskrit simply because it contains Sanskrit-derived vocabulary.

---

# 68. SANSKRIT QUOTATION INSIDE HINDI

A Hindi sentence may quote Sanskrit.

The quotation should be marked internally in the production record as:

language_switch: SANSKRIT

and should preserve:

- exact Sanskrit
- pronunciation
- translation
- reason for insertion

---

# 69. SANSKRIT QUOTATION INSIDE AWADHI

The same principle applies to Awadhi.

A Sanskrit shloka inside an Awadhi literary work remains Sanskrit.

Language identification must happen at passage or clause level when required.

---

# 70. TRANSLATION LEVELS

Every Sanskrit passage may have:

1. ORIGINAL
2. PADACCHEDA / WORD SEGMENTATION
3. GRAMMATICAL ANALYSIS
4. LITERAL TRANSLATION
5. CONTEXTUAL TRANSLATION
6. PERFORMANCE TRANSLATION
7. FINAL SCREENPLAY ADAPTATION

These layers must not be merged.

---

# 71. PADACCHEDA

For sandhied Sanskrit text, padaccheda identifies the underlying word boundaries.

It should be recorded when required for:

- actor preparation
- grammatical analysis
- translation
- pronunciation
- research

Padaccheda is an analytical representation, not necessarily the exact printed source form.

---

# 72. ANVAYA

For poetry with non-prose word order, anvaya may be used to reconstruct a syntactically clearer order.

Anvaya is an analytical tool.

It must never overwrite the original verse.

Production database:

ORIGINAL VERSE
+
ANVAYA
+
TRANSLATION

---

# 73. METRE

Sanskrit verse must be treated as metrical material where applicable.

Important metres relevant to the broader Sanskrit literary tradition include:

anuṣṭubh
triṣṭubh
jagati
gāyatrī
bṛhatī
paṅkti
and many later/classical metres.

The metre must be identified from the actual verse.

---

# 74. ANUṢṬUBH / ŚLOKA

Anuṣṭubh is a four-pāda metre with eight syllables per pāda in its basic structure.

It is especially important in epic Sanskrit, including the Ramayana tradition.

The actual verse must still be scanned rather than assuming every four-pāda verse is metrically identical in every detail.

---

# 75. TRIṢṬUBH

Triṣṭubh conventionally contains four pādas of eleven syllables.

It is prominent in Vedic and later Sanskrit poetry.

If used in the production, metre must be checked from the actual text.

---

# 76. JAGATĪ

Jagatī conventionally contains four pādas of twelve syllables.

Do not identify a metre solely from visual line length.

Prosodic analysis must be based on the verse's syllable structure.

---

# 77. VEDIC VS CLASSICAL METRE

Vedic metre and Classical Sanskrit metre are not interchangeable.

If Vedic material is used:

- identify the source
- identify the metre
- verify pronunciation
- preserve relevant phonological features
- use appropriate chanting conventions

Do not apply Classical Sanskrit assumptions blindly.

---

# 78. CHANTING VS SPEAKING

A Sanskrit mantra or Vedic passage may require chanting rather than ordinary speech.

Production records should distinguish:

spoken Sanskrit
chanting
recitation
ritual recitation
dramatic performance

The language may be identical while the performance mode differs.

---

# 79. PRONUNCIATION BOUNDARY

Detailed phonetic rules belong in:

02_LANGUAGE_RULES/PRONUNCIATION.md

Sanskrit records should nevertheless flag:

- vowel quantity
- visarga
- anusvāra
- aspirates
- retroflexes
- dental consonants
- conjuncts
- sandhi
- metre-sensitive pronunciation

---

# 80. NAME PRONUNCIATION

Sanskrit names must have an approved pronunciation record.

Record when relevant:

- Devanagari
- IAST
- syllable division
- vowel length
- consonant aspiration
- retroflex/dental distinction
- visarga
- sandhi form
- citation/source

Do not assume Hindi pronunciation is identical to Sanskrit pronunciation.

---

# 81. SANSKRIT NAMES IN HINDI

A Sanskrit name used inside Hindi dialogue may be pronounced according to the project's approved Hindi-performance convention where appropriate.

This must not be confused with the original Sanskrit pronunciation.

Both may be recorded separately.

---

# 82. SANSKRITIZATION CONTROL

Avoid unnecessary Sanskrit compounds such as artificially constructed:

अत्यन्तमहान्...
परमदैवीय...
सर्वलोककल्याणप्रद...

unless genuinely justified by:

- source
- traditional terminology
- character
- ritual
- poetic form

A grammatically possible Sanskrit compound is not automatically authentic Sanskrit.

---

# 83. INVENTION PROHIBITION

DO NOT invent:

- Sanskrit shlokas
- mantras
- quotations
- Vedic formulae
- Puranic quotations
- grammatical forms
- epithets
- etymologies
- ritual formulae

when presenting them as canonical or traditional.

If no source is found:

mark:

UNKNOWN

or:

UNCERTAIN

---

# 84. AI-GENERATION RULE

AI may assist with:

- grammatical analysis
- translation drafts
- sandhi analysis
- padaccheda
- vocabulary discovery
- comparison
- alternative renderings

AI output is not evidence.

Canonical Sanskrit must be independently verified.

---

# 85. DICTIONARY / GRAMMAR VERIFICATION

For uncertain Sanskrit forms, preferred verification resources include:

- Sanskrit Heritage / University of Hyderabad tools
- Sanskrit Library resources
- established Sanskrit dictionaries
- established Sanskrit grammars
- critical or authoritative editions
- scholarly commentaries

The Sanskrit Heritage grammar tools explicitly support noun declension and verb conjugation, including gender, stem, root, and present class. :chatgpt-content-reference{index="0"}

---

# 86. PANINIAN GRAMMAR

Pāṇini's Aṣṭādhyāyī is a foundational grammatical tradition for Sanskrit.

The project may use Pāṇinian terminology where necessary.

However:

production records should remain understandable to non-specialists.

A technical grammatical label should be accompanied by a plain-language explanation when required.

---

# 87. GRAMMAR RESEARCH STRUCTURE

For difficult Sanskrit passages, research should be organized as:

SOURCE
↓
PADACCHEDA
↓
STEM / ROOT IDENTIFICATION
↓
INFLECTION
↓
SANDHI
↓
CASE / KARAKA
↓
VERBAL ANALYSIS
↓
COMPOUND ANALYSIS
↓
ANVAYA
↓
LITERAL MEANING
↓
CONTEXTUAL MEANING
↓
PERFORMANCE TRANSLATION

This order minimizes interpretation errors.

---

# 88. TEXTUAL VARIANTS

Where Sanskrit source editions differ:

record:

- edition
- manuscript/editorial basis where known
- reading A
- reading B
- reason for project selection
- confidence

Do not silently merge readings.

---

# 89. CANONICAL RAMAYANA RULE

If a Sanskrit passage is from the Valmiki Ramayana:

record at minimum:

- kāṇḍa
- sarga
- verse
- edition
- Sanskrit original
- translation
- speaker/narrator
- scene
- source classification

Do not cite a verse merely as:

"Valmiki Ramayana"

when a more precise reference is available.

---

# 90. NON-RAMAYANA SOURCES

Sanskrit material may also come from:

- Vedas
- Upanishads
- Puranas
- Itihasa
- Smriti texts
- Stotra literature
- ritual texts
- traditional commentaries

The source must be named.

Do not merge quotations from different traditions.

---

# 91. SOURCE CONFLICT

If two Sanskrit sources give different wording or theological interpretation:

record the conflict.

Do not silently combine them.

Record:

source A
source B
exact difference
source authority
project decision
remaining uncertainty

---

# 92. HINDI TRANSLATION

A Sanskrit passage translated into Hindi should preserve:

- core semantic meaning
- grammatical relationships
- agency
- tense/aspect
- modality
- negation
- emotional force
- theological terminology

Do not translate every Sanskrit word with one fixed Hindi dictionary equivalent.

---

# 93. LITERAL VS CONTEXTUAL TRANSLATION

LITERAL:

stays close to grammatical structure.

CONTEXTUAL:

expresses intended meaning naturally.

PERFORMANCE:

is designed to be spoken naturally by the actor.

SCREENPLAY:

is the final approved production wording.

These are separate outputs.

---

# 94. TRANSLATION LOSS CONTROL

Before approving a Hindi translation, check for loss of:

- dual number
- case relationship
- causative meaning
- passive meaning
- modality
- negation
- particles
- emphasis
- compound meaning
- ritual function

If a distinction cannot be preserved naturally in Hindi, record the loss.

---

# 95. CHARACTER LANGUAGE

Sanskrit usage must be character-specific.

Factors:

- canonical source
- education
- spiritual status
- ritual context
- social setting
- relationship
- emotional state
- audience
- scene type

Do not give every learned character identical Sanskrit.

---

# 96. SAGE LANGUAGE

Sages may use Sanskrit where source and context support it.

But:

sage ≠ automatic Sanskrit

A sage can speak Hindi/Awadhi in an adapted production when the scene architecture requires it.

---

# 97. ROYAL LANGUAGE

Royal characters may use Sanskrit for:

- formal declarations
- rituals
- vows
- ceremonial speech
- source quotations

But ordinary conversation need not become Sanskrit unless justified.

---

# 98. RITUAL LANGUAGE VS DIALOGUE

A ritual mantra should not be rewritten as conversational Sanskrit.

Conversely, ordinary Sanskrit dialogue should not be performed like a mantra.

Production mode must be recorded.

---

# 99. SUBTITLES

When Sanskrit is spoken:

subtitle options may include:

A. Sanskrit transcription

B. Hindi meaning

C. Sanskrit + Hindi meaning

The selected mode depends on:

- narrative importance
- audience comprehension
- production design
- technical subtitle constraints

Canonical Sanskrit should not be silently replaced by Hindi in the spoken track.

---

# 100. SANSKRIT QA

Before approving Sanskrit:

[ ] Source identified
[ ] Source edition identified
[ ] Sanskrit verified
[ ] Language stage identified where relevant
[ ] Devanagari checked
[ ] IAST checked where used
[ ] Sandhi checked
[ ] Padaccheda checked where required
[ ] Noun declension checked
[ ] Gender checked
[ ] Case checked
[ ] Number checked
[ ] Dual checked where relevant
[ ] Pronoun checked
[ ] Verb root checked
[ ] Verb class checked where relevant
[ ] Person checked
[ ] Number checked
[ ] Voice checked
[ ] Tense/mood checked
[ ] Participles checked
[ ] Compounds checked
[ ] Particles checked
[ ] Negation checked
[ ] Metre checked where applicable
[ ] Ritual/mantra status checked
[ ] Pronunciation flags added
[ ] Translation checked
[ ] Character/context appropriate
[ ] No unnecessary Sanskritization
[ ] No fabricated quotation
[ ] No AI-generated claim treated as evidence

---

# 101. FINAL SANSKRIT STANDARD

Sanskrit in RAMAYAN must feel like:

AUTHENTIC SANSKRIT

when Sanskrit is actually required,

not:

MODERN HINDI WITH SANSKRIT WORDS,

and not:

AI-GENERATED "ANCIENT-SOUNDING" TEXT.

The governing principle is:

SOURCE
+
GRAMMAR
+
CONTEXT
+
PRONUNCIATION
+
PERFORMANCE

not:

"make it sound old."

---

# RESEARCH BASIS

Core references used for this rule set:

1. Peter M. Scharf, Śabdabrahman: A Linguistic Introduction to Sanskrit, The Sanskrit Library, 2022.
   Covers phonology, Devanagari, sandhi, verbs, nouns, adjectives, pronouns, passive, future, conditional, relative clauses, causatives, participles, perfect, aorist, and compounds. :chatgpt-content-reference{index="1"}

2. The Sanskrit Library — Sanskrit Grammarian / Sanskrit Heritage Engine.
   Provides noun declension and verb conjugation by stem, gender, root, and verbal class, with Devanagari and IAST output. :chatgpt-content-reference{index="2"}

3. The Sanskrit Library — Pāṇinian Sandhi resources.
   Used for the principle that Sanskrit sandhi must be analyzed through grammatical rules rather than treated as arbitrary spelling. :chatgpt-content-reference{index="3"}

4. The Sanskrit Library — Sanskrit grammatical reference works.
   Includes Pāṇinian databases, Whitney's Sanskrit Grammar, lexical resources, and grammatical reference systems. :chatgpt-content-reference{index="4"}

5. University of Hyderabad — Introduction to Vedic Chanting.
   Used for the distinction between Sanskrit metres and for the basic description of anuṣṭubh, triṣṭubh, jagatī and related metres. :chatgpt-content-reference{index="5"}

NOTE:

General Sanskrit grammar, Epic Sanskrit, Classical Sanskrit, Vedic Sanskrit, and individual source-text traditions are not interchangeable. Every canonical passage must be checked against its actual source and linguistic stage.

END OF SANSKRIT RULES
