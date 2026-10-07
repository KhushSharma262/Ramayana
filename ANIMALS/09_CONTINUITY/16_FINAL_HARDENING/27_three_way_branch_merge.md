# THREE-WAY BRANCH MERGE

Branch merging must compare:

BASE STATE
BRANCH A
BRANCH B

Each changed field is classified:

UNCHANGED
A_ONLY
B_ONLY
SAME_CHANGE
CONFLICT

Automatic merge is permitted only for:

UNCHANGED
A_ONLY
B_ONLY
SAME_CHANGE

CONFLICT requires explicit domain authority resolution.

A branch cannot overwrite another branch merely because it is newer.

Unresolved merge = BLOCKED.
