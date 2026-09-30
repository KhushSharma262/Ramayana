# LOCATION TOPOLOGY

Spatial relationships must be represented explicitly.

Allowed relationship types include:

- CONTAINS
- INSIDE
- ADJACENT_TO
- CONNECTED_TO
- LEADS_TO
- ABOVE
- BELOW
- WITHIN
- SURROUNDS
- VISIBLE_FROM
- APPROACHED_FROM
- DEPARTS_TO
- ARRIVES_FROM

Example:

DAKSHA_KINGDOM
    CONTAINS
        DAKSHA_PALACE

DAKSHA_KINGDOM
    CONTAINS
        DAKSHA_YAJNA_SITE

A palace and yajna site must not randomly exchange positions
between scenes.

Topology is a spatial truth system, not a camera system.
