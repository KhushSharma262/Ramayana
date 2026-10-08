# CAMERA SYSTEM CONTRACT

This file is the integration contract for every file in the camera folder.

The camera folder is one system.

It must never behave as 16 independent rulebooks.

---

# 1. GLOBAL OBJECTIVE

The generated footage must behave as though:

- a real cinematographer planned the shot
- a real camera was used
- a real lens was mounted
- a real support system was used
- a real operator controlled the camera
- real physical movement occurred
- real focus was performed
- real optical behavior was recorded

The result must not look AI-generated.

---

# 2. CORE PRINCIPLE

HUMAN-LIKE CINEMATOGRAPHY
does NOT mean:

random shake
random imperfection
random reframing
random focus errors
random lens effects

It means:

human decision-making
+
physical equipment
+
human limitations
+
deliberate execution
+
natural correction
+
continuity

---

# 3. AUTHORITY HIERARCHY

When systems disagree:

1. physical reality
2. camera physics
3. optical physics
4. human/operator limitations
5. spatial continuity
6. temporal continuity
7. shot execution
8. framing/composition
9. emotional intent
10. stylistic preference

Lower levels cannot violate higher levels.

---

# 4. ROOT-SYSTEM AUTHORITY

The camera folder uses, but does not duplicate:

CINEMATOGRAPHY\LENSES
→ lens physics

CINEMATOGRAPHY\framing
→ framing/composition

CINEMATOGRAPHY\grammar
→ visual grammar

CINEMATOGRAPHY\lighting
→ lighting

CINEMATOGRAPHY\shot_design
→ shot construction

Root movement-physics files
→ movement physics

Root human-camera files
→ human operator physics

The camera folder is the operational integration layer.

---

# 5. PARAMETER OWNERSHIP

camera_body.md
→ camera capture

camera_distance.md
→ physical distance

camera_height.md
→ physical height

camera_movement.md
→ movement choice/orchestration

camera_stability.md
→ stability/support choice

crane_rules.md
→ crane execution

dolly_rules.md
→ dolly execution

focal_length_rules.md
→ focal-length execution constraints

focus_behavior.md
→ shot-level focus management

focus_pulls.md
→ deliberate focus transitions

handheld_rules.md
→ handheld execution

lens_library.md
→ available lens inventory

orbit_rules.md
→ orbit execution

tracking_rules.md
→ subject tracking execution

tripod_rules.md
→ tripod execution

No file may silently take ownership of another file's primary variable.

---

# 6. DEPENDENCY ORDER

Use this order:

STORY
↓
SHOT PURPOSE
↓
VISUAL REQUIREMENT
↓
CAMERA POSITION
↓
CAMERA SUPPORT
↓
LENS SELECTION
↓
FOCAL LENGTH
↓
MOVEMENT
↓
FOCUS
↓
FRAMING
↓
LIGHTING
↓
TEMPORAL VALIDATION
↓
PHYSICAL VALIDATION
↓
AI-REALISM VALIDATION

This is a logical dependency order.

It does not mean every shot requires every step.

---

# 7. NO CIRCULAR REASONING

Never allow:

framing → changes distance → changes framing → changes lens → changes framing → endless loop

Resolve the physical configuration first.

Then calculate its consequences.

Do not continuously modify physical variables to force an image-space result.

---

# 8. CAMERA POSITION FIRST

Physical camera position consists primarily of:

- position
- distance
- height
- orientation

Lens selection occurs after the required spatial relationship is understood.

Perspective must remain a consequence of physical camera position.

---

# 9. LENS VS CAMERA MOVEMENT

Changing focal length does not reproduce camera translation.

Changing camera position does not reproduce a focal-length change.

Dolly:
→ camera position changes.

Zoom:
→ focal length changes.

Dolly zoom:
→ both change simultaneously.

---

# 10. HUMAN OPERATION

Human operation may produce:

- anticipation
- correction
- slight lag
- controlled imperfection
- settling
- physical response to footsteps
- physical response to camera mass
- reaction to subject movement

But only when appropriate to the support system and shot.

---

# 11. SUPPORT CONSISTENCY

A shot must have a coherent support system.

Examples:

