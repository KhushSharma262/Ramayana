# SURFACE SCALE AND FILTERING

Match feature dimensions to physical scale and projected pixel footprint. At distance, use appropriate filtering/averaging/mipmapping rather than enlarging subpixel structure into false bumps. At close range, geometry, displacement, normals and shading must agree.

Prevent texture crawling, flicker, aliasing, moire, detail popping, inconsistent LOD scale and double-counting features across representation layers. LOD may change representation but not material identity or physical dimensions.
