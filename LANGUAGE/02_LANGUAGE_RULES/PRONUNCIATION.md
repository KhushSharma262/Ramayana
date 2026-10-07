# PRONUNCIATION RULES
# RAMAYAN — MASTER LANGUAGE PRONUNCIATION STANDARD

language_id: PRON
scope: Hindi + Awadhi + Sanskrit pronunciation
status: ACTIVE
version: 1.0

---

# 1. PURPOSE

This file defines pronunciation standards for:

- Hindi
- Awadhi
- Sanskrit
- character names
- divine names
- place names
- titles
- epithets
- ritual terminology
- Sanskrit quotations
- Awadhi quotations
- Hindi dialogue
- narration
- subtitles
- actor pronunciation guides
- TTS / voice-generation input
- AI-generated speech
- pronunciation QA

It is the shared pronunciation authority for:

LANGUAGE
CHARACTERS
ACTING
AUDIO
NARRATION
SUBTITLES
PROMPTS
AI
CONTINUITY
QA

---

# 2. CORE PRINCIPLE

SPELLING IS NOT PRONUNCIATION.

Devanagari provides substantial information about pronunciation, but actual spoken output also depends on:

- language
- phonology
- morphology
- schwa rules
- sandhi
- syllable structure
- vowel quantity
- nasalization
- consonant articulation
- register
- metre
- speech context
- source tradition

Therefore:

written form
≠
automatic spoken form

---

# 3. LANGUAGE IDENTIFICATION COMES FIRST

Before pronunciation is generated, identify:

language
+
source
+
register
+
exact form

Possible language values:

HINDI
AWADHI
SANSKRIT
OTHER

Never pronounce a word solely from its Devanagari spelling when its language identity is uncertain.

The same written form can receive different pronunciation depending on language and context.

---

# 4. PRONUNCIATION AUTHORITY ORDER

For canonical material:

1. approved source text
2. source-specific linguistic evidence
3. established pronunciation tradition
4. authoritative grammar / phonology
5. specialist pronunciation reference
6. production pronunciation decision

AI pronunciation is never automatically authoritative.

---

# 5. THREE-LANGUAGE DISTINCTION

The project must maintain three separate pronunciation models.

HINDI:

Modern Standard / production Hindi pronunciation.

AWADHI:

Awadhi pronunciation appropriate to the selected source/variety.

SANSKRIT:

Sanskrit pronunciation appropriate to the source and linguistic stage.

Do not use:

Hindi pronunciation + Awadhi vocabulary

as an Awadhi pronunciation model.

Do not use:

Hindi pronunciation + Sanskrit vocabulary

as Sanskrit pronunciation.

---

# 6. DEVANAGARI

Primary production script:

देवनागरी

Devanagari represents consonant-vowel units through aksharas.

An akshara is not necessarily identical to:

- a phoneme
- a syllable
- a spoken word

Pronunciation must therefore be generated from linguistic structure rather than letter-by-letter reading.

---

# 7. INHERENT VOWEL

A consonant letter in Devanagari normally carries an inherent vowel unless modified by:

- a vowel sign
- virama/halant
- conjunct formation
- another orthographic mechanism

Example principle:

क

contains an inherent vowel.

क्

does not contain the inherent vowel.

This does NOT mean every written consonant should receive a pronounced schwa in Hindi.

---

# 8. HINDI SCHWA RULE

Hindi pronunciation contains systematic schwa deletion.

A written inherent /ə/ is not automatically pronounced.

Hindi has no general requirement to pronounce every inherent vowel represented by Devanagari.

Examples of the phenomenon include:

written structure
→
spoken form

The exact deletion depends on:

- word position
- syllable structure
- morphology
- prosodic structure
- lexical form

The project must use lexical/linguistic verification for difficult words.

Research on Hindi letter-to-sound rules explicitly treats final schwa deletion and internal schwa deletion as major pronunciation processes. :chatgpt-content-reference{index="1"}

---

# 9. FINAL SCHWA

Hindi generally does not pronounce the final inherent schwa of ordinary words.

Therefore a final consonant-bearing akshara should not automatically receive a final /ə/.

This is one of the most important differences between:

reading Devanagari mechanically

and:

