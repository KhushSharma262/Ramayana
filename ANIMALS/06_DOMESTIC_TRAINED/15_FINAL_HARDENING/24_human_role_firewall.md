# HUMAN ROLE / HANDLER RELATIONSHIP FIREWALL

## Purpose

Ensure that human-animal relationships are represented as distinct, evidence-based relationships rather than being collapsed into a generic ownership or handler state.

## Core Rule

An animal may have multiple human relationships simultaneously.

One relationship must never silently overwrite another.

## Relationship Types

Allowed relationship types include:

- UNKNOWN_HUMAN
- FAMILIAR_HUMAN
- REGULAR_HANDLER
- OWNER
- TRAINER
- RIDER
- HERDER
- KEEPER
- TRUSTED_HANDLER
- FEARED_HANDLER

Additional relationship types require explicit approval.

## Relationship Identity

Important relationships should record:

- relationship_id
- animal_id
- human_id
- relationship_type
- start_context
- start_date_or_period where known
- end_context where applicable
- evidence
- confidence
- continuity_state
- approval

## Relationship Does Not Equal Another Relationship

The following assumptions are invalid:

OWNER = TRAINER

OWNER = TRUSTED_HANDLER

TRAINER = OWNER

RIDER = OWNER

KEEPER = OWNER

HANDLER = TRAINER

FAMILIAR = TRUSTED

PHYSICAL_PROXIMITY = TRUST

WORKING_WITH_ANIMAL = OWNER

Each relationship must be established independently when relevant.

## Trust

Trust is a behavioral relationship state.

Domestic / Trained records the human relationship context.

Behavior remains authoritative for the animal's actual behavioral response.

Therefore:

TRUSTED_HANDLER

does not guarantee:

CALM_BEHAVIOR

OBEDIENCE

NO_FEAR

NO_AGGRESSION

Trust may coexist with temporary fear, stress, pain, confusion, or avoidance.

## Fear

A feared handler relationship does not automatically mean the animal is permanently fearful.

Behavior determines the immediate behavioral state.

Domestic / Trained records the established human relationship context.

## Training Relationship

A trainer is a human associated with training.

Training status belongs to the animal.

A trainer's presence does not automatically prove that the animal is currently trained.

## Rider Relationship

A rider is associated with riding.

A rider does not automatically become:

- owner
- trainer
- keeper
- trusted handler

The animal's riding history must be independently established.

## Keeper Relationship

A keeper is associated with care or management.

A keeper does not automatically establish:

- ownership
- training
- trust
- riding relationship

## Owner Relationship

Ownership is a human/social/legal/cultural context.

Ownership does not automatically imply:

- daily handling
- training
- emotional bond
- trust
- riding
- husbandry responsibility

Historical ownership concepts must be interpreted according to the appropriate historical context.

## Multiple Humans

An animal may simultaneously have:

OWNER
+
TRAINER
+
RIDER
+
KEEPER

These relationships may belong to different humans.

They must not be collapsed into one human_id.

## Relationship Changes

Relationship changes require explicit events.

Examples:

- NEW_HANDLER
- HANDLER_REASSIGNMENT
- TRAINER_CHANGE
- RIDER_CHANGE
- OWNER_CHANGE
- KEEPER_CHANGE
- TRUST_CHANGE
- FEAR_RELATIONSHIP_ESTABLISHED
- RELATIONSHIP_ENDED

Each relevant event creates or updates a continuity snapshot.

## Handler Continuity

If an important animal has an established handler, later scenes inherit that relationship unless:

- the handler changes
- the relationship ends
- the animal is transferred
- the animal dies
- the relationship is invalidated
- an approved narrative event changes it

A regenerated image cannot silently replace the handler.

## Human Replacement

If a handler is replaced:

OLD_HUMAN
→ RELATIONSHIP_CHANGE_EVENT
→ NEW_HUMAN
→ UPDATED_RELATIONSHIP_STATE
→ NEW_SNAPSHOT

The new human does not automatically inherit the old human's:

- trust
- familiarity
- training relationship
- behavioral history
- ownership
- authority

## Historical Context

Human-animal relationships must be interpreted according to:

- historical period
- geography
- social structure
- cultural context
- species
- animal role
- evidence

Modern concepts of ownership, pet keeping, training, or animal welfare must not automatically be projected into ancient settings.

## Canonical Context

Canonical narrative may establish a relationship without providing all real-world details.

When canonical evidence is incomplete:

- preserve the canonical relationship
- mark unsupported details as UNKNOWN
- do not invent precise historical mechanisms

## Scene Rule

A human standing beside an animal does not automatically establish a relationship.

A human touching an animal does not automatically establish trust.

A human riding an animal does not automatically establish ownership.

A human feeding an animal does not automatically establish permanent ownership.

## AI Production Firewall

Generated imagery cannot establish:

- ownership
- trust
- training
- familiarity
- historical relationship
- identity

AI output may depict an already-approved relationship.

It cannot create one.

## Fail-Closed Rule

If a required human relationship is unresolved:

RELATIONSHIP = UNKNOWN

If the relationship is necessary to interpret the scene and remains unresolved:

PRODUCTION = BLOCKED

## Master Rule

RELATIONSHIP MUST BE EXPLICIT.

PROXIMITY != RELATIONSHIP.

OWNERSHIP != TRUST.

TRAINING != OWNERSHIP.

RIDING != OWNERSHIP.

HANDLING != TRUST.

A human-animal relationship is a continuity state, not a visual assumption.
