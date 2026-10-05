# RAMAYANA AUDIO LANGUAGE CONTINUITY CONTRACT

## PROJECT LANGUAGE HIERARCHY

PRIMARY PRODUCTION LANGUAGE:
Hindi

SECONDARY / SOURCE-CONTEXT LANGUAGE:
Awadhi

SACRED / RITUAL LANGUAGE:
Sanskrit

## CORE RULE

Major narrative dialogue should primarily be Hindi.

Awadhi should be used where justified by:
- Ramcharitmanas context
- canonical/source context
- character/context requirements
- poetic or cultural requirements
- explicitly approved production decisions

Sanskrit should be used where justified by:
- mantra
- ritual
- sacred recitation
- canonical Sanskrit text
- specifically approved dialogue/context

## IMPORTANT

AI must NOT arbitrarily switch language.

Every dialogue must have:

- language_id
- language_authority
- language_reason
- speaker
- scene
- dialogue_id
- source/reference
- pronunciation rule
- translation status
- approval state

## LANGUAGE PRIORITY

Hindi:
Primary major-dialogue language.

Awadhi:
Secondary language with controlled usage.

Sanskrit:
Sacred/ritual/canonical language with controlled usage.

## LANGUAGE CONTINUITY

A character's language does not change randomly between shots.

A scene's language does not change randomly between cuts.

A dialogue does not switch language without an explicit reason.

A regenerated AI output must inherit the approved language.

## LANGUAGE SWITCHING

Allowed only when supported by:

- character requirement
- scene requirement
- ritual requirement
- source/canon requirement
- narrative requirement
- approved production decision

## NO SILENT TRANSLATION

AI must not silently translate:

Hindi → Awadhi
Awadhi → Hindi
Sanskrit → Hindi
Hindi → Sanskrit
Awadhi → Sanskrit

without an explicit translation record.

## CANON VS PRODUCTION LANGUAGE

The canonical source language and the production dialogue language are separate attributes.

Example:

Source:
Awadhi

Production:
Hindi

This does NOT mean the source has been changed.

It means the production-language decision is Hindi.

## VOICE CONTINUITY

Changing language must not accidentally change:

- character identity
- voice identity
- timbre
- age
- emotional state
- speaking style
- pronunciation identity

Natural language-specific articulation may vary within controlled limits.

## FINAL MODEL

CANON / SOURCE
→ LANGUAGE DECISION
→ DIALOGUE LANGUAGE
→ PRONUNCIATION
→ VOICE
→ SPEECH PERFORMANCE
→ AI GENERATION
→ SYNC
→ SUBTITLE
→ QA
→ APPROVAL
→ LOCK

## DEFAULT

Unless explicitly overridden:

MAJOR DIALOGUE = HINDI

AWADHI = CONTROLLED SECONDARY USAGE

SANSKRIT = SACRED / RITUAL / CANONICAL USAGE