speaking Hindi naturally.

---

# 10. INTERNAL SCHWA

Hindi also has internal schwa deletion.

The deletion depends on prosodic and morphological structure.

Do not create a universal rule such as:

"delete every second schwa."

That will produce incorrect Hindi.

Words must be checked individually when uncertain.

---

# 11. AWADHI SCHWA RULE

Awadhi must NOT simply inherit the Hindi schwa-deletion model.

Pronunciation should be based on the selected Awadhi linguistic variety/source.

When the project is reproducing Ramcharitmanas material:

source-specific pronunciation takes priority.

Do not modernize Awadhi pronunciation into Standard Hindi pronunciation automatically.

---

# 12. SANSKRIT SCHWA RULE

Sanskrit must not be pronounced using the Hindi schwa-deletion system.

Sanskrit Devanagari represents Sanskrit morphology and phonology differently.

An inherent vowel should not be deleted merely because a Hindi speaker would delete it.

Source language and Sanskrit sandhi determine the pronunciation.

---

# 13. VOWEL INVENTORY — HINDI

Production Hindi must distinguish the relevant vowel contrasts of Standard Hindi.

Core vowel letters include:

अ
आ
इ
ई
उ
ऊ
ए
ऐ
ओ
औ

Additional Sanskrit-derived vowel symbols may occur in names and learned vocabulary.

Hindi vowel quality and quantity must be determined from the actual word.

---

# 14. VOWEL LENGTH — HINDI

Hindi historically/orthographically distinguishes short and long vowel categories, but phonetic realization is context-sensitive.

In particular:

word-final vowel length may be neutralized/lengthened in pronunciation.

Therefore do not treat Devanagari vowel duration as identical to Sanskrit vowel quantity.

Hindi pronunciation research documents word-final vowel lengthening and neutralization of the length distinction in that environment. :chatgpt-content-reference{index="2"}

---

# 15. VOWEL LENGTH — AWADHI

The Linguistic Survey of India description of Awadhi reports:

"No vowel length has been noticed"

for the surveyed Awadhi variety.

Therefore the project must NOT import a rigid Hindi/Sanskrit short-vowel vs long-vowel pronunciation rule into Awadhi without source-specific evidence. :chatgpt-content-reference{index="3"}

Important:

This finding describes the surveyed Awadhi variety.

It must not be generalized automatically to every historical or regional Awadhi variety.

---

# 16. VOWEL QUANTITY — SANSKRIT

Sanskrit requires explicit attention to vowel quantity.

Short:

a
i
u
ṛ
ḷ

Long:

ā
ī
ū
ṝ
ḹ

Diphthongs:

e
ai
o
au

Vowel quantity is important for:

- pronunciation
- morphology
- metre
- textual accuracy

Do not shorten long Sanskrit vowels for convenience.

---

# 17. SANSKRIT METRE AND VOWEL LENGTH

In Sanskrit poetry, vowel quantity contributes to syllable weight.

Therefore incorrect vowel length can alter:

- metre
- rhythm
- pronunciation
- poetic structure

For metrical Sanskrit:

source text
+
syllable quantity
+
metrical analysis

must be preserved.

---

# 18. SHORT / LONG CONTRAST

The actor must not treat:

अ / आ

इ / ई

उ / ऊ

as interchangeable in Sanskrit.

Likewise:

क vs कः

is not simply a spelling difference.

---

# 19. ASPIRATION

The following contrasts must be maintained where phonologically relevant:

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

Aspirated consonants are not equivalent to:

k + h
g + h
t + h
d + h
p + h
b + h

as two independent syllables.

They are single aspirated consonantal segments.

---

# 20. ASPIRATION IN PERFORMANCE

Avoid two common errors:

ERROR 1:
Pronouncing aspirated consonants as unaspirated.

ERROR 2:
Turning aspiration into an exaggerated separate "h" sound.

The correct realization should be a single consonant with the appropriate aspiration.

---

# 21. DENTAL CONSONANTS

Dental consonants include:

त
थ
द
ध
न

The tongue contacts the upper teeth / dental region rather than producing the retroflex articulation.

They must not be pronounced as retroflex:

त ≠ ट

थ ≠ ठ

द ≠ ड

