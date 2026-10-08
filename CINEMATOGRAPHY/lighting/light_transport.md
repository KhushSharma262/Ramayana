# LIGHT TRANSPORT

## PURPOSE

Define how illumination physically propagates through the environment.

Lighting must be treated as physical energy moving through space and interacting with:

- surfaces
- materials
- atmosphere
- objects
- characters
- architecture
- water
- vegetation
- smoke
- dust
- mist.

==================================================
ABSOLUTE RULE
==================================================

LIGHT MUST COME FROM SOMEWHERE.

Every meaningful illumination contribution must have:

SOURCE
+
PATH
+
INTERACTION
+
RESULT.

Never allow illumination to appear without a physically plausible path.

==================================================
SOURCE TO SURFACE
==================================================

For any illuminated surface determine:

- source position
- source intensity
- source direction
- distance
- source size
- occlusion
- material response
- environmental contribution.

Do not treat illumination as a flat property painted onto objects.

==================================================
DISTANCE
==================================================

Illumination decreases with distance according to the physical behaviour of the source and environment.

Do not allow:

near object
=
same illumination
=
far object

unless the actual source geometry supports approximately uniform illumination.

==================================================
OCCLUSION
==================================================

Objects may block light.

If an opaque object lies between source and subject:

the subject must not receive direct illumination through that object.

Possible indirect illumination may still exist through:

- bounce
- sky
- reflected surfaces
- atmosphere.

==================================================
BOUNCE
==================================================

Reflected light must originate from an illuminated surface.

Do not create bounce illumination from a surface that itself has no plausible illumination.

==================================================
MATERIAL RESPONSE
==================================================

Light transport does not mean every material receives the same visible result.

Material properties determine:

- diffuse response
- specular response
- absorption
- reflection
- transmission
- subsurface behaviour.

==================================================
TRANSMISSION
==================================================

Light may pass through materials only when physically appropriate.

Examples:

- thin fabric
- translucent material
- glass
- foliage
- skin subsurface response.

Opaque stone, metal structures and thick wood must not become artificially illuminated from inside.

==================================================
ATMOSPHERE
==================================================

Atmosphere may scatter light.

The visible scattering must correspond to:

- source direction
- particle density
- distance
- viewing angle
- environmental conditions.

==================================================
MULTIPLE SOURCES
==================================================

Each source contributes independently.

Do not accidentally merge:

sun
+
fire
+
lamp
+
moon
+
bounce

into a single generic illumination field.

==================================================
ENERGY CONSISTENCY
==================================================

A weak source must not produce the illumination of a powerful source.

A distant small source must not illuminate a massive environment as though it were a nearby high-output source.

==================================================
REFLECTION
==================================================

Specular reflections must correspond to:

- source position
- surface orientation
- material reflectance
- camera position.

Do not place highlights arbitrarily.

==================================================
SHADOW
==================================================

A shadow represents blocked direct illumination.

It must correspond to:

source
+
occluder
+
receiving surface.

==================================================
FINAL RULE
==================================================

Every visible lighting result must have a physically coherent path from source to receiver.

## LIGHTING SUBSYSTEM ZERO-LOOPHOLE HARDENING — FINAL LOCK

==================================================
1. ABSOLUTE LIGHTING HIERARCHY
==================================================

PHYSICAL REALITY
>
LIGHT TRANSPORT
>
MATERIAL RESPONSE
>
SOURCE GEOMETRY
>
SHADOW GEOMETRY
>
ATMOSPHERE
>
CAMERA EXPOSURE
>
TEMPORAL CONTINUITY
>
SPATIAL CONTINUITY
>
LIGHTING INTENT
>
EMOTIONAL EFFECT
>
STYLE

No lower layer may contradict a higher layer.

==================================================
2. LIGHTING IS A PHYSICAL WORLD STATE
==================================================

The system must assume that the scene contains one continuous physical lighting environment.

Different shots observe that environment.

Shots do not independently invent lighting.

==================================================
3. SOURCE IDENTITY
==================================================

Every meaningful light source must have an identity.

Examples:

- sun
- moon
- sky
- fire
- torch
- diya
- lamp
- window
- reflected wall
- water
- supernatural source explicitly established by the story
- physically motivated cinema fixture.

A source must not appear merely because a prompt contains an emotional adjective.

==================================================
4. SOURCE EXISTENCE
==================================================

If a light is visible:

its source must exist.

If a light source is off-camera:

its physical position must still be inferable.

Invisible does not mean physically nonexistent.

==================================================
5. SOURCE PERSISTENCE
==================================================

A source remains active until:

- extinguished
- occluded
- moved
- changed by weather
- changed by architecture
- changed by time
- changed by an explicitly occurring narrative event.

Do not randomly create or remove sources between frames.

==================================================
6. SOURCE GEOMETRY
==================================================

Every source has:

- position
- direction
- distance
- size
- intensity
- spectral character.

The result must be derived from these variables.

==================================================
7. LIGHT PATH
==================================================

For important illumination:

SOURCE
↓
TRAVEL PATH
↓
OCCLUSION / TRANSMISSION / SCATTERING
↓
SURFACE
↓
MATERIAL RESPONSE
↓
CAMERA.

No arbitrary shortcut is permitted.

==================================================
8. OCCLUSION FIREWALL
==================================================

Opaque geometry blocks direct light.

Never allow light to pass through:

- stone
- thick wood
- solid architecture
- opaque props
- bodies
- terrain

unless physically justified by transmission or an actual opening.

==================================================
9. SHADOW SOURCE VALIDATION
==================================================

Every major shadow must have:

- source
- occluder
- receiving surface.

If any component is missing:

the shadow is invalid.

==================================================
10. MULTI-SOURCE SEPARATION
==================================================

Do not collapse multiple sources into one generic light.

Each source may independently contribute:

- illumination
- shadow
- reflection
- specular highlight
- atmospheric scattering.

==================================================
11. SHADOW SUPERPOSITION
==================================================

Multiple sources may produce multiple shadow contributions.

Do not force a single shadow direction when several physical sources exist.

==================================================
12. CONTRADICTORY SHADOW FIREWALL
==================================================

Reject scenes where:

source A implies one shadow direction

while

source A simultaneously produces another.

Different sources may produce different shadows, but each shadow must belong to a valid source.

==================================================
13. FALL-OFF FIREWALL
==================================================

Illumination must respond to distance.

Do not allow a small nearby lamp to illuminate a palace as strongly as direct sunlight.

Do not allow distant fire to produce foreground illumination equivalent to a nearby flame.

==================================================
14. UNIFORM-LIGHT FIREWALL
==================================================

Do not illuminate:

foreground
+
subject
+
background

uniformly without physical justification.

Real space contains illumination gradients.

==================================================
15. MATERIAL FIREWALL
==================================================

The same illumination must produce different visible results on different materials.

Skin ≠ stone.

Stone ≠ metal.

Metal ≠ cloth.

Cloth ≠ water.

Water ≠ wood.

Never use one generic brightness response for the entire scene.

==================================================
16. SPECULAR FIREWALL
==================================================

Specular highlights must correspond to actual light sources and reflective geometry.

Reject:

- floating highlights
- highlights on the wrong surface orientation
- highlights moving independently
- identical highlights on unrelated materials.

==================================================
17. SKIN REALISM FIREWALL
==================================================

Lighting must never turn human skin into:

- plastic
- wax
- porcelain
- chrome
- glowing material
- uniformly smooth material.

Preserve:

- pores
- tonal variation
- subsurface response
- natural specular behaviour
- anatomical shadowing.

==================================================
18. EYE FIREWALL
==================================================

Eye highlights must correspond to actual scene sources.

Do not generate:

- identical catchlights
- artificial white dots
- glowing irises
- disconnected reflections.

Each eye reflection must be consistent with:

source
+
camera position
+
eye orientation.

==================================================
19. FACIAL-PLANE FIREWALL
==================================================

Lighting must respect:

- nose
- brow
- cheek
- eye socket
- lips
- jaw
- ears
- neck.

Do not flatten facial geometry through excessive fill.

Do not destroy facial geometry through arbitrary blackness.

==================================================
20. HAIR FIREWALL
==================================================

Hair highlights must correspond to actual sources.

Do not create uniform glowing hair edges.

Hair strands may produce complex highlights, but the result must remain physically coherent.

==================================================
21. FABRIC FIREWALL
==================================================

Fabric illumination must depend on:

- weave
- material
- orientation
- color
- reflectance.

Do not make every garment equally luminous.

==================================================
22. METAL FIREWALL
==================================================

