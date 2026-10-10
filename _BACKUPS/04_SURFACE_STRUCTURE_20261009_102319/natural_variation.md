# NATURAL VARIATION AND CORRELATION

## Principle

Variation must arise from a defined material, process, environmental condition,
or explicitly labelled production choice. Randomness alone is not a physical
explanation.

## Variation dimensions

Where applicable, evaluate:
- Feature size and shape.
- Orientation and anisotropy.
- Density, spacing, and clustering.
- Color and reflectance variation.
- Layer thickness and local structure.
- Grain, fiber, pore, and inclusion distributions.
- Wear, contamination, and environmental gradients.
- Correlation between neighboring features.
- Correlation across material scales.
- Temporal evolution and shot continuity.

## Correlated variation

Related features should share the dependencies that create them. Examples
include aligned scratches from a common motion, grain following material
structure, connected cracking from a damage process, and deposits that follow
gravity or fluid flow when those mechanisms apply.

Do not use these examples as universal rules. Establish the actual causal
relationship for the material and scene.

## Statistical controls

For procedural systems, document:
- Distribution family and its justification.
- Parameter values and uncertainty.
- Random seed and deterministic reproducibility policy.
- Correlation length and directional dependence.
- Spatial frequency limits.
- Boundary conditions.
- Relationship between scales.
- Clamping and failure behavior.
- Method for preventing visible tiling.
- Versioning and continuity controls.

Do not use a named distribution merely because it is convenient. Validate it
against measurements or explicitly mark it as a reconstruction choice.

## Continuity

Keep the same material identity and physical scale across shots unless the
material or state actually changes. Camera distance may change visibility,
not the underlying physical size of features.

Any LOD or stochastic transition must avoid popping, flicker, changing
roughness without justification, and discontinuous shadow or reflection
behavior.

## Validation

Compare spatial statistics where reference data exists. Test repeatability,
multiple seeds, camera movement, and adjacent shots. Visual randomness is
not proof of statistical realism.