ध ≠ ढ

न ≠ ण

---

# 22. RETROFLEX CONSONANTS

Retroflex consonants include:

ट
ठ
ड
ढ
ण

They require a retroflex articulation.

The tongue position differs from dental consonants.

This distinction is important in:

- Sanskrit
- Hindi
- Awadhi
- names
- grammatical forms

---

# 23. DENTAL / RETROFLEX QA

Every difficult name should be checked for:

t / ṭ
th / ṭh
d / ḍ
dh / ḍh
n / ṇ

Do not rely on English transliteration alone.

---

# 24. PALATAL SOUNDS

Important palatal series:

च
छ
ज
झ
ञ

Do not pronounce:

च

as English "ch" in every possible context without considering the Indian phonetic target.

Similarly:

ज

must preserve its intended voiced affricate/related realization.

---

# 25. VELAR SOUNDS

Velar series:

क
ख
ग
घ
ङ

These are produced toward the back of the oral cavity.

They must not be confused with:

च
ज

or:

ट
ड

---

# 26. LABIAL SOUNDS

Labial series:

प
फ
ब
भ
म

The exact phonetic realization of फ may vary across Hindi speech traditions, including labial and labiodental realizations.

Production should use a consistent approved Hindi pronunciation model rather than switching arbitrarily between variants.

---

# 27. श / ष / स

Sanskrit distinguishes:

श
ष
स

Their traditional phonetic identities differ.

In Modern Standard Hindi, some distinctions may be neutralized in actual pronunciation.

Therefore:

SANSKRIT:
preserve the Sanskrit distinction where appropriate.

HINDI:
follow the accepted Standard Hindi pronunciation.

AWADHI:
follow the selected Awadhi source/variety.

Do not impose Sanskrit pronunciation on every Hindi word.

---

# 28. ष IN HINDI

Modern Hindi may not maintain a fully contrastive distinction between:

श
and
ष

in all varieties.

Orthography may preserve the distinction because of Sanskritic spelling.

Therefore the written form must not automatically be used to infer a fully distinct modern Hindi phoneme.

---

# 29. र

र has context-sensitive phonetic behavior.

Its realization must be checked according to:

- language
- position
- consonant cluster
- source
- speech style

Do not use an English-style /r/ automatically.

---

# 30. ल

ल is an alveolar/lateral sound and should remain distinct from:

र

and from retroflex lateral sounds in Sanskrit traditions where relevant.

---

# 31. व

The Sanskrit/Hindi letter:

व

has a phonetic realization that may fall between traditional "v" and "w" descriptions depending on language and context.

For production:

do not exaggerate it as English /w/.

Do not force an English /v/ if the approved pronunciation model calls for a different realization.

Use a consistent Indian-language articulation.

---

# 32. य

य is an approximant.

It must not be pronounced as an English hard "y" plus an additional vowel.

The following vowel forms a single syllabic sequence.

---

# 33. H

ह is an independent consonant.

It should not be inserted into aspirated consonants as a separate syllable.

Compare:

भ

with:

ब + ह

These are not equivalent.

---

# 34. NASALIZATION

The project distinguishes:

ANUNĀSIKA / NASALIZED VOWEL

from:

ANUSVĀRA / NASAL CONSONANT OR CONTEXTUAL NASALIZATION

and:

EXPLICIT NASAL CONSONANTS.

These are not interchangeable.

---

# 35. CHANDRABINDU

Chandrabindu:

ँ

normally indicates vowel nasalization.

The vowel itself is nasalized.

It should not be pronounced as a separate "n" or "m."

Example principle:

VOWEL
+
NASALIZATION

not:

VOWEL
+
FULL NASAL CONSONANT

---

# 36. ANUSVĀRA

Anusvāra:

ं

cannot always be represented by one fixed sound.

Its realization depends on:

- language
- phonological environment
- source tradition
- following consonant
- orthographic convention

Therefore:

ं ≠ automatically "m"

and:

ं ≠ automatically "n".

---

# 37. HINDI BINDU AMBIGUITY

In Hindi orthography, bindu may represent:

- nasal consonantal realization
- nasalized vowel

depending on orthographic environment and lexical item.

