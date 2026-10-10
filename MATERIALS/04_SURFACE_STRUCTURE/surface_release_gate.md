# SURFACE STRUCTURE RELEASE GATE

## Gate 1: Documentation

Required files exist, are non-empty, and cover the declared scope.

## Gate 2: Evidence

Production-critical claims have traceable sources, source locations,
applicability limits, and uncertainty. Unknown claims remain unknown.

## Gate 3: Material-specific definition

Each production-critical material has linked feature records with dimensions,
units, causal origin, spatial statistics, representation choices, and
relevant material state.

## Gate 4: Physical review

Check geometry and scale consistency, relevant physical constraints,
layer relationships, and model applicability. Record unresolved issues.

## Gate 5: Renderer validation

Run the applicable controlled tests in the actual target renderer.
Record renderer/version, settings, reference conditions, outcomes, and failures.

## Gate 6: Production validation

Check intended shot distances, lighting, motion, filtering, LOD, continuity,
and visible artifacts. Record the approved scope.

## Gate 7: Approval

Approval must identify the reviewed version, reviewer, date, scope, failures,
known limitations, and approved exceptions.

## Release statuses

BLOCKED: a critical dependency or required test is missing.
IN_PROGRESS: work is underway.
PASS_WITH_LIMITATIONS: required tests passed within a stated scope, with
known limitations documented and accepted.
PASS: all defined gates for the specified scope passed.
NOT_APPLICABLE: a gate does not apply, with justification.

Folder creation and text validation can satisfy only parts of Gate 1.
They cannot automatically pass evidence, physical, renderer, or production
gates.

Never issue a global PASS for every possible material and scene.
