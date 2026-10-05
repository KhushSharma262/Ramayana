# EVENT GRAPH

The Event system supports directed causal graphs.

Example:

ROOT EVENT
├── EVENT A
│   ├── EVENT A1
│   └── EVENT A2
├── EVENT B
└── EVENT C

Relationships may include:

CAUSES
CAUSES
DEPENDS_ON
FOLLOWS
INTERRUPTS
RESUMES
CONVERGES
BRANCHES