Research on Hindi orthography specifically notes this ambiguity for certain vowel matras. :chatgpt-content-reference{index="4"}

The actor must therefore learn the lexical pronunciation rather than mechanically interpreting every bindu identically.

---

# 38. AWADHI NASALIZATION

The Government of India Awadhi survey reports nasalized vowels in Awadhi but notes that they are not morphophonemic in the surveyed variety.

Therefore nasalization must be treated as a genuine phonetic feature without automatically creating a grammatical contrast where the source does not support one. :chatgpt-content-reference{index="5"}

---

# 39. SANSKRIT ANUSVĀRA

Sanskrit anusvāra has complex phonological behavior.

It cannot be reduced to one universal sound.

The Sanskrit Library's phonological analysis notes that anusvāra can function as an allophonic realization in particular environments and must be distinguished from ordinary nasal consonants and nasalized vowels. :chatgpt-content-reference{index="6"}

---

# 40. SANSKRIT VISARGA

Visarga:

ः

is a Sanskrit phonological marker.

It must not automatically be:

- deleted
- pronounced as ordinary Hindi "h"
- pronounced as "ha"
- ignored in chanting

Its realization depends on phonological environment and tradition.

---

# 41. VISARGA IN SANSKRIT

For source-faithful Sanskrit:

record:

written visarga
+
phonological environment
+
approved pronunciation.

The Sanskrit Library documents visarga as having context-sensitive phonetic realizations, including variants before certain voiceless sounds. :chatgpt-content-reference{index="7"}

---

# 42. VISARGA IN HINDI

Hindi may retain visarga in learned/Sanskritic spellings even where modern pronunciation does not preserve a full Sanskrit visarga.

Therefore:

Hindi spelling containing ः
does not automatically mean
full Sanskrit pronunciation.

Language identification comes first.

---

# 43. CONJUNCT CONSONANTS

Conjuncts must be treated as consonant sequences, not as arbitrary decorative glyphs.

Examples:

क्त
त्र
ज्ञ
क्ष
श्र
द्व
स्व
त्व

The actual pronunciation depends on:

- language
- lexical form
- historical development
- source

---

# 44. क्ष

क्ष is historically a consonant cluster.

Its modern pronunciation may vary by language and lexical item.

For Sanskrit:

preserve the Sanskrit target.

For Hindi:

use established Standard Hindi pronunciation.

Do not create an English "k-s" pronunciation automatically.

---

# 45. त्र

त्र should be pronounced as the intended consonant cluster/affricated realization appropriate to the language and lexical tradition.

Do not split it into:

त + र

as two independently stressed syllables.

---

# 46. ज्ञ

ज्ञ is particularly pronunciation-sensitive.

Its realization varies across Sanskrit traditions, Hindi varieties, and lexical environments.

Therefore every important occurrence should have an approved pronunciation record.

Do not assume a single universal reading for:

ज्ञ.

---

# 47. श्र

श्र represents a consonant cluster.

It should not be pronounced as an arbitrary sequence of English "sh-r."

The target must be based on the language and lexical item.

---

# 48. ऋ

ऋ is especially important.

Sanskrit:

ऋ is a syllabic vocalic sound in the traditional Sanskrit system.

It must not automatically be pronounced as:

"ri"

in the same way as an ordinary Hindi syllable.

Modern Indian-language adaptations may differ.

Therefore Sanskrit and Hindi readings must be recorded separately when necessary.

---

# 49. ॠ

ॠ is the long counterpart of ऋ in Sanskrit.

It is rare in ordinary production material.

If encountered:

verify the source.

Do not normalize it automatically.

---

# 50. ऌ / ॡ

These Sanskrit vocalic symbols are extremely rare.

If encountered:

- verify source
- verify grammatical analysis
- verify pronunciation
- verify whether the occurrence is textual, grammatical, or editorial

Never guess.

---

# 51. SYLLABLES

Pronunciation records should be capable of storing syllable division.

Syllable structure is important for:

- acting
- TTS
- Sanskrit metre
- Awadhi poetry
- Hindi pronunciation
- difficult names

---

# 52. SYLLABLE VS AKSHARA

Do not assume:

one Devanagari akshara
=
one spoken syllable

