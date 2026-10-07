# ECOLOGICAL UNCERTAINTY PROPAGATION

## Purpose

Uncertainty must propagate downstream.

A downstream claim cannot become more certain than the evidence chain supporting it.

## Chain

LOCATION
→ LANDSCAPE
→ HABITAT
→ VEGETATION
→ WATER
→ RESOURCES
→ SPECIES
→ POPULATION
→ SCENE

## Rule

If an upstream dependency is:

UNKNOWN
AMBIGUOUS
CONTESTED
LOW_CONFIDENCE
UNVERIFIED

the dependent claim must explicitly inherit or resolve that uncertainty.

## Example

If:

LOCATION = PROVISIONALLY_RESOLVED

then:

LANDSCAPE = cannot silently become HIGH_CONFIDENCE.

## Allowed Resolution

A downstream claim may have stronger evidence of its own only if that evidence independently resolves the uncertainty.

## Forbidden

Do not hide upstream uncertainty by filling downstream fields with apparently precise values.

## Required

uncertainty_source:
uncertainty_type:
uncertainty_scope:
propagated_to:
resolution_status:
