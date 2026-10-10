# Material Acceptance Criteria

Defines review gates for material records and renders.

## Gate A — Identity

- Base material and category are identifiable or explicitly unresolved.
- Identity locks and construction are recorded to the degree supported by evidence.
- No unexplained substitution is present.

## Gate B — Evidence

- Source classification is recorded.
- Claims are traceable to actual sources or marked as reconstruction/directorial choice.
- Alternatives and uncertainty are preserved where evidence is incomplete.

## Gate C — Physical behavior

- Surface response is plausible for the proposed material.
- Relevant roughness, reflectance, transmission, subsurface response, and scale are reviewed where applicable.
- Inapplicable properties are explicitly marked, not silently ignored.

## Gate D — State and continuity

- State causes and persistence are plausible.
- Adjacent shots preserve identity and justified state transitions.
- Damage, wetness, dust, and weathering do not appear or disappear without cause.

## Gate E — Renderer validation

- Test scene, renderer/version, material configuration, lighting, and relevant output are recorded.
- Result is PASSED or FAILED only after execution.
- Unrun tests remain NOT_STARTED or OPEN.

A document review can pass without implying that a renderer test has passed. Record the two statuses separately.