Metal must reflect the environment and sources.

Do not make metal objects permanently golden or shiny.

Gold may appear golden because of material reflectance and illumination, not because the scene is "divine."

==================================================
23. ARCHITECTURAL FIREWALL
==================================================

Palaces, temples and structures must retain:

- realistic surface variation
- material response
- shadowing
- depth
- atmospheric perspective.

Never turn architecture into:

- glossy fantasy CGI
- uniformly golden surfaces
- over-saturated decorative objects
- glowing walls.

==================================================
24. ENVIRONMENTAL RESPONSE
==================================================

If a major light source illuminates a character:

nearby environment should receive related illumination when physically reachable.

Do not isolate the effect to the character.

==================================================
25. CHARACTER-ONLY LIGHT FIREWALL
==================================================

Reject:

character brightly illuminated

while

nearby objects remain physically unlit

unless geometry or material properties genuinely explain the difference.

==================================================
26. BACKGROUND FIREWALL
==================================================

Background lighting must obey the same world lighting state as the foreground.

Do not separately "beautify" backgrounds.

==================================================
27. DIVINE LIGHT FIREWALL
==================================================

Divine lighting may be extraordinary.

It must still obey:

- source existence
- spatial propagation
- falloff
- occlusion
- material response
- shadow response
- atmospheric interaction
- temporal continuity.

No arbitrary glow.

==================================================
28. DIVINE RADIANCE STATE
==================================================

If divine radiance originates from a character:

the character becomes a physical light source for the scene.

Its illumination must affect nearby:

- people
- architecture
- ground
- vegetation
- objects
- atmosphere.

Do not illuminate only the divine character.

==================================================
29. DIVINE BEAUTY FIREWALL
==================================================

Divine beauty may arise from:

- exceptional natural direction
- balanced exposure
- controlled contrast
- atmospheric depth
- material response
- environmental harmony.

Never require:

- gold wash
- white halo
- neon aura
- glowing skin
- artificial bloom
- floating particles.

==================================================
30. HORROR LIGHT FIREWALL
==================================================

Horror must not automatically produce:

- red light
- black background
- blue face
- colored eyes
- artificial glow.

Horror may instead emerge from:

- reduced fill
- directional contrast
- partial illumination
- harder shadows
- localized sources
- atmospheric occlusion
- environmental darkening
- unusual but physically motivated source geometry.

==================================================
31. EMOTION PRESET FIREWALL
==================================================

Reject direct mappings such as:

ANGER = RED

DIVINITY = GOLD

EVIL = BLACK

SADNESS = BLUE

LOVE = PINK

POWER = HARD LIGHT

The system must derive physical lighting from scene conditions.

==================================================
32. LIGHTING INTENT FIREWALL
==================================================

Words such as:

- beautiful
- divine
- terrifying
- majestic
- ominous
- powerful
- sacred
- emotional
- epic

describe desired perception.

They do NOT directly specify physical lighting parameters.

==================================================
33. MOTIVATION FIREWALL
==================================================

Every intentional light must answer:

WHY DOES THIS LIGHT EXIST?

If no physical explanation exists:

remove it.

==================================================
34. OFF-CAMERA LIGHT FIREWALL
==================================================

An off-camera light is permitted.

But its:

- direction
- intensity
- falloff
- shadow
- reflection

must remain consistent with an implied physical source.

==================================================
35. THREE-POINT LIGHTING FIREWALL
==================================================

Three-point lighting is not mandatory.

Do not automatically create:

key
+
fill
+
rim

for every character.

Natural environments may require:

one source
+
bounce
+
ambient.

==================================================
36. FILL FIREWALL
==================================================

Fill must not erase the direction of the primary source.

Fill must not flatten:

- face
- environment
- architecture
- objects.

==================================================
37. NEGATIVE-FILL FIREWALL
==================================================

Negative fill must represent physical reduction of reflected illumination.

Do not create digital black regions.

==================================================
38. BOUNCE FIREWALL
==================================================

Bounce must originate from a surface receiving light.

Do not create bounce from an unlit surface.

==================================================
39. COLOR FIREWALL
==================================================

Color temperature must originate from actual source spectra/environment.

Do not colorize entire scenes merely to communicate emotion.

==================================================
40. WHITE-BALANCE FIREWALL
==================================================

Mixed color temperatures may legitimately coexist.

