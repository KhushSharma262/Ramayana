# MOTION STATE SYSTEM

Movement is stateful.

Examples:

STANDING
    ↓
PREPARING_TO_WALK
    ↓
WALKING
    ↓
SLOWING
    ↓
STOPPING
    ↓
STANDING

Another example:

STANDING
    ↓
KNEELING
    ↓
PRAYER
    ↓
RISING
    ↓
STANDING

Never switch unrelated motion clips without considering the
transition between states.

Every motion should define:

START STATE
ACTIVE STATE
END STATE

where applicable.
