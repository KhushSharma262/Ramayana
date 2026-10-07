---
file_id: BIO-BIOLOGY_MASTER_RULES
domain: BIOLOGY
canonical_owner: BIOLOGY
file_role: CANONICAL
status: ACTIVE
research_requirement: species_specific
production_relevance: animal_biology
last_validated: 2026-10-06
---
# BIOLOGICAL DATA MASTER RULES

STATUS:
APPROVED SYSTEM RULES

SCOPE:
CURRENT REAL-WORLD ANIMAL BIOLOGY.

THIS SYSTEM DOES NOT:
- reconstruct extinct animals
- reconstruct ancient animal species
- invent ancient breeds
- invent ancient physiological traits
- treat mythology as zoological evidence
- convert artistic depictions into biological facts.

============================================================
1. EVIDENCE HIERARCHY
============================================================

Priority:

1. Primary scientific literature
2. Government / wildlife authority
3. Recognized zoological institutions
4. Peer-reviewed veterinary sources
5. Major biodiversity databases
6. University zoology resources
7. Established specialist organizations
8. Secondary references
9. AI/model knowledge

AI knowledge alone is NOT sufficient evidence for a disputed or
high-impact biological claim.

============================================================
2. UNKNOWN RULE
============================================================

If a field cannot be established with sufficient evidence:

UNKNOWN

If research has not yet been performed:

NOT_RESEARCHED

If evidence exists but does not establish certainty:

UNCERTAIN

If different reliable sources materially disagree:

CONFLICTED

NEVER replace any of these with an invented value.

============================================================
3. SPECIES OVERRIDE HIERARCHY
============================================================

APPROVED INDIVIDUAL CURRENT STATE
        >
APPROVED INDIVIDUAL BASELINE
        >
APPROVED SPECIES RECORD
        >
CURRENT ZOOLOGICAL EVIDENCE
        >
GENERAL BIOLOGICAL KNOWLEDGE
        >
AI ASSUMPTION

AI ASSUMPTION MUST NEVER override an approved record.

============================================================
4. SPECIES ≠ BREED ≠ INDIVIDUAL
============================================================

SPECIES:
Biological species identity.

DOMESTIC TYPE:
Broad domestic form or production classification.

BREED:
Specific modern breed, when applicable.

INDIVIDUAL:
Actual animal used in production.

Never use a breed characteristic as a universal species
characteristic.

============================================================
5. AGE
============================================================

Age must be represented using:

chronological_age
biological_age
life_stage

A species-wide age range must never override an established
individual age.

============================================================
6. SEX
============================================================

Sex-specific facts apply only where biologically relevant.

Do not infer sex from:
- personality
- behavior stereotype
- body colour alone
- AI appearance
- anthropomorphic assumptions.

============================================================
7. HEALTH
============================================================

Health is stateful.

HEALTHY
→ INJURED
→ TREATED
→ HEALING
→ RECOVERED

is an example transition.

A wound, disability, disease or physical limitation must persist
until an explicit biological transition removes it.

============================================================
8. NUTRITION
============================================================

Diet must be species-specific.

Do not infer diet from:
- cinematic expectation
- human food culture
- common children's imagery
- another animal species.

============================================================
9. SENSES
============================================================

Never assume animals perceive the world like humans.

Species-specific sensory information must be used for:
- vision
- hearing
- smell
- taste
- touch
- balance
- proprioception
- field of view
- sensory limitations.

============================================================
10. MOVEMENT
============================================================

Biology defines capability and limitation.

MOVEMENT owns reusable motion assets.

An animal cannot:
- exceed biological capability
- ignore injury
- ignore fatigue
- move like another species
- perform anatomically impossible actions.

============================================================
11. BEHAVIOR
============================================================

Do not use human emotion labels as biological truth.

Use internal biological states such as:

alertness
fear response
stress
curiosity
hunger
thirst
fatigue
defensive state
reproductive state
social state

These must produce species-appropriate behavior.

============================================================
12. CURRENT BIOLOGY
============================================================

The biological baseline is modern/current zoology.

Historical reconstruction is NOT silently inserted.

============================================================
13. SOURCE TRACEABILITY
============================================================

Every high-value biological claim should be traceable:

SOURCE
→ EVIDENCE
→ CLAIM
→ INTERPRETATION
→ APPROVAL
→ SPECIES RECORD
→ INDIVIDUAL RECORD
→ PRODUCTION.

============================================================
14. AI GENERATION SAFETY
============================================================

The generation system must NOT invent:

- extra limbs
- wrong number of toes
- incorrect horns
- incorrect antlers
- incorrect ears
- incorrect eyes
- impossible joints
- impossible gait
- impossible body proportions
- impossible sexual anatomy
- impossible coloration
- impossible age morphology
- impossible feeding mechanics
- impossible sensory behaviour
- impossible reproduction
- impossible injuries.

============================================================
15. ABSENCE OF EVIDENCE
============================================================

Absence of evidence is NOT permission to invent.

UNKNOWN remains UNKNOWN until researched.

============================================================
16. INDIVIDUAL PRECEDENCE
============================================================

Example:

SPECIES:
Asian elephant

INDIVIDUAL:
adult female

STATE:
injured forelimb

The production system must generate the injured individual,
not a generic healthy elephant.

============================================================
17. CONFLICT RULE
============================================================

If two sources materially disagree:

DO NOT silently average them.

Record:

CONFLICTED
source_a
source_b
difference
scope
possible explanation
decision
approval.

============================================================
18. DATA COMPLETENESS
============================================================

A blank field is forbidden.

Every field must contain one of:

KNOWN
UNKNOWN
NOT_RESEARCHED
UNCERTAIN
CONFLICTED
NOT_APPLICABLE
SPECIES_SPECIFIC_REQUIRED

or a supported factual value.

============================================================
19. PRODUCTION RULE
============================================================

If biological truth and cinematic convenience conflict:

BIOLOGICAL TRUTH WINS

unless an explicit approved directorial reconstruction is recorded.


