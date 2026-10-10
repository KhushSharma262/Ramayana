# SURFACE SCALE, FILTERING, SAMPLING, AND LOD

## 1. Physical scale

Store feature dimensions in physical units where possible. Keep physical
feature size separate from texture resolution, UV scale, screen-space pixel
size, and renderer roughness parameters.

A camera move must not change the actual physical size of a surface feature.
Only its projection, visibility, and sampling change.

## 2. Representation selection

Use geometry, displacement, normal maps, bump maps, texture variation, or
effective statistical shading according to:
- Physical feature size.
- Silhouette impact.
- Parallax and view dependence.
- Contact and self-shadowing.
- Optical importance.
- Renderer support.
- Camera distance and resolution.
- Required temporal stability.

State what physical effects each representation does and does not reproduce.

## 3. Filtering and aliasing

Fine detail can exceed image sampling limits. Evaluate appropriate filtering,
mipmapping, anisotropic filtering, geometric tessellation, displacement
filtering, and stochastic sampling as supported by the renderer.

Prevent:
- Shimmering and crawling detail.
- Unstable specular highlights.
- Moire and repeated patterns.
- Disappearing structure that causes an implausible material change.
- Overblurred details that erase meaningful material identity.
- Filtered normal maps that produce incorrect shading.

A filtered representation is an approximation. Validate it rather than
assuming filtering preserves all physical effects.

## 4. LOD and transitions

Define the conditions under which representations change with distance or
screen coverage. Preserve approximate appearance and relevant physical
behavior across transitions.

Test for:
- Popping.
- Scale changes.
- Highlight discontinuities.
- Shadow changes.
- Texture tiling.
- Geometry/map double counting.
- Temporal flicker.
- Abrupt roughness or normal changes.

Use crossfading or other transition methods only when supported by the
pipeline and when they do not introduce worse artifacts.

## 5. UV and coordinate integrity

Document coordinate systems, UV scale, directionality, seams, and texture
resolution. Grain, weave, fibers, scratches, and layered structures may have
directional constraints that ordinary isotropic mapping will violate.

Inspect seams and UV distortion. Do not stretch or compress a physically
meaningful feature without documenting the consequence.

## 6. Camera and motion tests

Inspect close, medium, and distant views, including grazing angles and motion.
Use representative focal lengths and image resolutions. Record the approved
range and known failure limits.

A feature that looks realistic in a single still image may fail under camera
motion, changing light, or a different scale.
