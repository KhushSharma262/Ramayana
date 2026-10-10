# IMPERFECTIONS

## Purpose

Describe physically plausible deviations from ideal geometry and structure,
including defects, manufacturing traces, wear, and damage.

Imperfections must have a plausible origin and must remain consistent with
material identity, processing, loading, environment, age, and current state
where those are known.

## Classes to consider

- Geometric deviations and waviness.
- Scratches, abrasion, cuts, and gouges.
- Cracks, chips, fracture, and spalling.
- Pores, voids, inclusions, and pits.
- Fibers, grain deviations, knots, and weave irregularities.
- Corrosion, erosion, deposits, and surface reactions.
- Delamination, wear-through, and coating failure.
- Contamination and adhered particles.
- Repair marks and tool marks where evidenced.

These are candidate classes, not a requirement to place every defect on every
material.

## Causal consistency

Each significant defect should identify its likely cause or mark the cause
unknown. Do not create fracture patterns, corrosion, wear, or tool marks
without considering the mechanisms that produce them.

Defects must have plausible size, orientation, distribution, and interaction.
Cracks should relate to stress, flaws, material structure, or a supported
damage model. Wear should relate to contact and use. Corrosion or deposits
should be consistent with environmental exposure where known.

Do not infer a complete history from appearance alone.

## Distribution

Use material-appropriate spatial statistics. Avoid:
- Uniformly distributed defects when the mechanism implies localized damage.
- Identical cloned marks.
- Independent defects where one process should create connected features.
- Arbitrary random scratches with inconsistent directions.
- Repeated procedural clusters that reveal tiling.
- Damage that disappears or reappears without a state transition.

## Digital representation

Select geometry, displacement, normal, color, or material-state changes based
on the physical effect. Color variation alone cannot reproduce deep geometry,
silhouette changes, or physical occlusion.

A defect represented in multiple channels must have a deliberate scale
allocation and must not be accidentally exaggerated or counted twice.

## Validation

Inspect close views, grazing light, contact, motion, shadows, and continuity
between shots. Record whether defects are observed, inferred, simulated, or
art-directed. Preserve the distinction in the production record.
