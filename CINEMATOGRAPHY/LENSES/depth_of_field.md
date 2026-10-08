### DEPTH OF FIELD BEHAVIOUR

Treat depth of field as a physical optical consequence of the complete camera, lens, sensor, focus, and scene configuration.

Depth of field MUST NEVER be treated as an independent artificial blur control.

The final image must look like professionally photographed live-action footage captured with a real physical camera and lens.

AI_ARTIFACT_TOLERANCE:
none

==================================================
PHOTOREALISM - NON-NEGOTIABLE
==================================================

Maintain:

- physically plausible focus
- realistic focus falloff
- realistic subject separation
- realistic foreground and background sharpness
- realistic lens rendering
- realistic facial detail
- realistic hair detail
- realistic environmental detail
- physically consistent depth
- realistic motion
- realistic motion blur
- stable focus behaviour
- temporal consistency

Do NOT create:

- artificial portrait-mode blur
- uniformly blurred backgrounds
- cutout-like subjects
- halos around characters
- sharp subjects pasted onto blurred backgrounds
- excessive cinematic blur
- impossible focus transitions
- random focus changes
- unstable subject edges
- AI-looking segmentation
- fake bokeh unrelated to the selected lens
- background blur that ignores actual distance
- foreground elements that remain unnaturally sharp without physical justification
- objects at similar distances with arbitrarily different focus
- frame-by-frame blur variation without physical cause
- digitally generated focus masks
- depth-map-style blur artifacts
- blur that follows object identity instead of optical distance

When uncertain, choose the physically plausible and less noticeable result.

==================================================
CORE PRINCIPLE
==================================================

Depth of field is the range of object distances around the focal plane that appear acceptably sharp under defined viewing conditions.

It is determined by the combined relationship between:

- focal length
- aperture
- focus distance
- sensor format
- active sensor area
- circle of confusion
- subject distance
- foreground distance
- background distance
- framing
- viewing / output conditions

Depth of field MUST NOT be independently authored after the image has been constructed.

The system must derive focus behaviour from the complete physical camera configuration.

UNKNOWN parameters MUST NOT be interpreted as permission to add cinematic blur.

UNKNOWN != SHALLOW
UNKNOWN != DEEP
UNKNOWN != BOKEH

==================================================
FOCAL LENGTH
==================================================

Focal length influences depth-of-field behaviour in combination with framing, sensor format, aperture, and camera distance.

Longer focal lengths can produce stronger subject isolation when used with appropriate framing and distances.

Shorter focal lengths generally provide greater apparent depth when used from comparable shooting conditions.

Do NOT state:

"Long lenses always have shallower depth of field."

Evaluate focal length together with:

- camera position
- sensor format
- framing
- aperture
- subject distance
- background distance
- focus distance

Focal length MUST NOT independently authorize artificial background blur.

==================================================
APERTURE
==================================================

Aperture is a primary physical control of depth of field.

Wider apertures generally:

- reduce depth of field
- increase subject isolation
- increase visible defocus
- may increase lens aberrations depending on lens design

Narrower apertures generally:

- increase depth of field
- preserve more environmental detail
- reduce defocus
- allow more depth planes to remain readable

Do NOT automatically select the widest aperture.

Aperture selection must consider:

- shot purpose
- subject count
- subject movement
- focus requirements
- environment
- available light
- lens behaviour
- desired visual emphasis

The aperture must remain physically compatible with exposure and the selected lens.

==================================================
FOCUS DISTANCE
==================================================

Focus distance strongly affects depth-of-field behaviour.

Closer focus distances generally produce shallower depth of field under comparable conditions.

Therefore:

- close-up -> potentially very shallow focus
- medium shot -> potentially moderate focus range
- wide environmental shot -> potentially deeper focus

Do not force identical depth-of-field behaviour across different shot sizes.

Focus distance must correspond to an actual focal plane in the scene.

==================================================
SUBJECT-BACKGROUND DISTANCE
==================================================

Greater subject-to-background separation generally makes background defocus more noticeable.

Use this naturally.

