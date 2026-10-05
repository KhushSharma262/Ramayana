# ANIMAL GENERATION QA

## Purpose

Defines the animal-specific validation performed before generated animal
assets are accepted into production continuity.

---

# 1. QA STAGES

Animal QA occurs:

1. before generation
2. during generation where possible
3. immediately after generation
4. before shot approval
5. before scene approval
6. before episode approval
7. after major model/reference changes
8. after retroactive continuity corrections

---

# 2. IDENTITY QA

Verify:

- correct animal
- correct species
- correct individual
- correct identity anchors
- correct age
- correct markings
- correct body structure
- correct persistent characteristics

---

# 3. ANATOMY QA

Verify:

- correct anatomy
- correct proportions
- correct limbs
- correct joints
- correct appendages
- correct species morphology
- no AI anatomical artifacts

---

# 4. PHYSIOLOGY QA

Verify:

- breathing
- fatigue
- health
- pain
- injury
- healing
- biological state
- environmental effects

---

# 5. BEHAVIOR QA

Verify:

- species-appropriate behavior
- individual temperament
- established learned behavior
- appropriate reaction
- reaction latency
- appropriate social behavior
- absence of unnecessary anthropomorphism

---

# 6. LOCOMOTION QA

Verify:

- gait
- balance
- foot/hoof/paw contact
- acceleration
- deceleration
- turning
- jumping
- landing
- climbing
- swimming
- flying
- species-specific biomechanics

as applicable.

---

# 7. STATE QA

Compare:

PREVIOUS STATE
? EVENT
? CURRENT STATE

Check:

- injuries
- fatigue
- equipment
- location
- group
- relationships
- environmental residue
- transformation
- behavioral state

---

# 8. PERSISTENCE QA

Confirm that established state did not disappear between:

- frames
- shots
- scenes
- sequences
- episodes

---

# 9. SCALE QA

Verify scale against:

- humans
- other animals
- architecture
- props
- terrain
- vehicles
- equipment

Camera perspective must not silently alter actual scale.

---

# 10. ENVIRONMENT QA

Verify:

- habitat
- terrain
- water
- vegetation
- weather
- tracks
- footprints
- environmental disturbance
- ecological plausibility

---

# 11. INTERACTION QA

Verify:

- animal-animal interaction
- human-animal interaction
- contact
- pressure
- grip
- riding
- handling
- equipment
- movement consequences

---

# 12. AUDIO QA

Verify:

- species-appropriate vocalization
- correct timing
- correct reaction
- movement sounds
- environmental sounds
- no unexplained human speech

---

# 13. CANON QA

Verify that generated behavior or appearance does not contradict:

- explicit canon
- approved interpretation
- established continuity
- canonical event consequences

If canon is silent, reconstruction must remain identified as reconstruction.

---

# 14. UNKNOWN QA

Check that unknown information has not been silently invented.

Unknown must remain:

UNKNOWN

until explicitly resolved.

---

# 15. HUMAN REALISM QA

Verify:

- breathing
- blink behavior where applicable
- eye movement
- micro-movement
- muscle tension
- weight shifting
- balance corrections
- reaction timing
- fatigue
- environmental response

---

# 16. AI ARTIFACT QA

Check for:

- anatomy errors
- identity drift
- texture flicker
- morphing
- impossible motion
- impossible contact
- inconsistent markings
- inconsistent scale
- physics violations

---

# 17. APPROVAL STATES

Possible states:

GENERATED
UNDER_REVIEW
CHANGES_REQUESTED
CONDITIONALLY_APPROVED
APPROVED
REJECTED
LOCKED
REOPENED

---

# 18. PROPAGATION RULE

Only validated and approved animal state may propagate into future generations.

Rejected or unvalidated output must not become an authoritative reference.

---

# 19. RETROACTIVE ERROR

If a previously approved animal asset is later discovered to be wrong:

- preserve the historical record
- identify affected dependencies
- identify affected shots/scenes
- correct the authoritative state
- determine propagation requirements
- regenerate affected outputs where required
- do not silently erase history

---

# 20. FINAL PRINCIPLE

The purpose of Animal QA is not merely to determine whether an image
looks realistic.

It must determine whether:

THE SAME ANIMAL
OF THE SAME SPECIES
IN THE SAME WORLD
AT THE SAME POINT IN TIME
WITH THE CORRECT STATE
IS BEING REPRESENTED.

