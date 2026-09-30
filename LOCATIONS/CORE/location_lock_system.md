# LOCATION LOCK SYSTEM

Once a location is approved, its locked attributes cannot drift.

## Locked

- location identity
- geographic relationship
- major orientation
- permanent landmarks
- permanent structures
- major entrances
- established sub-space relationships
- approved scale
- approved permanent materials
- approved canonical features

## Variable

- weather
- time of day
- temporary lighting
- temporary population
- temporary decoration
- story-event effects
- divine phenomena
- temporary damage
- environmental state
- camera position
- character blocking

## AI generation rule

Every generated shot must inherit the approved location definition.

Generation must not independently invent a new palace,
mountain orientation, courtyard, entrance, forest geometry or landmark.

If generation produces spatial drift:

REJECT
→ CORRECT
→ REGENERATE

Do not normalize the drift into continuity.

## Approval

A location may be:

DRAFT
RESEARCHING
RECONSTRUCTED
PROPOSED
APPROVED
LOCKED
REVISION_REQUIRED

Only APPROVED / LOCKED versions may be used for final production.
