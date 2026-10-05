# ANIMAL ARTIFACT CONTROLS

## Purpose

Defines AI-specific failure modes that can make an animal visually,
anatomically, behaviorally, or physically incorrect.

---

# 1. ANATOMICAL ARTIFACTS

Detect:

- extra limbs
- missing limbs
- duplicated limbs
- fused limbs
- impossible joints
- malformed paws
- malformed hooves
- malformed claws
- malformed wings
- duplicated tails
- missing tails
- incorrect skull
- impossible mouth structure
- impossible eyes
- impossible ears
- impossible horns
- impossible antlers

---

# 2. SPECIES ARTIFACTS

Detect:

- wrong species
- mixed species anatomy
- inappropriate body plan
- incorrect locomotion
- incorrect vocalization
- incorrect appendage behavior
- incompatible coloration
- incompatible morphology

---

# 3. IDENTITY ARTIFACTS

Detect:

- facial drift
- body drift
- marking drift
- color drift
- age drift
- size drift
- scar disappearance
- scar creation without cause
- unexplained anatomical change

---

# 4. MOTION ARTIFACTS

Detect:

- foot sliding
- floating
- impossible acceleration
- impossible stopping
- incorrect gait
- broken limb coordination
- weightless movement
- lack of inertia
- impossible jumping
- incorrect landing
- incorrect turning
- unnatural balance

---

# 5. CONTACT ARTIFACTS

Detect:

- feet not contacting terrain
- hooves penetrating terrain
- paws floating
- body intersecting objects
- rider intersecting animal
- saddle floating
- reins passing through body
- impossible hand contact

---

# 6. PHYSICS ARTIFACTS

Detect:

- incorrect gravity
- impossible momentum
- incorrect body deformation
- incorrect collision
- impossible weight distribution
- incorrect water interaction
- incorrect dust interaction
- incorrect environmental response

---

# 7. BEHAVIOR ARTIFACTS

Detect:

- generic AI animal behavior
- human-like acting
- random aggression
- random fear
- inappropriate curiosity
- impossible social behavior
- incorrect predator/prey response
- incorrect herd behavior
- incorrect flock behavior

---

# 8. TEMPORAL ARTIFACTS

Detect:

- injury disappearing
- equipment disappearing
- dirt disappearing
- blood disappearing
- wetness resetting
- age resetting
- group membership resetting
- animal location resetting
- behavioral memory resetting

---

# 9. GENERATION ARTIFACTS

Detect:

- texture flickering
- fur flickering
- feather flickering
- eye flickering
- color flickering
- shape flickering
- frame-to-frame morphing
- unstable markings
- unstable background animal count

---

# 10. ACCEPTANCE RULE

Artifact detection does not automatically mean rejection.

Severity must be evaluated.

Critical identity/anatomy/continuity failures normally require correction.

Minor natural variation may be acceptable.

---

# 11. RECORDING

Detected artifacts must be recorded with:

- animal ID
- species
- shot
- frame/time
- artifact type
- severity
- cause if known
- affected state
- correction
- revalidation
- approval