A character standing substantially in front of a distant forest may produce strong background defocus when the physical optical configuration supports it.

A character standing directly against a wall must not suddenly acquire extreme background blur without sufficient optical justification.

Background blur must follow actual scene geometry.

Do not invent separation that does not exist in the scene.

==================================================
FOREGROUND DEPTH OF FIELD
==================================================

Depth of field applies in front of the focal plane as well as behind it.

Foreground elements such as:

- foliage
- pillars
- curtains
- branches
- objects
- people

may naturally become out of focus.

Do not blur only the background while keeping every foreground object artificially sharp.

Foreground defocus must correspond to actual foreground distance and the selected optical configuration.

==================================================
FOCUS PLANE
==================================================

Maintain a coherent physical focal plane.

When focus is placed on:

- a person's eyes
- a specific object
- a character
- an architectural feature

objects at progressively different distances must transition naturally from sharp to soft.

Objects occupying substantially similar depth positions must not receive arbitrary focus differences.

Do not use semantic object recognition to independently decide sharpness.

Focus is determined by optical distance, not object importance.

==================================================
HUMAN FACES
==================================================

For human subjects:

Prioritize the eyes when the shot is intended as a portrait or character close-up.

Maintain realistic:

- eye sharpness
- eyelashes
- skin texture
- hair detail
- facial contours

With very shallow depth of field:

- the nearer eye may be sharper than the farther eye
- ears may naturally soften
- nose or hair may gradually fall outside the focal plane
- background should transition smoothly into defocus

Do not make an entire face uniformly razor-sharp when the optical configuration would not allow it.

Do not blur facial features independently.

Do not allow face-aware segmentation to override physical focus.

Character identity, anatomy, skin, hair, jewelry, costume, and facial structure must remain stable regardless of focus.

==================================================
TWO-SHOTS AND GROUPS
==================================================

When multiple characters are important:

Do not automatically isolate one character with extreme shallow depth of field.

Choose an aperture and focus strategy that allows required subjects to remain readable.

For characters at different distances:

- use an appropriate focus plane
- use sufficient depth of field when necessary
- use blocking that keeps subjects within an appropriate focus range
- use rack focus when attention genuinely needs to shift

Do not force cinematic blur at the expense of story clarity.

If multiple important subjects cannot physically remain within the required depth of field, change the physical camera configuration rather than applying artificial sharpening or blur.

==================================================
ENVIRONMENTAL SHOTS
==================================================

For:

- landscapes
- architecture
- forests
- cities
- palaces
- temples
- battlefields
- large environments

use sufficient depth of field to preserve spatial information when that information is important.

Do not blur an entire environment merely because shallow depth of field is visually attractive.

Environmental geography must remain physically coherent and readable when required by the story.

==================================================
RACK FOCUS
==================================================

When a rack focus is specified:

- transition focus continuously
- preserve realistic focal-plane movement
- maintain physically plausible blur progression
- allow the previously focused subject to soften naturally
- allow the newly focused subject to sharpen naturally
- preserve realistic lens breathing according to the selected lens profile
- preserve exposure and optical behaviour consistent with the lens

Do NOT:

- switch focus instantaneously
- sharpen or blur objects independently
- use digital focus masks
- keep unrelated objects artificially sharp
- create blur independently for individual subjects

The entire image must behave as one physical optical system.

==================================================
FOCUS PULL SPEED
==================================================

Focus transition speed may respond to:

- story purpose
- emotional intensity
- subject movement
- camera movement
- lens characteristics
- focus distance
- shot duration
- required focus travel

Fast focus pulls may be appropriate for:

- sudden discoveries
- danger
- action
- rapid attention shifts

Slow focus pulls may be appropriate for:

- emotional moments
- revelations
- contemplative scenes
- gradual attention shifts

Story intent may select the desired focus transition.

It MUST NOT override physical focus behaviour.

The optical transition must remain continuous and plausible.

==================================================
HYPERFOCAL / DEEP FOCUS
==================================================

When deep focus is required:

allow foreground, subject, and background to remain sufficiently sharp through an appropriate combination of:

