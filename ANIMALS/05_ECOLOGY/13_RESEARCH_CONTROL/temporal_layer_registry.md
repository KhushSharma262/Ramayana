# ECOLOGY TEMPORAL LAYER REGISTRY

Every ecological claim must declare its temporal domain.

## Allowed Domains

MODERN
HISTORICAL
CANONICAL
INFERRED
PRODUCTION

## MODERN

Contemporary ecological evidence.

Must not automatically be projected into ancient settings.

## HISTORICAL

Evidence concerning a historical period.

Requires temporal applicability.

## CANONICAL

Information explicitly or implicitly derived from the selected Ramayana textual tradition.

Canonical description must not automatically become measured scientific fact.

## INFERRED

Reasoned ecological reconstruction derived from evidence.

Inference must identify its supporting evidence.

## PRODUCTION

A production decision based on approved evidence and interpretation.

Production is not evidence.

## Hard Rule

Every production ecological claim must have:

temporal_domain:
temporal_start:
temporal_end:
temporal_precision:
temporal_basis:

## Forbidden

MODERN
→ silently converted to
HISTORICAL

CANONICAL
→ silently converted to
SCIENTIFIC_MEASUREMENT

INFERENCE
→ silently converted to
DIRECT_EVIDENCE
