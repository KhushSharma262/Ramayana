# STATE DELTA

The Event records changes rather than silently replacing complete state.

Structure:

PREVIOUS STATE
→ EVENT
→ CHANGED ATTRIBUTES
→ NEW STATE

Example:

previous:
garment = intact

event:
arrow strike

delta:
garment.front_panel = torn

new:
garment = damaged

Unchanged attributes remain inherited.
