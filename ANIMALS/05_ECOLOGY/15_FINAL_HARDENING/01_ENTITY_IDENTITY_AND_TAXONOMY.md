# ECOLOGY ENTITY IDENTITY AND TAXONOMY

## PURPOSE

Prevent duplicate, ambiguous, drifting, or silently substituted ecological entities.

Every ecological entity must possess a stable identity.

## ENTITY CLASSES

- ECO-LOC — ecological location
- ECO-HAB — habitat
- ECO-LAND — landscape
- ECO-COM — ecological community
- ECO-WAT — water system
- ECO-VEG — vegetation community
- ECO-TAX — biological taxon
- ECO-POP — population
- ECO-RES — resource
- ECO-DIS — disturbance
- ECO-HUM — human ecological activity
- ECO-EVT — ecological event
- ECO-SCN — scene ecological state

## IDENTITY RULE

A common name is NOT an identity.

Every production-relevant biological entity requires:

entity_id:
entity_class:
accepted_name:
common_names:
scientific_name:
taxonomic_authority:
taxonomy_version:
synonyms:
geographic_scope:
temporal_scope:
identity_status:

## TAXON STATUS

Allowed:

- RESOLVED
- PROVISIONALLY_RESOLVED
- SYNONYM
- CONTESTED
- UNRESOLVED
- BLOCKED

## HARD RULE

If a claim requires species-level precision and the taxon is unresolved:

UNRESOLVED TAXON → BLOCKED

No silent substitution.

Example:

"deer" cannot silently become chital.

"monkey" cannot silently become rhesus macaque.

"snake" cannot silently become cobra.

## TAXONOMIC DRIFT

If taxonomy changes:

OLD ENTITY → TAXONOMIC REVIEW → MAPPING DECISION → NEW VERSION

Do not rewrite historical records.

Previous taxonomy remains preserved.

## DUPLICATE DETECTION

Potential duplicates must be compared using:

- scientific name
- accepted name
- synonym
- taxonomic authority
- geographic applicability
- temporal applicability
- entity purpose

Duplicate entities must be merged through controlled versioning, never by destructive overwrite.

## PRODUCTION RULE

Every scene-relevant animal occurrence must resolve to:

TAXON ENTITY
+
POPULATION CONTEXT
+
GEOGRAPHIC CONTEXT
+
TEMPORAL CONTEXT

Otherwise BLOCKED.
