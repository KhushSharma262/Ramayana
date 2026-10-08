# CINEMATOGRAPHY SYSTEM INTEGRITY

## AUTHORITY

The cinematography system is modular.

Each parameter has one authoritative owner.

CAMERA owns physical camera execution.

LENSES owns optical behavior.

FRAMING owns image-space organization.

LIGHTING owns illumination and material-light interaction.

GRAMMAR owns relationships between shots and editorial structure.

SHOT_DESIGN owns individual-shot construction and purpose.

RESEARCH supplies evidence and references but has no production authority.

## NO DUPLICATE AUTHORITY

A root file may explain a concept at a system level but must not redefine detailed mechanics owned by another subsystem.

If two files appear to conflict, the authoritative subsystem wins.

## CAUSALITY

Every generated cinematographic decision must have a traceable cause.

A parameter without a reason should normally remain at its physically appropriate default.

## STATE

Cinematography is stateful.

Relevant state includes:

- camera position
- camera orientation
- camera support
- movement state
- lens state
- focus state
- exposure state
- lighting state
- subject positions
- environmental state
- spatial geography
- screen direction
- temporal position
- shot information state

A new shot inherits applicable state from the previous state unless a deliberate change is established.

## UNCERTAINTY

Unknown information must remain unknown.

Do not invent technical details merely to make a shot specification appear complete.

When insufficient information exists, choose the minimum physically plausible assumption.

## AI ARTIFACT FIREWALL

No subsystem may knowingly request a visual behavior that produces:

- morphing
- flicker
- texture instability
- facial instability
- impossible motion
- inconsistent shadows
- synthetic optical artifacts
- floating or duplicated geometry
- temporal discontinuity

## FINAL VALIDATION

Before generation, verify:

PHYSICAL
→ OPTICAL
→ TEMPORAL
→ SPATIAL
→ OPERATOR
→ GRAMMAR
→ SHOT PURPOSE
→ FRAMING
→ LIGHTING
→ REALISM

If a conflict remains unresolved, prefer physical plausibility and minimum intervention.
