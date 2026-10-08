# CAMERA LENS LIBRARY

## SYSTEM ROLE

Operational index of lenses available to the camera system.

The authoritative physical lens descriptions remain in:

CINEMATOGRAPHY\LENSES

This file must never become a duplicate optical database.

---

## PURPOSE

Provides:

- lens identifiers
- available focal lengths
- spherical/anamorphic availability
- sensor compatibility
- operational compatibility
- minimum-focus constraints where needed
- continuity grouping

---

## SELECTION

Lens selection is performed by the lens-selection system.

This library provides the available physical options.

Do not invent optical characteristics that do not exist in the LENSES system.

---

## MACHINE INTERFACE

lens_library:
  spherical:
    available:
  anamorphic:
    available:

lens_entry:
  identifier:
  lens_class:
  optical_format:
  focal_length:
  sensor_compatibility:
  minimum_focus_distance:
  operational_notes:
  continuity_group:

---

## FINAL RULE

This file is an inventory and interface.

It is not a second LENSES system.