Do not force the entire scene to one temperature if multiple real sources exist.

==================================================
41. FIRELIGHT FIREWALL
==================================================

Firelight must:

- originate at flame
- weaken with distance
- flicker through flame movement
- affect nearby environment
- cast corresponding shadows.

Do not make only characters flicker.

==================================================
42. PRACTICAL-LIGHT FIREWALL
==================================================

A practical source must have:

- physical size
- physical position
- plausible intensity
- plausible falloff.

Visible lamps must not behave like infinite-area lights.

==================================================
43. SUNLIGHT FIREWALL
==================================================

Sunlight must maintain:

- consistent direction
- environmental contribution
- shadow direction
- realistic intensity.

Cloud changes may modify it.

The sun cannot randomly move during a short shot.

==================================================
44. MOONLIGHT FIREWALL
==================================================

Moonlight must not automatically be saturated blue.

It must interact with:

- sky
- clouds
- terrain
- vegetation
- architecture
- characters.

==================================================
45. ATMOSPHERIC FIREWALL
==================================================

Visible light beams require:

source
+
participating medium
+
appropriate geometry.

No medium:

NO OBVIOUS BEAM.

==================================================
46. VOLUMETRIC FIREWALL
==================================================

Do not generate:

- perfect cones
- perfectly straight glowing shafts
- isolated beams
- character-following light volumes.

Atmospheric scattering must be continuous with the environment.

==================================================
47. DUST / SMOKE FIREWALL
==================================================

Dust and smoke must not exist merely to reveal lighting.

They require environmental justification.

==================================================
48. ATMOSPHERIC TEMPORAL STABILITY
==================================================

Reject:

- particle popping
- density flicker
- sudden fog
- disappearing beams
- changing haze without environmental cause.

==================================================
49. EXPOSURE FIREWALL
==================================================

Exposure must record lighting.

It must not manufacture lighting.

Do not use exposure to compensate for:

- incorrect key
- incorrect fill
- incorrect source intensity
- incorrect shadow design.

==================================================
50. COLOR-GRADE FIREWALL
==================================================

Color grading must not be used to fake missing illumination.

Do not create:

- fake warm pools
- fake blue moonlight
- fake red horror light
- fake divine glow

through grading.

==================================================
51. CAMERA-MOVEMENT FIREWALL
==================================================

Camera movement does not automatically change lighting.

As the camera moves:

the physical world remains.

The camera may reveal:

- new sources
- new shadows
- different reflections
- different occlusion.

==================================================
52. CHARACTER-MOVEMENT FIREWALL
==================================================

When a character moves:

lighting must change according to physical position.

Do not attach a light to the character unless the character actually carries a source.

==================================================
53. SOURCE-MOVEMENT FIREWALL
==================================================

If a light source moves:

its illumination, shadows and reflections must respond.

If it does not move:

its lighting must not randomly move.

==================================================
54. LIGHTING CONTINUITY ACROSS CUTS
==================================================

A cut changes viewpoint.

It does not reset:

- sun
- moon
- fire
- practicals
- ambient
- atmosphere
- shadows
- bounce.

==================================================
55. REVERSE-SHOT FIREWALL
==================================================

Reverse angles must observe the same physical lighting world.

Do not redesign lighting simply because the camera changes side.

==================================================
56. COVERAGE FIREWALL
==================================================

Coverage shots must preserve the established scene lighting state unless:

- camera position changes the observed result
- subject orientation changes the result
- physical occlusion changes
- a source changes.

==================================================
57. TEMPORAL CONTINUITY
==================================================

Within generated video frames, reject:

- brightness flicker
- shadow popping
- color jumps
- unstable highlights
- changing face illumination
- practical intensity popping
- atmospheric popping.

==================================================
58. SPATIAL CONTINUITY
==================================================

Across the environment maintain:

- source direction
- shadow direction
- illumination gradient
- color relationships
- material response.

==================================================
59. LIGHTING STATE DELTA
==================================================

Every meaningful lighting change must be represented as:

PREVIOUS LIGHTING STATE
→
PHYSICAL EVENT
→
NEW LIGHTING STATE.

No unexplained state jumps.

==================================================
60. ONE PRIMARY CAUSE
==================================================

Every major lighting change should have one primary physical cause.

Secondary consequences may follow.

Avoid inventing multiple unrelated causes for the same change.

