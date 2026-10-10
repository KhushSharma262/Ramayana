# SURFACE STRUCTURE FAILURE MODES

| ID | Failure | Detection | Required response |
|---|---|---|---|
| SF-001 | Unsupported material-specific claim | Source audit | Mark UNKNOWN and open research item |
| SF-002 | Physical scale mismatch | Dimensional and camera tests | Correct scale mapping |
| SF-003 | Geometry and normal map duplicate the same feature | Representation audit | Define scale separation |
| SF-004 | Roughness treated as measured geometry | Parameter provenance review | Separate geometry from fitted optical parameters |
| SF-005 | Visible texture tiling | Repeated-pattern and motion review | Rework distribution or mapping |
| SF-006 | Implausible spatial randomness | Distribution comparison | Validate or relabel as reconstruction |
| SF-007 | LOD popping or shimmer | Motion and resolution tests | Correct filtering and transitions |
| SF-008 | AO treated as global illumination | Renderer configuration review | Correct method and claims |
| SF-009 | Reflection approximation treated as complete transport | Controlled scene tests | Document limits or use suitable transport |
| SF-010 | Baked and dynamic light double-counted | Controlled lighting comparison | Correct contribution accounting |
| SF-011 | Layer order or thickness inconsistent | Geometry and grazing-light tests | Correct topology and model |
| SF-012 | Surface state changes without a causal transition | Temporal review | Correct state continuity |
| SF-013 | Denoising erases real structure | Render comparison | Adjust method and retest |
| SF-014 | Conflicting source evidence concealed | Evidence audit | Preserve conflict and uncertainty |
| SF-015 | File validation mistaken for scientific validation | Release-gate audit | Restore separate validation states |

This list is a baseline of known failure modes, not a proof that no other
failure mode can exist. Add material- and renderer-specific failures as found.
