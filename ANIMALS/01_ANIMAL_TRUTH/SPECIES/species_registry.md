# SPECIES REGISTRY

## PURPOSE

Master index of biological species/entities recognized by the project.

## REQUIRED RECORD

species_id
preferred_name
scientific_name
taxonomic_status
source_terms
common_names
regional_names
canon_status
scope_status
identification_confidence
source_basis
notes

## SPECIES ID

Each biological species/entity receives a stable unique ID.

Recommended format:

SP-0001
SP-0002
SP-0003

IDs must not change because:

- a common name changes
- a translation changes
- a scene changes
- an individual changes
- a visual design changes

## DUPLICATE CONTROL

Before creating a species record, check whether the species already exists.

Different names do not automatically mean different species.

## UNKNOWN TAXONOMY

If exact species-level identification is unsupported:

do not fabricate a species_id.

Use an appropriately qualified entity or unresolved candidate status.

## SCOPE

This registry is biological.

It is not a list of every animal visible in every shot.

## INDIVIDUALS

Individuals reference species_id.

They do not duplicate the species record.

## DOWNSTREAM

Other systems should reference species_id rather than repeatedly rewriting the biological identity.
