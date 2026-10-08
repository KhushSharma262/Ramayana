# PROFILE FRAMING

## PURPOSE

Define framing for subjects presented primarily from a lateral or side-oriented viewpoint.

Profile framing is a spatial orientation, not a fixed emotional style.

---

# 1. CORE GEOMETRY

A profile-oriented frame generally presents the subject from approximately the side.

The actual visible angle may vary from:

- near-profile
- true profile
- three-quarter transition toward profile

The exact orientation depends on physical camera position relative to the subject.

---

# 2. FACE AND BODY

Face orientation and body orientation are separate variables.

A subject may have:

- face profile with body angled
- body profile with face turned toward camera
- both face and body in profile
- partial profile transitioning toward frontal view

Do not force face and body into identical orientation.

---

# 3. NO DIGITAL ROTATION

Profile framing must result from physical subject/camera geometry.

Do not simulate profile appearance through:

- digital warping
- artificial face rotation
- unstable perspective
- post-generated geometry

---

# 4. FRAME PLACEMENT

Profile subjects may be positioned:

- centrally
- off-center
- near an edge
- with directional negative space

Placement depends on:

- gaze
- movement
- environment
- composition
- shot purpose

---

# 5. LOOK ROOM

If the subject looks toward one side of the frame, available space in that direction should be evaluated.

Look room is not a fixed percentage.

It depends on:

- gaze direction
- head rotation
- body orientation
- surrounding scene
- visual tension
- intended spatial relationship

---

# 6. MOVEMENT

For a moving profile subject, evaluate:

- direction of travel
- available lead room
- body trajectory
- camera response
- frame-entry and frame-exit behavior

A moving subject does not need to remain at an identical image coordinate.

---

# 7. SILHOUETTE AND CONTOUR

Profile framing makes facial and bodily contour particularly visible.

Maintain:

- physically plausible nose/lip/chin profile
- natural hair contour
- stable neck/shoulder geometry
- correct occlusion
- consistent anatomy

Avoid exaggerated silhouette sharpening.

---

# 8. MULTI-SUBJECT PROFILE

If multiple subjects are shown in profile:

- preserve relative orientation
- preserve eyelines
- preserve screen direction
- preserve depth ordering
- preserve physical spacing

Do not independently rotate subjects merely to improve composition.

---

# 9. BACKGROUND

Background geometry must remain physically consistent.

Particular attention should be given to:

- vertical structures
- horizon
- architectural lines
- foliage
- bright objects behind the face

Avoid accidental tangencies with the facial contour.

---

# 10. DYNAMIC PROFILE

During camera or subject movement:

- profile angle may naturally change
- facial visibility may change
- negative space may change
- subject scale may change

These changes must follow physical geometry.

---

# 11. CONTINUITY

Across shots, profile orientation must respect established:

- screen direction
- subject geography
- eyeline
- camera position
- blocking

A sudden reversal must have a physical or editorial reason.

---

# 12. REALISM VALIDATION

Reject:

- unstable facial profiles
- changing nose/chin geometry
- artificial face rotation
- floating hair
- impossible body orientation
- unexplained subject scale changes
- unstable background geometry

FINAL RULE:

Profile framing must look like a real camera viewing a real subject from a real lateral position.

## FRAMING SUBSYSTEM FINAL HARDENING — LOCKED

This section is authoritative for resolving ambiguity inside the framing subsystem.

============================================================
1. PARAMETER OWNERSHIP FIREWALL
============================================================

FRAMING MAY DEFINE:

- frame boundaries
- image-space subject position
- image-space subject occupancy
- headroom
- lead room
- look room
- foot room
- edge clearance
- negative space
- foreground/background inclusion
- overlap relationships
- multi-subject image-space relationships
- dynamic framing targets
- framing continuity requirements

FRAMING MUST NOT DEFINE:

- camera distance
- camera height
- camera orientation mechanics
- camera movement mechanics
- camera acceleration
- camera inertia
- stabilization
- tripod/gimbal/handheld mechanics
- focal length
- aperture
- sensor size
- depth-of-field calculation
- perspective
- lens distortion
- bokeh
- flare
- chromatic aberration
- focus mechanics
- lighting
- actor blocking
- acting
- narrative intent
- editing
- color

