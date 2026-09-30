# MOTION CAPTURE POLICY

Motion capture is a physical performance source.

Possible source classes:

- recorded human performance
- markerless capture
- optical capture
- procedural movement
- manually authored animation

Every motion asset must record its source.

Captured motion must be evaluated for:

- foot sliding
- jitter
- impossible joint angles
- unstable contacts
- retargeting distortion
- excessive smoothing
- unnatural interpolation
- incorrect scale
- incorrect timing

Raw mocap is not automatically production-ready.

Cleanup must preserve believable human movement rather than
over-smoothing every imperfection.