==================================================
61. NO RETROACTIVE JUSTIFICATION
==================================================

Do not create a lighting effect first and invent a source afterward.

Source must precede illumination.

==================================================
62. UNKNOWN STATE FIREWALL
==================================================

If the system does not know:

- source position
- source state
- environment
- time
- weather
- material
- geometry

do not invent elaborate lighting.

Use the least visually disruptive physically plausible solution.

==================================================
63. UNCERTAINTY RULE
==================================================

When two lighting solutions are possible:

prefer the one with:

- fewer assumptions
- fewer artificial sources
- lower intensity
- simpler geometry
- stronger physical justification.

==================================================
64. MINIMUM-INTERVENTION RULE
==================================================

Never add a light merely because the image appears insufficiently cinematic.

First ask whether:

- camera exposure
- camera position
- source position
- bounce
- practicals
- natural environment

already explain the desired result.

==================================================
65. VISUAL-NOVELTY FIREWALL
==================================================

Do not introduce new lighting phenomena merely to make consecutive shots visually different.

Novelty is not a valid lighting cause.

==================================================
66. BEAUTY FIREWALL
==================================================

"Beautiful lighting" must never mean:

- brighter
- more saturated
- more glowing
- more contrast
- more bloom.

Beauty must emerge from physically coherent relationships.

==================================================
67. REALISM FIREWALL
==================================================

When realism conflicts with visual spectacle:

REALISM WINS.

==================================================
68. HUMAN-CAMERA FIREWALL
==================================================

The final lighting must be achievable by:

- real sunlight
- real environment
- real practicals
- real atmosphere
- real physical cinema lights

or an explicitly established in-world extraordinary source.

==================================================
69. NO DIGITAL LIGHT PAINTING
==================================================

Reject:

- painted facial highlights
- subject-following illumination
- digital shadow masks
- digital light pools
- artificial edge glows
- screen-space lighting
- object-space glow unrelated to sources.

==================================================
70. NO AI-LIGHTING ARTIFACTS
==================================================

Reject:

- changing shadow topology
- impossible highlights
- inconsistent catchlights
- face-only illumination
- glowing edges
- floating light patches
- light leaks without optical cause
- random color patches
- changing illumination on static objects
- lighting that follows objects independently of sources.

==================================================
71. MATERIAL CONTINUITY
==================================================

A material must retain its physical response throughout the sequence.

Gold remains gold.

Stone remains stone.

Skin remains skin.

Fabric remains fabric.

Do not allow lighting to make materials randomly change identity.

==================================================
72. CHARACTER IDENTITY PROTECTION
==================================================

Lighting must not alter:

- facial proportions
- skin structure
- eye shape
- nose shape
- jaw structure
- hairline
- body proportions.

Lighting may change perceived appearance through shadows and exposure, but anatomy must remain stable.

==================================================
73. ARCHITECTURE IDENTITY PROTECTION
==================================================

Lighting must not alter:

- geometry
- proportions
- architectural details
- material identity
- structural relationships.

==================================================
74. LIGHTING + LENS FIREWALL
==================================================

Lighting may cause optical consequences.

But lighting does not directly control:

- flare
- ghosting
- vignetting
- chromatic aberration
- anamorphic streaks.

Those belong to the selected optical system.

Lighting only supplies the physical source conditions.

==================================================
75. LIGHTING + CAMERA FIREWALL
==================================================

Lighting determines illumination.

Camera determines how illumination is recorded.

Do not use lighting files to redefine:

- shutter
- sensor
- ISO/gain
- camera body
- focal length
- camera movement.

==================================================
76. LIGHTING + FRAMING FIREWALL
==================================================

Lighting may support subject readability.

It must not secretly perform:

- reframing
- cropping
- subject repositioning
- digital masking.

==================================================
77. LIGHTING + GRAMMAR FIREWALL
==================================================

Grammar determines relationships between shots.

Lighting determines physical illumination.

Do not change lighting merely because grammar changes.

==================================================
78. LIGHTING + ACTING FIREWALL
==================================================

Lighting must not force facial expression.

Emotion comes from performance and story.

Lighting supports perception.

==================================================
79. LIGHTING + STYLE FIREWALL
==================================================

Style is subordinate to physical lighting.

No style instruction may require physically impossible illumination.