- focal length
- aperture
- focus distance
- camera position
- sensor format
- active sensor area
- circle of confusion
- lighting

Do not simulate deep focus by simply sharpening the entire image.

Deep focus must remain an optical consequence of the camera configuration.

==================================================
BOKEH RELATIONSHIP
==================================================

Bokeh is the visual appearance of regions rendered outside the acceptable depth-of-field range.

Do not treat bokeh and depth of field as identical concepts.

Depth of field determines:

WHAT IS ACCEPTABLY SHARP.

Bokeh describes:

HOW OUT-OF-FOCUS AREAS ARE RENDERED.

Bokeh must therefore follow the selected lens's optical characteristics.

Do not add artificial bokeh independently from the depth-of-field calculation.

No depth-of-field trigger -> no artificial bokeh.

==================================================
LENS CHARACTER
==================================================

Depth-of-field rendering may respond to the selected lens type and optical design.

Relevant lens characteristics may include:

- focus falloff
- bokeh rendering
- field curvature
- focus breathing
- spherical aberration
- contrast
- edge rendering
- optical softness
- anamorphic behaviour

Do not make every lens produce identical focus behaviour.

Lens character must never be used as permission to introduce unsupported optical artifacts.

==================================================
ANAMORPHIC INTERACTION
==================================================

If an anamorphic lens is selected:

maintain its specific optical behaviour while preserving physically plausible depth of field.

Do NOT automatically make anamorphic footage extremely shallow-focus.

Anamorphic does NOT mean:

"maximum background blur."

Depth of field must still follow:

- focal length
- aperture
- focus distance
- sensor format
- subject distance
- background distance

Any anamorphic bokeh characteristics must emerge naturally from the selected lens profile.

==================================================
SENSOR FORMAT
==================================================

Account for the selected sensor format and active recording area.

Do not assume crop factor directly changes depth of field by itself.

When comparing formats, consider:

- actual focal length
- framing
- camera distance
- aperture
- focus distance
- circle of confusion
- active sensor dimensions

Crop factor is a sensor/FOV relationship, not an independent blur generator.

Do not use digital blur to imitate another sensor's depth-of-field behaviour.

==================================================
CINEMATIC SUBJECT ISOLATION
==================================================

Subject isolation must be created through the physical camera configuration.

Use combinations of:

- appropriate focal length
- appropriate aperture
- camera-to-subject distance
- subject-to-background distance
- sensor format
- focus distance
- lighting
- composition

Do NOT begin with:

"very blurry cinematic background."

Instead determine the physical conditions that would produce the desired isolation.

Cinematic intent can select among physically valid configurations.

It cannot manufacture unsupported depth of field.

==================================================
LIGHTING INTERACTION
==================================================

Depth of field must remain physically independent from lighting.

Lighting may make focus separation more or less visually noticeable.

Examples:

- bright background highlights may make defocus more apparent
- dark backgrounds may make subtle blur less noticeable
- backlighting may reveal bokeh
- atmospheric haze may reduce perceived sharpness independently of depth of field

Do not confuse atmospheric softness with optical defocus.

Do not increase depth of field merely because an area is bright or decrease it merely because an area is dark.

==================================================
ATMOSPHERIC DEPTH
==================================================

Distinguish between:

OPTICAL DEPTH OF FIELD

and:

ATMOSPHERIC PERSPECTIVE.

Distant objects may appear softer because of:

- haze
- dust
- humidity
- smoke
- atmospheric scattering

This does not necessarily mean they are outside the lens's depth of field.

Maintain atmospheric effects and optical focus independently.

Do not use atmospheric haze as a substitute for optical blur.

Do not use optical blur as a substitute for atmospheric perspective.

==================================================
CAMERA MOVEMENT
==================================================

During:

- dolly
- tracking
- crane
- orbit
- pan
- tilt

maintain physically consistent focus behaviour.

If the camera physically moves toward a subject:

- subject distance changes
- focus distance may need to change
- depth of field must be recalculated
- focus may naturally drift if no focus compensation is specified

If continuous subject focus is intended, use a physically plausible focus-follow behaviour.

