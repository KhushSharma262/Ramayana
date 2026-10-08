# CINEMATOGRAPHY SYSTEM INTEGRITY

## 1. PURPOSE

This file defines the global control architecture for the entire cinematography system.

It does not replace specialized cinematography files.

It governs how specialized files interact, how conflicts are resolved, how physical plausibility is maintained, and how cinematography decisions are converted into physically credible AI-generated video.

The final result must appear to be professionally captured live-action footage produced by a real camera, real lens, real environment, real lighting, and physically plausible camera operation.

The system must never intentionally produce an AI-generated visual appearance.

---

# 2. GLOBAL PRIORITY HIERARCHY

All cinematography decisions must follow this precedence:

1. PHYSICAL REALISM
2. CAMERA AND OPTICAL PHYSICS
3. TEMPORAL CONSISTENCY
4. SPATIAL / GEOGRAPHIC CONSISTENCY
5. CAMERA OPERATIONAL PLAUSIBILITY
6. COMPOSITION
7. STORY / SHOT PURPOSE
8. EMOTIONAL INTENT
9. STYLISTIC CHARACTER

Lower-priority goals must never violate higher-priority constraints.

A visually attractive result is invalid if it requires physically impossible behavior.

A cinematic effect is invalid if its physical cause cannot be identified.

---

# 3. CAUSAL ORDER

The system must reason causally.

Correct order:

STORY
→ SHOT PURPOSE
→ VISUAL REQUIREMENT
→ PHYSICAL CAMERA REQUIREMENT
→ CAMERA POSITION
→ CAMERA ORIENTATION
→ LENS SELECTION
→ OPTICAL CONSEQUENCES
→ CAMERA MOVEMENT
→ FOCUS BEHAVIOR
→ EXPOSURE / CAPTURE BEHAVIOR
→ COMPOSITION
→ LIGHTING INTERACTION
→ TEMPORAL VALIDATION
→ REALISM VALIDATION
→ FINAL VIDEO PROMPT

The system must not reverse this process merely to obtain a visually fashionable result.

Do not begin with:

"cinematic look"

"dramatic lens effect"

"epic camera movement"

"beautiful blur"

"anamorphic look"

and then invent a physical explanation afterward.

---

# 4. SINGLE-OWNER PRINCIPLE

Every physical parameter must have one authoritative owner.

Specialized files may reference another parameter, but must not silently redefine it.

Examples:

camera_body
→ sensor, capture, shutter, frame rate, readout

camera_distance
→ physical camera-to-reference distance

camera_height
→ physical camera elevation

focal_length
→ lens focal length

lens files
→ optical behavior

camera_movement
→ movement category and path

camera_acceleration
→ acceleration behavior

camera_inertia
→ inertial response

camera_mass
→ physical mass behavior

focus_behavior
→ focus operation

depth_of_field
→ depth-of-field consequences

framing
→ image-space composition

shot_size
→ descriptive framing category

lighting
→ illumination

No file may silently take ownership of another file's primary parameter.

---

# 5. REFERENCE VS CONTROL

A file may reference another system without controlling it.

Example:

camera_distance may use focal length to evaluate perspective consequences.

It must not change focal length.

focal_length may use camera distance to evaluate framing and perspective consequences.

It must not change camera distance.

This prevents circular reasoning.

---

# 6. PHYSICAL CAUSE REQUIREMENT

Every visible cinematographic effect must have a plausible physical cause.

Examples:

lens flare
→ light entering the lens at an appropriate angle

depth of field
→ aperture, focal length, focus distance, sensor geometry and subject distance

motion blur
→ shutter duration and relative motion

perspective change
→ camera position and orientation

parallax
→ camera translation relative to scene depth

lens breathing
→ physical lens focus behavior

camera shake
→ physical operator/support/camera movement

rolling-shutter distortion
→ sensor readout behavior

anamorphic artifacts
→ anamorphic optical construction

No effect may exist solely because it is visually desirable.

---

# 7. INTENT VS PHYSICAL IMPLEMENTATION

Story and emotional intent define WHAT the audience should perceive.

Physical cinematography determines HOW that perception is produced.

Example:

Intent:
"The character should feel isolated."

Possible physical implementations may include:

- increased camera distance
- environmental negative space
- longer lens compression
- wider environmental framing
- restrained movement
- appropriate blocking

The system must select the physically appropriate implementation.

It must not automatically associate an emotion with a predetermined camera effect.

---

# 8. CONFLICT RESOLUTION

When two cinematography rules conflict:

1. Preserve physical reality.
2. Preserve temporal continuity.
3. Preserve spatial continuity.
4. Preserve camera operational plausibility.
5. Preserve optical consistency.
6. Preserve composition.
7. Preserve story intent.
8. Preserve stylistic preference.

If a lower-priority rule conflicts with a higher-priority rule, modify or remove the lower-priority rule.

Never create physically impossible behavior to satisfy style.

---

# 9. UNCERTAINTY RULE

When the system lacks enough information to make a precise cinematographic decision:

- do not invent extreme behavior
- do not invent optical artifacts
- do not invent aggressive camera movement
- do not invent unusual lens characteristics
- do not invent impossible camera placement

Prefer the simplest physically plausible solution.

Subtle realism is preferable to unsupported cinematic exaggeration.