tripod
→ tripod behavior

dolly
→ dolly behavior

crane
→ crane behavior

handheld
→ human handheld behavior

gimbal
→ gimbal behavior

Do not mix incompatible support characteristics.

---

# 12. TEMPORAL CONSISTENCY

A continuous shot must preserve:

- camera body
- sensor
- focal length
- lens identity
- camera geometry
- support system
- movement continuity
- focus continuity
- optical character
- stability characteristics

unless a physical change explains the transition.

---

# 13. SPATIAL CONSISTENCY

The camera cannot:

- teleport
- pass through objects
- change height without movement
- change distance without movement
- rotate without physical cause
- alter perspective independently of position
- alter parallax independently of spatial movement

---

# 14. PHYSICAL CAUSE REQUIREMENT

Every visible camera behavior must have a cause.

Examples:

shake
→ operator/body/support/environment

motion blur
→ shutter + movement

perspective change
→ camera position

parallax
→ camera translation + scene depth

focus change
→ focusing action

FOV change
→ focal length/sensor/recording change

stabilization behavior
→ physical stabilization system

No effect-first behavior.

---

# 15. EMOTIONAL CAMERA RULE

Emotion does not directly select a camera effect.

Instead:

emotion
↓
story requirement
↓
visual requirement
↓
physical camera solution

Example:

"make the character feel isolated"

does NOT automatically mean:

handheld
or
telephoto
or
dolly-in

The system must determine what a real cinematographer would actually choose.

---

# 16. STATIC SHOTS

A static shot is a valid deliberate choice.

Do not introduce movement merely because AI video generators tend to look more cinematic when moving.

---

# 17. MOVEMENT MINIMUM

Use the minimum camera movement necessary to communicate the shot.

More movement is not automatically better cinematography.

---

# 18. IMPERFECTION LIMIT

Natural imperfection must remain subordinate to:

- story
- readability
- composition
- physical plausibility

Never add imperfections merely to disguise AI generation.

---

# 19. AI ARTIFACT FIREWALL

Reject or correct:

- face morphing
- changing facial proportions
- eye instability
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
- geometry deformation
- perspective jumps
- focus flicker
- focal-length flicker
- artificial camera shake
- unstable background geometry
- digital-looking motion

Cinematic style must never conceal these defects.

---

# 20. FAILURE HANDLING

If the requested camera behavior is physically impossible:

1. identify the conflict
2. preserve the shot's narrative purpose
3. remove the impossible behavior
4. choose the closest physically plausible alternative
5. maintain continuity
6. do not invent a digital workaround

---

# 21. UNKNOWN PARAMETERS

If information is missing:

DO NOT invent extreme values.

Prefer:

- physically ordinary equipment
- restrained movement
- natural focal behavior
- plausible camera placement
- stable continuity

Unknown does not mean cinematic exaggeration.

---

# 22. FINAL VALIDATION

Before the camera configuration is passed to video generation, verify:

PHYSICAL:
- Can the camera physically occupy this position?
- Can the support system perform the movement?
- Can a human operator execute it?
- Are acceleration and inertia plausible?

OPTICAL:
- Is the lens compatible?
- Is focal length stable?
- Is focus achievable?
- Is the optical behavior consistent?

SPATIAL:
- Is distance correct?
- Is height correct?
- Is perspective correct?
- Is parallax correct?

TEMPORAL:
- Are parameters continuous?
- Are changes physically motivated?

HUMAN:
- Would a real cinematographer actually operate the camera this way?

AI:
- Does anything look algorithmically generated?

If any answer is NO:

REVISE THE CAMERA CONFIGURATION BEFORE PROMPT GENERATION.

---

# 23. FINAL PRINCIPLE

The system should not attempt to make footage LOOK like cinematography.

It should construct the shot as if real cinematography had actually occurred.

The desired result is:

REAL CINEMATOGRAPHIC DECISION
+
REAL CAMERA PHYSICS
+
REAL OPERATOR BEHAVIOR
+
REAL OPTICAL CONSEQUENCES
+
REAL TEMPORAL CONTINUITY
=
HUMAN-LIKE CINEMATOGRAPHY

The final image must never reveal the AI generation process.