In many ordinary cases they correspond closely, but consonant clusters and phonological processes can create different relationships.

---

# 53. HINDI STRESS

Hindi has word-level and phrase-level prominence patterns.

Stress should not be imposed according to English rules.

Avoid:

English-style strong stress
on every important word.

Natural Hindi speech uses:

- syllable weight
- lexical structure
- phrase prominence
- rhythm
- information structure

Pronunciation should sound like Hindi, not English spoken through Hindi words.

---

# 54. AWADHI PROSODY

Awadhi pronunciation must account for:

- syllable structure
- poetic metre
- source tradition
- regional variation
- phrase rhythm

For Ramcharitmanas verse, metrical structure is a major performance consideration.

Do not perform Awadhi verse as ordinary prose.

---

# 55. SANSKRIT ACCENT

Vedic Sanskrit may preserve pitch-accent distinctions including:

- udātta
- anudātta
- svarita

These are not equivalent to modern English stress.

The Sanskrit Library documents different Vedic accent systems across traditions/recensions. :chatgpt-content-reference{index="8"}

Therefore:

Vedic chanting
≠
ordinary Sanskrit dialogue.

---

# 56. VEDIC CHANTING

If Vedic material is used:

record:

- recension
- tradition
- accent system
- chant mode
- source
- pronunciation standard

Do not invent a generic "Vedic voice."

---

# 57. CLASSICAL / EPIC SANSKRIT PERFORMANCE

For Epic/Classical Sanskrit:

the production should distinguish:

- careful recitation
- conversational Sanskrit
- poetic recitation
- ritual recitation

The performance mode affects:

- pacing
- pauses
- phrase grouping
- vowel realization
- cadence

---

# 58. SANDHI

Sanskrit sandhi is a pronunciation and textual phenomenon.

When words meet:

sounds may change.

Therefore:

written word boundary
≠
necessarily spoken boundary.

Actors must learn the sandhied form.

---

# 59. SANDHI TYPES

Production records may classify:

vowel sandhi
visarga sandhi
consonant sandhi
nasal sandhi
internal sandhi
external sandhi

The exact rule must be verified.

---

# 60. PADACCHEDA

For difficult Sanskrit verse:

SOURCE TEXT
→
PADACCHEDA
→
PRONUNCIATION
→
MEANING

Padaccheda helps the actor understand underlying lexical units.

It must not replace the original sandhied source text.

---

# 61. AWADHI POETIC RHYTHM

For Ramcharitmanas passages:

record:

- original metre
- pāda/line structure
- syllable or mātrā pattern as appropriate
- natural pause
- syntactic pause
- performance pause

Do not insert pauses solely at modern punctuation marks.

---

# 62. CHANDAS VS SPEECH

Poetic metre is not identical to ordinary conversational rhythm.

A chaupai, doha, soratha, or Sanskrit śloka should not be performed exactly like ordinary prose.

However:

metrical performance must remain intelligible.

Avoid exaggerated singing unless the production explicitly requires it.

---

# 63. PAUSE TYPES

Production pronunciation records may distinguish:

MICRO PAUSE
  very short breath/phrase boundary

PHRASE PAUSE
  grammatical or semantic boundary

EMOTIONAL PAUSE
  caused by acting/emotion

METRICAL PAUSE
  related to verse structure

DRAMATIC PAUSE
  directorial choice

Do not confuse dramatic silence with linguistic punctuation.

---

# 64. BREATHING

Breath points should respect:

- sentence structure
- meaning
- actor physiology
- emotional state
- metre
- performance duration

Do not force actors to complete unnaturally long Sanskrit or Awadhi phrases without planned breathing.

---

# 65. EMOTIONAL PRONUNCIATION

Emotion changes:

- pitch
- duration
- intensity
- articulation
- pause length
- speech rate

But emotion must not destroy phonemic distinctions.

An angry character still needs to distinguish:

त / ट

द / ड

स / श

क / ख

etc.

---

# 66. QUIET SPEECH

Quiet speech must not become:

- whispered unintelligibly
- under-articulated
- consonant deletion
- vowel shortening that changes words

The actor should reduce amplitude without destroying linguistic identity.

---

# 67. SHOUTING

Shouting must not become:

- excessive aspiration
- artificial retroflexion
- vowel distortion
- loss of final sounds
- uncontrolled pronunciation

Intensity is an acting parameter, not permission to change the language.

---

# 68. GRIEF

Grief may introduce:

- pauses
- broken phrases
- reduced volume
- breathiness
- repetition

But the source words remain identifiable unless the script deliberately specifies incomplete speech.

---

# 69. ANGER

Anger may increase:

- consonant intensity
- speech rate
- directness
- pitch range

Do not intentionally convert dental consonants into retroflexes or otherwise distort phonemes to "sound angry."

---

# 70. DEVOTIONAL SPEECH

Devotional delivery may involve:

- slower pacing
- reverence
- controlled breath
- longer phrase boundaries
- melodic cadence

But devotional feeling must not automatically become singing.

---

# 71. RITUAL PRONUNCIATION

Ritual material requires:

- source verification
- exact wording
- exact pronunciation
- appropriate cadence
- appropriate pause
- appropriate repetition

Never improvise a ritual pronunciation.

---

# 72. NAMES

Every major character name requires a pronunciation record.

Required fields:

character_name
language
Devanagari
IAST/transliteration
syllable_breakdown
phonetic_notes
approved_pronunciation
alternate_readings
source
confidence

---

# 73. EPITHETS

Epithets must have their own pronunciation records where they differ from ordinary name pronunciation.

Examples:

रघुनाथ
रघुवीर
जनकनन्दिनी
महादेव
त्रिपुरान्तक

must be checked rather than generated from spelling.

---

# 74. PLACE NAMES

Place names require:

- source language
- historical form
- canonical form
- modern form
- approved production pronunciation

Do not automatically pronounce ancient place names according to modern English transliteration.

---

# 75. TITLES

Titles such as:

महाराज
राजन्
भगवन्
ऋषि
महर्षि
देव
देवी
गुरु

must be pronounced according to their language context.

A Sanskrit vocative may differ from a Hindi title even when the written form looks similar.

---

# 76. VOCATIVE FORMS

Sanskrit vocative forms can differ morphologically from nominative forms.

Example principle:

nominative form
≠
necessarily vocative form.

Therefore character address must be grammatically checked.

Do not assume the nominative form is always correct for Sanskrit direct address.

---

# 77. HINDI VS SANSKRIT NAME READING

A name may have:

SANSKRIT PRONUNCIATION
and
HINDI PERFORMANCE PRONUNCIATION.

Both can be recorded.

The selected version depends on:

- language of dialogue
- source
- character
- scene
- production decision

---

# 78. ROMAN TRANSLITERATION

Preferred scholarly Sanskrit transliteration:

IAST

Core examples:

ā ī ū ṛ ṝ ḷ
ś ṣ
ṃ
ḥ

Do not use casual internet spellings in research records.

Examples of prohibited uncontrolled variation:

Shiva
Siva
Shiv
Śiva

Choose an approved representation for each system.

---

# 79. TRANSLITERATION IS NOT PRONUNCIATION

Romanization represents writing.

It does not automatically guarantee pronunciation.

Therefore:

Devanagari
+
IAST
+
phonetic pronunciation

may all be stored separately.

---

# 80. IPA

IPA may be used internally for difficult pronunciation.

Recommended record:

source_text:
phonemic_form:
phonetic_notes:
IPA:
language:
source:

IPA is a QA/research representation, not necessarily actor-facing text.

---

# 81. ACTOR-FACING PRONUNCIATION

Actor-facing pronunciation should normally use:

Devanagari
+
simple syllable guidance
+
audio reference where available

IPA should be supplied when useful to trained pronunciation staff.

Do not force actors to read IPA unless trained to do so.

---

# 82. TTS INPUT

TTS systems must not receive raw canonical Sanskrit/Awadhi text blindly.

Pipeline:

SOURCE TEXT
↓
LANGUAGE IDENTIFICATION
↓
NORMALIZATION
↓
PRONUNCIATION ANALYSIS
↓
SANDHI / SCHWA / PHONOLOGY PROCESSING
↓
TTS-READY TEXT
↓
VOICE GENERATION
↓
HUMAN / QA LISTENING

---

# 83. TTS LANGUAGE LOCK

