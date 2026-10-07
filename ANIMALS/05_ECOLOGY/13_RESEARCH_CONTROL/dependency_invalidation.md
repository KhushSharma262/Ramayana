# ECOLOGICAL DEPENDENCY INVALIDATION

## Purpose

Prevent stale downstream claims after an upstream change.

## Dependency Chain

LOCATION
→ GEOGRAPHY
→ LANDSCAPE
→ HABITAT
→ CLIMATE / WATER / SOIL
→ VEGETATION
→ RESOURCE
→ SPECIES
→ POPULATION
→ HUMAN ECOLOGY
→ SCENE
→ AI PRODUCTION

## Rule

If an approved upstream dependency changes materially:

dependent claims become:

STALE
or
REVIEW_REQUIRED

until revalidated.

## Examples

Location interpretation changes
→ landscape requires review.

Habitat changes
→ species occurrence requires review.

Water availability changes
→ resource and population claims may require review.

Species occurrence changes
→ scene composition requires review.

## Hard Rule

Approved status does not survive a material dependency change automatically.

## Required

dependency_id:
parent_claim:
child_claim:
dependency_type:
invalidation_trigger:
current_status:
last_validated:
