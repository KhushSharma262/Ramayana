# SPECIES DEFINITION

## PURPOSE

Defines what qualifies as a species-level entity in the project.

## A SPECIES RECORD REPRESENTS

A biological species or explicitly justified taxonomic entity supported by evidence.

## A SPECIES RECORD DOES NOT REPRESENT

- a character
- a named individual
- a breed
- a visual design
- a training condition
- a costume/tack configuration
- a behavior state
- a scene role

## REQUIRED

species_id
accepted_name
scientific_name
taxonomy_source
identification_basis
confidence
status

## SPECIES VS BREED

Species identity belongs here.

Domestic breed/type belongs to:

06_DOMESTIC_TRAINED

where applicable.

## SPECIES VS INDIVIDUAL

Species:
biological identity shared by members of the species.

Individual:
one particular animal.

## SPECIES VS POPULATION

Population information belongs downstream where ecological detail is required.

This layer establishes the biological identity that population information references.

## RULE

A species record must be based on evidence, not on what an AI model can generate convincingly.
