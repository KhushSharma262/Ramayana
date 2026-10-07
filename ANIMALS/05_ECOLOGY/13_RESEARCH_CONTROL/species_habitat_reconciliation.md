# SPECIES HABITAT RECONCILIATION

## Purpose

Ecology and Animal Biology/Behavior systems can describe related facts.

They must not silently contradict each other.

## Ecology Provides

- habitat availability
- geographic plausibility
- ecological distribution
- resource availability
- population context

## Animal Systems Provide

- biological requirements
- habitat preferences
- tolerance limits
- movement capability
- behavioral requirements

## Reconciliation States

COMPATIBLE
CONDITIONALLY_COMPATIBLE
CONFLICTED
UNKNOWN
BLOCKED

## Rule

A species may appear in a habitat only when:

GEOGRAPHY
+
HABITAT
+
CLIMATE
+
RESOURCE
+
SPECIES_REQUIREMENTS

are compatible.

## Contradiction Examples

Ecology:
species absent from region.

Animal data:
species requires that region.

Result:
CONFLICTED → REVIEW_REQUIRED.

## No Silent Resolution

Conflicting systems must not be resolved merely by choosing whichever makes the scene look better.