Before generating audio:

language must be explicitly locked.

Examples:

hi-IN
Awadhi-specific model/configuration where available
Sanskrit-specific model/configuration where available

Never let a generic Hindi TTS system decide Sanskrit pronunciation automatically.

---

# 84. TTS PRONUNCIATION LEXICON

Important words should have a pronunciation lexicon containing:

written_form
language
normalized_form
phonemic_form
phonetic_form
IPA
syllables
notes
approved_audio
source
confidence

---

# 85. AI VOICE SAFETY

AI voice generation may introduce:

- Hindi schwa deletion into Sanskrit
- incorrect Sanskrit vowel length
- Hindi-style visarga deletion
- incorrect Awadhi pronunciation
- English-like stress
- incorrect retroflexes
- lost aspiration
- incorrect nasalization
- incorrect sandhi

Every important generated line must therefore be listened to and checked.

---

# 86. PRONUNCIATION CONTINUITY

Once an important name or term receives an approved pronunciation:

use it consistently.

Exceptions require:

- language switch
- source switch
- canonical variant
- deliberate regional pronunciation
- directorial decision

---

# 87. MULTIPLE VALID PRONUNCIATIONS

If multiple pronunciations are genuinely attested:

record:

preferred
alternative_1
alternative_2
source
region/tradition
usage_context

Do not pretend there is one universally correct form when the evidence shows variation.

---

# 88. UNCERTAIN PRONUNCIATION

If pronunciation cannot be established:

DO NOT GUESS.

Use:

pronunciation_status: UNCERTAIN

Then research:

- source
- language
- grammar
- pronunciation tradition
- scholarly references

Only after review should a production pronunciation be approved.

---

# 89. SOURCE QUOTATION PRONUNCIATION

For direct canonical quotation:

the pronunciation must correspond to the approved source text.

Do not pronounce a quotation from memory after altering its spelling.

---

# 90. ADAPTATION PRONUNCIATION

If Awadhi/Sanskrit is translated into Hindi:

the final line is pronounced as Hindi.

Do not preserve source-language pronunciation in a Hindi translation unless explicitly intended.

---

# 91. LANGUAGE-SWITCH PRONUNCIATION

If a character moves from Hindi into Sanskrit within one line:

the pronunciation system must switch with the language.

Example:

Hindi sentence
→
Sanskrit mantra
→
Hindi sentence

requires:

Hindi pronunciation
→
Sanskrit pronunciation
→
Hindi pronunciation.

---

# 92. COMMON PRONUNCIATION ERRORS

PROHIBITED:

- English-style stress
- silent aspirates
- unaspirated pronunciation of भ/ध/घ etc.
- dental/retroflex collapse
- reading every Devanagari schwa
- deleting Sanskrit vowels using Hindi rules
- deleting Sanskrit visarga automatically
- treating anusvāra as always m
- treating chandrabindu as n
- treating every conjunct as separate syllables
- turning Sanskrit into Hindi pronunciation
- turning Awadhi into Hindi pronunciation
- inventing a rustic accent for Awadhi
- excessive theatrical Sanskrit pronunciation
- over-articulating every consonant unnaturally

---

# 93. NATURALNESS RULE

Correct pronunciation must still sound human.

Do not over-articulate every phoneme so heavily that the performance becomes:

- robotic
- artificial
- stage-like
- mechanically Sanskritized

The goal is:

LINGUISTIC ACCURACY
+
NATURAL HUMAN SPEECH.

---

# 94. HISTORICAL AUTHENTICITY LIMIT

The project cannot automatically reconstruct the exact spoken accent of an ancient individual.

Therefore:

DO NOT CLAIM:

"this is exactly how Rama historically sounded."

Instead use:

source-faithful pronunciation
+
linguistically informed reconstruction
+
approved performance standard.

---

# 95. PRONUNCIATION QA

Every important pronunciation should pass:

[ ] Language identified
[ ] Source identified
[ ] Devanagari checked
[ ] Transliteration checked
[ ] Vowels checked
[ ] Vowel quantity checked where relevant
[ ] Schwa behavior checked
[ ] Aspiration checked
[ ] Dental/retroflex checked
[ ] Palatal/velar checked
[ ] Nasalization checked
[ ] Anusvāra checked
[ ] Chandrabindu checked
[ ] Visarga checked
[ ] Conjuncts checked
[ ] Sandhi checked
[ ] Syllables checked
[ ] Metre checked where relevant
[ ] Stress/rhythm checked
[ ] Name consistency checked
[ ] TTS output listened to
[ ] Naturalness checked
[ ] Source traceability recorded
[ ] Uncertainty recorded where applicable

---

# 96. MASTER PRONUNCIATION RECORD

Every high-priority term should ultimately be representable as:

pronunciation_id:
term:
language:
source_language:
source:
script:
written_form:
transliteration:
syllables:
phonemic_form:
IPA:
phonetic_notes:
schwa_behavior:
vowel_quantity:
nasalization:
aspiration:
retroflex_dental:
sandhi:
metre:
approved_pronunciation:
alternate_pronunciations:
audio_reference:
confidence:
status:
notes:

---

# 97. PRONUNCIATION APPROVAL STATES

DRAFT

RESEARCHED

VERIFIED

APPROVED

LOCKED

REJECTED

UNCERTAIN

Only:

APPROVED
or
LOCKED

should be used in final production audio without additional review.

---

# 98. FINAL MASTER RULE

The project must never use:

"Read the Devanagari exactly as written"

as its pronunciation system.

The correct pipeline is:

LANGUAGE
+
SOURCE
+
ORTHOGRAPHY
+
PHONOLOGY
+
MORPHOLOGY
+
SANDHI
+
PROSODY
+
PERFORMANCE

→

FINAL PRONUNCIATION

---

# 99. FINAL STANDARD

Hindi must sound like:

NATURAL REFINED HINDI

Awadhi must sound like:

AUTHENTIC AWADHI APPROPRIATE TO THE SELECTED SOURCE / VARIETY

Sanskrit must sound like:

AUTHENTIC SANSKRIT APPROPRIATE TO THE SOURCE AND PERFORMANCE MODE

None should sound:

- AI-generated
- English-influenced
- artificially archaic
- caricatured
- mechanically read from Devanagari
- unnecessarily theatrical

FINAL PRINCIPLE:

ACCURATE
+
SOURCE-AWARE
+
LANGUAGE-SPECIFIC
+
HUMAN
+
PERFORMABLE

END OF PRONUNCIATION RULES


# RESEARCH BASIS

1. Peter M. Scharf and Malcolm D. Hyman,
   Linguistic Issues in Encoding Sanskrit,
   The Sanskrit Library.

   Used for Sanskrit phonemics, anusvāra, visarga, Vedic phonetic distinctions, and Sanskrit phonological representation. :chatgpt-content-reference{index="9"}

2. Peter M. Scharf,
   Śabdabrahman: A Linguistic Introduction to Sanskrit,
   The Sanskrit Library.

   Provides systematic treatment of Sanskrit phonology, Devanagari, sandhi, morphology, syntax, and compounds. :chatgpt-content-reference{index="10"}

3. Peter M. Scharf,
   Sanskrit introductory course materials,
   The Sanskrit Library.

   Covers phonology, Devanagari, sandhi, verbs, nouns, adjectives, and related Sanskrit structures. :chatgpt-content-reference{index="11"}

4. P. K. Pandey,
   Akshara-to-Sound Rules for Hindi.

   Used for Hindi Devanagari-to-sound correspondence, consonant/vowel systems, schwa deletion, syllabification, vowel processes, nasalization, and pronunciation variation. :chatgpt-content-reference{index="12"}

5. Linguistic Survey of India — Uttar Pradesh,
   Office of the Registrar General & Census Commissioner, Government of India.

   Used for Awadhi phonological observations, including the reported absence of vowel length in the surveyed variety, nasalized vowels, syllable patterns, and phoneme inventory. :chatgpt-content-reference{index="13"}

IMPORTANT:

Pronunciation evidence is language- and source-specific.

A pronunciation rule established for Modern Standard Hindi must not automatically be transferred to Awadhi or Sanskrit.

Likewise, a pronunciation feature found in one surveyed Awadhi variety must not automatically be treated as universal across all historical and regional Awadhi.

END
