# PHYSICS MASTER

## Purpose

This folder is the physical-truth authority for RAMAYAN.

It defines how materials and physical systems behave according to real-world physics.

The objective is not to make a simulation "look physical".

The objective is:

> Make the simulated world obey the best physically defensible representation of reality available to us.

## Hierarchy

REALITY
→ OBSERVATION / MEASUREMENT
→ SCIENTIFIC THEORY
→ VALIDATED MODEL
→ NUMERICAL MODEL
→ SIMULATION
→ PRODUCTION IMPLEMENTATION

A downstream implementation may simplify reality.

It may never silently redefine reality.

## Absolute principles

1. Conservation laws are hard constraints.
2. SI units are the internal standard.
3. Every numerical property has conditions where those conditions materially affect the property.
4. Every numerical property has provenance.
5. No fabricated precision.
6. Ranges are preferred when real variation exists.
7. Material anisotropy must be preserved where physically relevant.
8. Temperature dependence must be preserved where relevant.
9. Moisture dependence must be preserved where relevant.
10. Strain-rate dependence must be preserved where relevant.
11. Scale dependence must be preserved where relevant.
12. Loading direction must be preserved where relevant.
13. Surface condition must be preserved where relevant.
14. Contact pair must be preserved for friction.
15. Environmental conditions must not be silently omitted.
16. Model validity limits must be recorded.
17. Unknown values remain unknown.
18. Assumptions are explicitly marked.
19. Simulation parameters are never automatically treated as physical measurements.
20. Historical materials must not automatically inherit modern industrial properties.
21. Physical approximation must be distinguished from visual approximation.
22. A visually convincing result that violates known physics fails QA.
23. A physically uncertain phenomenon must remain visibly uncertain rather than being given invented certainty.
24. Physical changes must have physical causes.
25. Every important physical effect must have a causal chain.

## Required causal chain

CAUSE
→ FORCE / ENERGY / CONDITION
→ MATERIAL RESPONSE
→ PHYSICAL PROCESS
→ PROPERTY CHANGE
→ STATE CHANGE
→ OBSERVABLE EFFECT

Example:

rain
→ water contact
→ wetting
→ absorption
→ increased moisture content
→ swelling / mass change / altered friction
→ changed appearance and mechanical response

Do not jump directly from cause to appearance.

## Conservation

Where applicable, models must respect:

- conservation of mass
- conservation of linear momentum
- conservation of angular momentum
- conservation of energy
- charge conservation
- thermodynamic consistency

If a numerical method introduces artificial energy, momentum or mass, this must be measurable and reported as numerical error.

## Reality versus simulation

The following must remain separate:

PHYSICAL_FACT
PHYSICAL_MODEL
EMPIRICAL_RELATION
SIMULATION_MODEL
NUMERICAL_APPROXIMATION
PRODUCTION_APPROXIMATION

Never use "the engine does it this way" as evidence that nature behaves that way.

## Required uncertainty categories

- measurement uncertainty
- material variability
- environmental variability
- model uncertainty
- parameter uncertainty
- numerical error
- discretization error
- interpolation error
- extrapolation error
- historical uncertainty

## Required status values

KNOWN
MEASURED
LITERATURE_REPORTED
CALCULATED
DERIVED
EMPIRICALLY_MODELED
ESTIMATED
ASSUMED
UNKNOWN
NOT_APPLICABLE

UNKNOWN must never be replaced by a plausible value without explicitly changing the provenance to ESTIMATED or ASSUMED.

## Physics ownership

02_MATERIAL_DATABASE
    WHAT the material is.

03_PHYSICS
    HOW the material physically behaves.

04_SURFACE_STRUCTURE
    WHAT physical structure exists at visible scales.

05_BEHAVIOR
    HOW the material responds to environmental/interacting conditions.

06_STATES
    WHICH physical state it is currently in and how it transitions.

07_HISTORICAL_CANONICAL
    WHY the material/model is historically or canonically appropriate.

08_INTERACTION
    How systems interact across boundaries.

09_AI_PRODUCTION
    How physical truth is communicated to generation systems.

10_CONTINUITY_QA
    Whether physical truth remains consistent.

11_PRODUCTION_HANDOFF
    How validated physics reaches downstream production.

12_REGISTRY
    Versions, instances and traceability.

## No double ownership

If a value is owned here, downstream folders reference it rather than creating contradictory copies.

## No fake exactness

Reality may provide:

range = 600–750 kg/m³

A simulation may require:

representative = 675 kg/m³

The representative value must retain the original range, conditions and reason for selection.

The representative number does not become "the true density".

## Final principle

The project should prefer:

"I do not know"

over:

"I invented a number that looks plausible."
