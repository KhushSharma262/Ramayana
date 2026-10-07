# ECOLOGICAL SPATIAL SCALE CONTAINMENT

## Scale Hierarchy

GLOBAL
→ SOUTH ASIA
→ INDIA
→ REGION
→ LANDSCAPE
→ HABITAT
→ MICROHABITAT
→ SCENE

## Rule

Claims must declare their spatial scope.

## Scope Leakage Is Forbidden

A microhabitat observation cannot automatically become a regional rule.

A scene observation cannot automatically become a landscape-wide rule.

A regional possibility cannot automatically become a scene-level occurrence.

## Required

claim_scope:
parent_scope:
scope_relationship:
locality:
generalizability:
scope_confidence:

## Allowed

REGIONAL
→ landscape constraints

LANDSCAPE
→ habitat constraints

HABITAT
→ scene plausibility

## Forbidden

SCENE
→ automatic regional generalization.
