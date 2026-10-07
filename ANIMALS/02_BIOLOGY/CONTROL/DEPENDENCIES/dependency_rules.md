# BIOLOGICAL DEPENDENCY CONTROL

Biological information forms a dependency graph.

Examples:

hydration
→ thermoregulation
→ fatigue
→ activity
→ movement
→ behavior

injury
→ pain/limitation
→ gait
→ movement
→ behavior
→ continuity

age
→ body size
→ anatomy
→ physiology
→ behavior
→ reproductive state

sex
→ sex-specific anatomy
→ physiology
→ reproduction
→ behavior where biologically supported

nutrition
→ body condition
→ energy
→ activity
→ health

## Rule

When an upstream biological fact changes, all dependent records must be
revalidated before production release.