Do not lock focus to a subject through impossible digital tracking unless the system is explicitly modeling a real physical autofocus/focus-pull mechanism.

==================================================
SUBJECT MOVEMENT
==================================================

When a subject moves:

- its distance from the camera may change
- its relationship to the focal plane may change
- it may naturally move into or out of focus

Maintain physically consistent focus behaviour.

If focus tracking is specified, model it as a continuous optical focus adjustment.

Do not independently blur or sharpen the moving subject.

==================================================
VIDEO TEMPORAL CONSISTENCY
==================================================

This is a VIDEO generation system.

Depth of field must remain temporally stable.

Do NOT allow:

- background blur to flicker
- focus boundaries to shimmer
- sharpness to randomly change
- hair edges to become unnaturally sharp or soft
- objects to switch focus without physical cause
- blur strength to change between frames without movement or configuration change
- bokeh to randomly appear or disappear
- facial focus to drift unpredictably
- focus planes to jump
- subject edges to morph because of blur
- depth maps to visibly reconfigure frame-to-frame

During camera movement:

focus relationships must remain physically consistent.

During subject movement:

the subject may naturally move into or out of the focal plane.

During rack focus:

the focal plane must transition continuously.

==================================================
AI ARTIFACT FIREWALL
==================================================

Depth of field MUST NOT be generated by:

- semantic segmentation
- object masks
- face masks
- depth-map painting
- screen-space blur
- arbitrary background replacement
- per-object blur controls
- sharpening masks
- generative texture replacement
- frame-specific image manipulation

The correct causal direction is:

PHYSICAL SCENE
->
CAMERA POSITION
->
SENSOR
->
LENS
->
FOCAL LENGTH
->
APERTURE
->
FOCUS DISTANCE
->
SCENE DISTANCES
->
DEPTH OF FIELD
->
BOKEH / DEFOCUS RENDERING
->
RECORDED IMAGE

Never reverse this relationship.

Do not decide the desired blur first and fabricate the optical explanation afterward.

==================================================
FOCUS VALIDATION
==================================================

Before accepting the generated shot, validate:

- selected sensor is physically compatible
- selected lens is physically compatible
- focal length is valid
- aperture is valid
- focus distance is valid
- subject distance is valid
- background distance is valid
- depth-of-field result is physically plausible
- focal plane is coherent
- bokeh is consistent with the selected lens
- focus transitions are continuous
- temporal behaviour is stable
- no AI-style segmentation is visible

If validation fails:

1. identify the earliest invalid physical parameter
2. correct that parameter
3. recalculate dependent values
4. regenerate optical behaviour
5. do not patch the image digitally

==================================================
NATURALISM RULE
==================================================

Optical behaviour must be proportional to its physical cause.

NO PHYSICAL SUPPORT -> NONE

WEAK PHYSICAL SUPPORT -> SUBTLE

STRONG PHYSICAL SUPPORT -> PHYSICALLY APPROPRIATE

Never exaggerate depth of field because the scene is:

- epic
- dramatic
- emotional
- beautiful
- cinematic
- immersive
- mythological

Story importance may influence camera configuration.

It may not override optics.

==================================================
FINAL DECISION ORDER
==================================================

Determine depth of field in this order:

1. STORY PURPOSE
2. SHOT TYPE
3. SUBJECT PRIORITY
4. NUMBER OF IMPORTANT SUBJECTS
5. SENSOR FORMAT
6. FOCAL LENGTH
7. CAMERA POSITION
8. SUBJECT DISTANCE
9. BACKGROUND DISTANCE
10. APERTURE
11. FOCUS DISTANCE
12. DEPTH OF FIELD
13. BOKEH RENDERING
14. FOCUS BEHAVIOUR DURING MOTION

Never begin with:

"Add shallow depth of field."

Instead, construct the physical camera and lens configuration that would naturally produce the required focus behaviour.

The final video must look like real professionally photographed live-action footage.

Depth of field must appear to be a consequence of a real optical system, never an AI-generated visual effect.

It must never look AI-generated.