==================================================
80. DIVINE EVENT TRANSITION
==================================================

If a scene transitions into a divine state:

record:

BEFORE STATE
↓
DIVINE EVENT
↓
SOURCE CREATION / CHANGE
↓
ENVIRONMENTAL RESPONSE
↓
NEW STATE.

Never jump directly from ordinary lighting to final divine appearance without an in-world transition when the event is visible in time.

==================================================
81. HORROR EVENT TRANSITION
==================================================

If a scene becomes horrifying:

record:

BEFORE STATE
↓
PHYSICAL CAUSE
↓
LIGHTING CHANGE
↓
ENVIRONMENTAL RESPONSE
↓
NEW STATE.

Do not simply switch to a horror preset.

==================================================
82. LIGHTING REVERSIBILITY TEST
==================================================

For every unusual lighting effect ask:

"If I removed the emotional description, would the physical lighting still make sense?"

If NO:

reject the lighting.

==================================================
83. SOURCE REMOVAL TEST
==================================================

Mentally remove the proposed source.

If the visible lighting remains unexplained:

the lighting system is invalid.

==================================================
84. SHADOW REMOVAL TEST
==================================================

For every important shadow ask:

"What blocks the light?"

If no physical blocker exists:

reject the shadow.

==================================================
85. HIGHLIGHT REMOVAL TEST
==================================================

For every major highlight ask:

"What source is reflected here?"

If no source exists:

reject the highlight.

==================================================
86. DIVINE REALISM TEST
==================================================

A divine scene must remain believable if described simply as:

"real live-action photography under extraordinary natural illumination."

==================================================
87. HORROR REALISM TEST
==================================================

A horrifying scene must remain believable if all emotional adjectives are removed.

The physical environment must still explain the image.

==================================================
88. CROSS-SHOT STATE TEST
==================================================

Before generating a new shot:

inherit the previous physical lighting state.

Only modify variables with a valid cause.

==================================================
89. FRAME-BY-FRAME TEST
==================================================

For every frame transition:

SOURCE STATE
+
GEOMETRY
+
CHARACTER POSITION
+
CAMERA POSITION
+
ATMOSPHERE

must explain the lighting change.

==================================================
90. FAILURE BEHAVIOR
==================================================

If lighting cannot be physically justified:

1. reduce intensity
2. remove unnecessary source
3. reduce atmospheric effect
4. reduce color exaggeration
5. simplify lighting
6. preserve natural environmental illumination.

Never compensate with another artificial effect.

==================================================
91. FINAL LIGHTING VALIDATION GATE
==================================================

Before output:

[ ] Every major source exists.
[ ] Every source has physical geometry.
[ ] Every major illumination has a source.
[ ] Every major shadow has a source and occluder.
[ ] Light obeys distance.
[ ] Light obeys occlusion.
[ ] Bounce has a receiving surface.
[ ] Materials respond differently.
[ ] Skin remains human.
[ ] Eyes remain human.
[ ] Architecture remains real.
[ ] Atmosphere is justified.
[ ] Divine lighting remains physical.
[ ] Horror lighting remains physical.
[ ] Color temperature is motivated.
[ ] Exposure records lighting rather than replacing it.
[ ] Camera movement does not invent lighting changes.
[ ] Character movement changes illumination physically.
[ ] Lighting survives cuts consistently.
[ ] Lighting survives reverse shots.
[ ] No digital light painting exists.
[ ] No artificial glow exists without source.
[ ] No AI lighting artifacts exist.
[ ] No emotional preset has overridden physics.
[ ] No unexplained lighting state change exists.

If ANY item fails:

DO NOT FINALIZE.

==================================================
92. FINAL ZERO-LOOPHOLE RULE
==================================================

THE LIGHTING SYSTEM MUST BEHAVE AS IF:

A REAL WORLD EXISTS,
REAL SOURCES EXIST,
REAL LIGHT TRAVELS THROUGH THAT WORLD,
REAL MATERIALS RECEIVE THAT LIGHT,
REAL SHADOWS FORM,
REAL ATMOSPHERE SCATTERS IT,
REAL HUMANS ARE ILLUMINATED BY IT,
AND A REAL CINEMATOGRAPHER IS RECORDING THE RESULT.

The system must never behave as though lighting is a decorative image-generation instruction.

PHYSICAL LIGHTING REALISM IS ABSOLUTE.