---

# 10. TEMPORAL CONSISTENCY

Cinematography parameters must remain temporally stable unless a physical event justifies their change.

The system must prevent:

- focal length changing without lens operation
- camera height changing without physical movement
- camera distance changing without camera or subject movement
- lens character changing between frames
- stabilization behavior randomly changing
- shutter behavior randomly changing
- depth of field changing without a physical cause
- focus changing without a focus event
- camera mass/inertia changing
- movement direction changing without physical cause

Every temporal change must have a cause.

---

# 11. SPATIAL CONSISTENCY

The camera must remain inside a coherent physical scene.

Validate:

- camera position
- camera height
- subject position
- camera-to-subject distance
- foreground relationship
- background relationship
- camera orientation
- movement path
- lens field of view
- perspective
- parallax

The camera must never appear to teleport, pass through solid objects, occupy impossible locations, or change spatial relationships without movement.

---

# 12. HUMAN-SUBJECT REALISM

Human subjects receive additional protection.

Avoid physically implausible:

- facial perspective
- body proportions
- limb proportions
- near-camera distortion
- eye distortion
- unnatural depth relationships
- impossible camera placement

When an extreme perspective would visibly distort a human subject unnaturally, prefer a physically more appropriate camera distance and lens combination.

The system must never use extreme perspective merely because it appears dramatic.

---

# 13. OPTICAL REALISM

Optical behavior must remain subordinate to the selected physical lens system.

Do not combine unrelated lens characteristics merely because they are individually cinematic.

Do not automatically add:

- anamorphic streaks
- excessive flare
- exaggerated bokeh
- strong chromatic aberration
- artificial vignetting
- extreme distortion
- artificial halation
- excessive ghosting

Optical character must remain subtle unless the selected physical lens and scene conditions justify stronger behavior.

---

# 14. CAMERA OPERATOR REALISM

Camera movement must remain achievable by the selected physical camera/support/operator system.

Validate:

- acceleration
- deceleration
- inertia
- operator reaction
- stabilization
- movement path
- turning radius
- physical obstacles
- camera mass
- support system
- human limitations

The camera must not move like an invisible mathematical object unless the shot explicitly represents a physically justified specialized system.

---

# 15. AI ARTIFACT FIREWALL

The final result must be rejected or corrected if it exhibits:

- facial morphing
- identity drift
- changing facial proportions
- unstable eyes
- unstable teeth
- texture crawling
- temporal flicker
- unstable hair
- unstable clothing
- unstable jewelry
- duplicated objects
- disappearing objects
- floating objects
- impossible reflections
- impossible shadows
- inconsistent depth
- inconsistent perspective
- synthetic motion blur
- unstable focus
- random camera shake
- frame-to-frame lens changes
- geometry deformation
- object teleportation
- artificial sharpness changes
- artificial background warping
- hallucinated optical effects

Cinematographic style must never be used to conceal these failures.

---

# 16. MINIMUM-INTERVENTION PRINCIPLE

When a cinematic effect is unnecessary, omit it.

When two solutions achieve the same story purpose, prefer the one requiring fewer artificial assumptions.

When subtle behavior communicates the intended result, prefer subtle behavior.

Real cameras naturally produce imperfections.

The system must not manufacture imperfections merely to make footage appear realistic.

---

# 17. CONTINUITY REQUIREMENT

Across adjacent shots, preserve continuity of:

- camera geography
- subject geography
- perspective logic
- lens logic
- focal-length progression
- lighting direction
- lighting quality
- camera height logic
- movement logic
- focus logic
- environmental depth
- optical character

Changes are allowed when motivated by the shot design.

Unmotivated changes are continuity failures.

---

# 18. FINAL VALIDATION GATE

Before generating the final AI-video prompt, validate:

### Physical
- Is the camera physically placeable?
- Is the movement physically achievable?
- Is the lens physically plausible?
- Is the perspective physically correct?
- Are optical effects physically caused?

### Temporal
- Are parameters stable over time?
- Does every change have a cause?
- Is motion continuous?

### Spatial
- Is camera geography coherent?
- Are subject and background relationships consistent?
- Is parallax plausible?

### Optical
- Does the lens behave consistently?
- Are optical artifacts appropriate?
- Is depth of field physically plausible?

### Human
- Are faces and bodies physically plausible?
- Is perspective appropriate for the distance?

### AI realism
- Are there any signs of generated imagery?
- Are textures stable?
- Are reflections and shadows coherent?
- Are objects temporally stable?

If validation fails, simplify or correct the cinematography before prompt generation.

---

# 19. FAILURE BEHAVIOR

If a cinematographic requirement cannot be satisfied without violating physical realism:

1. retain the story purpose
2. remove the physically impossible implementation
3. choose the simplest plausible alternative
4. preserve continuity
5. avoid adding artificial effects to compensate

The system must never knowingly output physically impossible cinematography merely because it is visually impressive.

---

# 20. FINAL RULE

The cinematography system must behave as if a real cinematographer, real camera operator, real camera, real lens, real support system, real environment, and real lighting setup were responsible for every frame.

The audience should perceive cinematography.

They should not perceive the rules producing it.

The highest standard is:

PHYSICAL REALISM FIRST.

If realism and cinematic effect conflict, realism wins.
