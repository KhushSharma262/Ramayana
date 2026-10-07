# BREEDING / LINEAGE CONTROL

## Purpose

Control managed breeding, parentage, offspring identity, reproductive continuity, and inherited traits without confusing biological inheritance with learned or acquired characteristics.

## Individual Identity

Every offspring is a new individual.

Each offspring receives:

- unique animal_id
- species_id
- birth_context
- birth_date_or_estimate
- sex
- life_stage
- parent_references where known
- origin_status
- domestication_context
- continuity_state

A parent animal_id must never be reused as the offspring identity.

## Parentage

Where parentage is known, record independently:

- mother_id
- father_id where known
- parentage_confidence
- evidence
- source
- temporal context
- geographical context

Unknown parentage must remain UNKNOWN.

UNKNOWN != ABSENT.

## Biological Inheritance

Potential inherited characteristics may include biologically plausible traits such as:

- morphology
- coloration
- size tendency
- physical traits
- species-specific inherited characteristics

Inheritance must remain probabilistic where appropriate.

A parental trait must not automatically appear identically in the offspring.

## Learned Characteristics

The following are NOT automatically inherited biologically:

- training
- commands
- learned routines
- handler trust
- handler fear
- work experience
- equipment familiarity
- learned habits
- individual memories

These must develop through the offspring's own experience.

## Temperament

Parental temperament may inform a hypothesis about possible inherited tendencies where evidence supports it.

It must not be copied directly.

Example:

PARENT = calm

does NOT automatically mean:

OFFSPRING = calm

Temperament remains an individual state influenced by biology, development, environment, experience, and behavior.

## Domestication

Being born from domestic parents does not by itself establish every aspect of the offspring's individual domestication or training state.

Record:

- species domestication context
- individual origin
- human exposure
- habituation
- taming
- training

as separate dimensions.

## Managed Breeding

Managed breeding requires documented context where historically relevant:

- breeding purpose
- human management
- location
- season
- parent selection
- housing or herd context
- evidence
- historical status

Modern breeding practices must not automatically be projected into ancient settings.

## Reproductive State

Reproductive state must remain distinct from:

- sex
- life stage
- domestication
- training
- role
- health

Where relevant track:

- juvenile
- sexually immature
- sexually mature
- pregnant
- lactating
- post-reproductive
- breeding-active
- breeding-inactive
- unknown

Only biologically appropriate states may be assigned.

## Offspring Development

An offspring's state changes over time.

Development may affect:

- body size
- proportions
- coordination
- behavior
- social relationships
- training capacity
- workload
- equipment compatibility

Age progression must be continuous.

A young animal cannot suddenly appear as an adult without a documented temporal transition.

## Training of Offspring

Training begins from the offspring's own state.

A parent being:

- trained
- expert
- working
- military
- mounted
- ceremonial

does not automatically establish the offspring's equivalent state.

## Role of Offspring

An offspring may later receive roles such as:

- companion
- working
- riding
- mounted
- military
- ceremonial
- royal
- agricultural
- draft
- pack

only through independent contextual justification.

## Equipment

Parental equipment does not automatically belong to offspring.

If equipment is transferred:

EQUIPMENT_TRANSFER_EVENT

must be recorded.

The equipment must also be checked for compatibility with:

- species
- size
- age
- body development
- intended use

## Human Relationships

A parent's trusted relationship with a human does not automatically transfer to the offspring.

The offspring develops its own relationship history.

## Lineage Continuity

If lineage becomes narratively relevant, maintain:

- lineage_id
- parent references
- offspring references
- generation
- evidence
- confidence
- temporal continuity

Lineage records must not become competing animal identities.

## Population-Level Breeding

Background domestic populations may be represented at population level when individual parentage is irrelevant.

Once an individual becomes continuity-relevant:

INDIVIDUAL_ID_REQUIRED

## Historical Reconstruction

Historical breeding practices require evidence appropriate to:

- period
- geography
- species
- human culture
- intended use

Modern breed standards must not automatically define ancient animals.

## Canonical / Mythological Cases

If canonical tradition attributes unusual ancestry, origin, manifestation, or supernatural parentage:

- preserve the canonical claim
- distinguish it from biological inference
- do not convert symbolic/canonical ancestry into unsupported zoological genetics
- use the supernatural/canonical policy where applicable

## Death and Lineage

Death ends active individual continuity but does not erase:

- parentage
- offspring
- lineage
- historical record

The animal_id remains permanently reserved.

## Fail-Closed Rule

If parentage affects a production decision and cannot be established:

PARENTAGE = UNKNOWN

If reproductive state is required but unresolved:

REPRODUCTIVE_STATE = UNKNOWN

If an offspring's identity or developmental state is unresolved:

PRODUCTION = BLOCKED

## Master Rule

BIOLOGICAL INHERITANCE != LEARNED EXPERIENCE

PARENT_IDENTITY != OFFSPRING_IDENTITY

PARENT_TRAINING != OFFSPRING_TRAINING

PARENT_RELATIONSHIP != OFFSPRING_RELATIONSHIP

PARENT_EQUIPMENT != OFFSPRING_EQUIPMENT

LINEAGE EXPLAINS ORIGIN.

LINEAGE DOES NOT REPLACE INDIVIDUAL IDENTITY.