If a framing requirement requires one of those parameters, framing creates a REQUIREMENT and the owning subsystem supplies the physical solution.

Never silently modify another subsystem's parameter.

============================================================
2. SHOT SIZE FIREWALL
============================================================

Framing must not redefine:

- wide shot
- medium shot
- close-up
- extreme close-up
- establishing shot
- insert
- reaction shot

Those are shot-design / shot-size concepts.

A framing file may describe how a particular shot-size configuration is framed, but it must never redefine the actual shot-size taxonomy.

Therefore:

SHOT SIZE
= how much of the subject is visible.

FRAMING
= how that visible subject and surrounding image content are spatially organized.

============================================================
3. PHYSICAL-CAUSE REQUIREMENT
============================================================

Every change in framing must have a cause.

Valid causes include:

- camera movement
- camera repositioning
- camera orientation
- lens selection/change
- subject movement
- subject blocking
- environmental movement
- deliberate editorial cut

Invalid causes include:

- AI deciding to "improve" composition
- digital subject repositioning
- digital zoom
- arbitrary crop
- image warping
- perspective warping
- independent background movement
- subject-specific scaling
- synthetic tracking
- post-generated frame correction

If no physical or editorial cause exists:

DO NOT CHANGE THE FRAMING.

============================================================
4. NO DIGITAL REFRAMING
============================================================

The framing system must never solve a framing problem through:

- digital zoom
- crop animation
- image scaling
- perspective warping
- depth-map repositioning
- subject cutout movement
- background resizing
- artificial parallax
- compositing
- face relocation
- object relocation
- AI subject tracking that changes scene geometry

The final image must behave as though a real camera photographed the scene.

============================================================
5. IMAGE-SPACE VS WORLD-SPACE
============================================================

Framing operates primarily in image space.

World-space changes belong to physical scene systems.

If a subject must appear farther left in frame, framing may state:

SUBJECT_IMAGE_POSITION:
left-of-center

It must NOT directly state:

MOVE_CAMERA_X = ...

or:

MOVE_SUBJECT_X = ...

The physical implementation must be determined elsewhere.

This prevents framing from becoming a hidden camera-control system.

============================================================
6. PERSPECTIVE FIREWALL
============================================================

Moving a subject within the frame does not itself change perspective.

Perspective changes only when physical scene geometry changes, particularly:

- camera position
- subject position
- relative depth relationships

Do not attribute perspective changes to framing.

Do not use framing to fake perspective.

============================================================
7. SUBJECT SCALE FIREWALL
============================================================

Framing may specify desired image occupancy.

It must not digitally resize subjects.

A change in subject image size must be caused by:

- camera movement
- camera distance
- lens/focal-length change
- subject movement

All such physical changes belong to their owning systems.

============================================================
8. HEADROOM / LEADROOM FIREWALL
============================================================

Headroom and lead room are relational quantities.

They are NOT universal percentages.

Do not encode rules such as:

"always leave exactly 10% headroom."

Instead evaluate:

- subject anatomy
- posture
- gaze
- movement
- camera orientation
- scene geometry
- shot purpose
- frame boundary

Natural variation is permitted when physically caused.

============================================================
9. EDGE-CROP FIREWALL
============================================================

Intentional cropping and generation failure are different states.

INTENTIONAL:

- supported by shot purpose
- spatially coherent
- stable through time
- physically achievable

FAILURE:

- accidental clipping
- disappearing limbs
- warped faces
- objects appearing/disappearing at borders
- unstable crop
- unexplained scale change
- inconsistent edge geometry

Failure must be corrected by restoring physical scene/camera consistency, not by digitally masking the problem.

============================================================
10. DYNAMIC FRAMING STATE
============================================================

Dynamic framing must be evaluated continuously through time.

Minimum state variables:

- current subject image position
- desired subject image position
- current frame occupancy
- desired frame occupancy
- current headroom
- desired headroom
- current lead/look room
- movement direction
- camera response state
- subject movement state
- reframing state
- frame-entry/exit state

A dynamic framing change must be continuous unless an editorial cut occurs.

No unexplained frame-to-frame jumps.

============================================================
11. HUMAN OPERATOR FIREWALL
============================================================

Human-like framing does NOT mean random error.

Allowed:

- anticipation
- slight delay
- controlled correction
- temporary off-center placement
- small framing deviation
- imperfect but intentional timing

Not allowed:

- random jitter
- random drift
- repeated micro-corrections
- robotic tracking
- mathematically perfect locking when physically inappropriate
- arbitrary composition changes

Imperfection must have a plausible human or physical cause.

============================================================
12. DYNAMIC CORRECTION LIMIT
============================================================

A framing correction must be:

- motivated
- continuous
- proportional
- physically achievable
- temporally coherent

Do not correct every small deviation.

Do not permit uncontrolled drift.

The system must operate inside a bounded correction zone.

If the subject remains acceptably framed:

DO NOTHING.

============================================================
13. TWO-SHOT FIREWALL
============================================================

two_shot.md does not own the general rules for multiple subjects.

Those remain in:

multi_subject_framing.md

two_shot.md only defines the special case of exactly two important subjects sharing the frame.

It must not:

- redefine group framing
- redefine dialogue coverage
- redefine shot size
- define lens choice
- define actor blocking

============================================================
14. OVER-THE-SHOULDER FIREWALL
============================================================

over_shoulder.md defines the spatial framing relationship between:

- foreground participant
- primary participant
- camera
- shared eyeline

It must not become:

- an acting system
- a dialogue system
- a lens system
- a depth-of-field preset
- a "cinematic look" preset

The foreground participant must physically exist in the scene.

No artificial silhouette or composited shoulder.

============================================================
15. PROFILE FIREWALL
============================================================

profile.md defines lateral framing geometry.

It does not define:

- character appearance
- facial anatomy
- acting
- emotion
- lighting style
- lens distortion

A profile must result from actual subject orientation and camera position.

Do not digitally rotate the face or body to manufacture profile framing.

============================================================
16. FOREGROUND / BACKGROUND FIREWALL
============================================================

foreground_background.md owns framing inclusion and spatial relationship.

It does NOT own:

- depth of field
- focus
- blur
- lighting separation
- atmospheric perspective
- lens compression

Those remain with their respective systems.

Foreground/background relationships must remain physically coherent.

============================================================
17. NEGATIVE-SPACE FIREWALL
============================================================

Negative space is not a generated "empty background."

It must correspond to real scene space.

Do not:

- insert synthetic emptiness
- resize backgrounds
- move subjects independently
- create artificial background gradients
- use negative space to justify physically impossible composition

Negative space must emerge from:

- camera viewpoint
- subject position
- environment
- blocking
- lens/camera configuration

============================================================
18. CONTINUITY FIREWALL
============================================================

Framing continuity does not require identical composition between every shot.

Intentional changes are allowed.

The system must distinguish:

INTENTIONAL CHANGE
from
UNEXPLAINED CHANGE.

Intentional change may result from:

- new shot purpose
- camera position
- lens
- blocking
- subject movement
- editorial transition

Unexplained changes include:

- subject teleportation
- sudden scale changes
- reversed eyelines
- changed screen direction
- altered background geometry
- unexplained headroom changes
- unstable negative space

============================================================
19. EDITORIAL CUT FIREWALL
============================================================

A cut resets certain image-space conditions.

Do not force continuous framing between two shots that are intentionally separated by an editorial cut.

However, spatial continuity must still be respected when the sequence requires it.

Therefore:

WITHIN SHOT:
temporal continuity is strict.

ACROSS CUT:
framing may intentionally change.

This prevents continuity rules from becoming unnecessarily rigid.

============================================================
20. ASPECT RATIO FIREWALL
============================================================

Master frame:

16:9

All framing coordinates must be interpreted inside the active output aspect ratio.

Framing must not assume:

- 2.39:1
- 2.00:1
- 1.85:1
- 4:3

unless another system explicitly declares a different deliverable.

Anamorphic does NOT automatically change the master aspect ratio.

============================================================
21. FRAME COORDINATE STANDARD
============================================================

For machine-readable representation, use normalized image-space coordinates where practical.

Reference:

x = 0.0 → left edge
x = 0.5 → horizontal center
x = 1.0 → right edge

y = 0.0 → top edge
y = 0.5 → vertical center
y = 1.0 → bottom edge

Coordinates describe image-space relationships.

They do not represent world-space movement.

============================================================
22. MACHINE-READABLE FRAMING STATE
============================================================

A framing state should eventually be representable as:

{
  "aspect_ratio": "16:9",
  "subjects": [
    {
      "id": "",
      "role": "",
      "image_position": {
        "x": 0.5,
        "y": 0.5
      },
      "occupancy": {},
      "headroom": {},
      "lead_room": {},
      "look_room": {},
      "edge_clearance": {}
    }
  ],
  "negative_space": {},
  "foreground": {},
  "background": {},
  "dynamic": {},
  "continuity": {}
}

No field may secretly contain camera, lens, lighting, acting, or world-space commands.

============================================================
23. UNCERTAINTY RULE
============================================================

If the system cannot determine the correct framing:

1. preserve physical geometry
2. preserve continuity
3. preserve subject readability
4. preserve existing composition
5. make the smallest necessary change

Do not invent elaborate framing.

Do not add cinematic effects to compensate for uncertainty.

============================================================
24. CONFLICT RESOLUTION
============================================================

When framing conflicts with another subsystem:

1. physical possibility
2. camera physical constraints
3. optical constraints
4. human/operator limitations
5. spatial continuity
6. temporal continuity
7. framing integrity
8. composition
9. shot purpose
10. emotional/stylistic preference

Framing cannot override a higher-level physical constraint.

============================================================
25. CROSS-FILE CONSISTENCY
============================================================

All framing files must use the same definitions for:

- frame
- subject
- occupancy
- headroom
- lead room
- look room
- negative space
- edge
- foreground
- background
- continuity
- dynamic framing

Do not introduce alternate definitions inside individual files.

If a concept already has an authoritative owner:

REFERENCE IT.

Do not redefine it.

============================================================
26. AI VIDEO ARTIFACT FIREWALL
============================================================

Reject any generated result containing unexplained:

- face movement
- body scaling
- limb disappearance
- subject duplication
- object duplication
- background morphing
- edge instability
- geometry warping
- perspective changes
- occlusion reversal
- frame occupancy jumps
- subject teleportation
- artificial camera locking
- artificial tracking
- synthetic parallax

The correction must restore physical consistency.

Never hide the artifact with a digital framing trick.

============================================================
27. TEMPORAL VALIDATION
============================================================

For every continuous shot verify:

FRAME_GEOMETRY:
stable unless physically changing

SUBJECT_POSITION:
continuous unless physically changing

SUBJECT_SCALE:
physically derived

EDGE_RELATIONSHIP:
continuous

OCCLUSION:
depth-consistent

BACKGROUND:
temporally stable

NEGATIVE_SPACE:
physically stable

CAMERA_RESPONSE:
physically explainable

If any variable changes without cause:

FAIL.

============================================================
28. FINAL FRAMING VALIDATION GATE
============================================================

Before a framing state is accepted, verify:

1. Is the frame boundary known?
2. Is the master aspect ratio known?
3. Are all important subjects identified?
4. Is every subject's image-space position defined?
5. Is subject occupancy physically achievable?
6. Is headroom intentional?
7. Is lead/look room intentional?
8. Are frame-edge interactions valid?
9. Is negative space physically meaningful?
10. Are foreground/background relationships physically valid?
11. Are multi-subject relationships coherent?
12. Is dynamic behavior physically explainable?
13. Is continuity valid?
14. Has shot-size ownership remained outside framing?
15. Has camera ownership remained outside framing?
16. Has lens ownership remained outside framing?
17. Has lighting ownership remained outside framing?
18. Has acting/blocking ownership remained outside framing?
19. Is there any digital reframing?
20. Is there any synthetic subject scaling?
21. Is there any artificial perspective?
22. Is there any AI tracking behavior?
23. Is temporal geometry stable?
24. Is the result physically achievable by a real cinematographer?
25. Does the final frame look like genuine live-action photography?

If any required answer is NO:

DO NOT ACCEPT THE FRAMING STATE.

============================================================
29. FINAL NON-NEGOTIABLE RULE
============================================================

The framing subsystem must behave as though:

A real cinematographer
+
a real camera operator
+
a real camera
+
a real lens
+
real subjects
+
a real physical environment

produced the image.

Framing must never become a mechanism for making AI-generated footage merely resemble cinema.

It must reproduce the logic of actual cinematography.

PHYSICAL REALISM > FRAMING PERFECTION.

When forced to choose:

choose the physically plausible frame.
