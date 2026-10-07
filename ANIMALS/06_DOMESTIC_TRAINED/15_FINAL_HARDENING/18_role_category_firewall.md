# ROLE / CATEGORY FIREWALL

## Purpose

Prevent production categories and human-use classifications from becoming hidden biological taxonomies or competing animal databases.

## Contextual Classification Rule

The following are contextual roles or use classifications:

- COMPANION
- WORKING
- DRAFT
- PACK
- HERDING
- GUARD
- RIDING
- MOUNTED
- MILITARY
- CEREMONIAL
- ROYAL
- AGRICULTURAL
- TRANSPORT
- BREEDING

They are NOT:

- species
- subspecies
- breed
- domestication state
- taming state
- training state
- biological sex
- life stage
- individual identity

## Multi-Role Rule

An individual animal may possess multiple approved roles simultaneously.

Example:

DOMESTICATED
+
ADVANCED_TRAINING
+
RIDING
+
MILITARY
+
CEREMONIAL

These are independent dimensions.

One role must not overwrite another unless an explicit approved state transition removes it.

## Role Assignment

A role requires contextual justification.

Relevant inputs may include:

- species
- individual identity
- historical period
- geographical context
- human context
- training state
- work context
- equipment
- evidence
- continuity

## Historical Role Firewall

Terms such as:

- royal horse
- war elephant
- ceremonial elephant
- companion animal
- palace animal
- temple animal
- hunting animal

must initially be treated as contextual descriptions.

They must not automatically imply:

- a distinct breed
- a distinct biological type
- specialized anatomy
- specialized temperament
- advanced training
- particular equipment
- historical certainty

Those implications require independent evidence.

## Role Does Not Create Training

The following are invalid assumptions:

ROYAL → TRAINED

CEREMONIAL → TRAINED

MILITARY → EXPERT

MOUNTED → ADVANCED

WORKING → WORK_READY

COMPANION → TAMED

Each required state must be independently established.

## Role Does Not Create Equipment

The following are invalid assumptions:

MOUNTED → SADDLE

MILITARY → ARMOR

CEREMONIAL → ORNAMENT

WORKING → HARNESS

ROYAL → DECORATIVE EQUIPMENT

Equipment requires its own evidence, compatibility assessment, assignment and continuity state.

## Role Does Not Create Human Relationship

The presence of a role does not establish:

- owner
- trainer
- rider
- keeper
- handler
- trusted handler

Human relationships require independent evidence or explicit continuity events.

## Category Folder Prohibition

Production categories must not become independent databases.

There must be no separate canonical databases for:

- royal animals
- ceremonial animals
- mounted animals
- working animals
- companion animals

The canonical animal/state record remains authoritative.

## Duplicate Record Rule

If a category-specific document references an animal, it must use:

- animal_id
- canonical state reference
- approved snapshot reference

It must not create a competing complete identity.

## Role Removal

Removing a role requires an explicit event.

Example:

WORKING
→ ROLE_REMOVAL_EVENT
→ NO_LONGER_WORKING

The removal does not automatically alter:

- domestication
- training
- identity
- species
- human relationship
- equipment
- biological state

unless separately justified.

## Role Continuity

An approved role persists across scenes until:

- explicitly removed
- replaced
- invalidated
- historically superseded
- or the animal's identity ends

A regenerated image cannot silently change an animal's role.

## Fail-Closed Rule

If a required role classification is uncertain:

ROLE = UNKNOWN

not an invented category.

If the role is required for the scene and remains unresolved:

PRODUCTION = BLOCKED

## Master Rule

CATEGORY != ENTITY

ROLE != SPECIES

ROLE != BREED

ROLE != DOMESTICATION

ROLE != TRAINING

ROLE != EQUIPMENT

ROLE != HUMAN RELATIONSHIP

USE != BIOLOGY

A role describes what the animal is being used for or how it is situated in context. It does not redefine what the animal is.
