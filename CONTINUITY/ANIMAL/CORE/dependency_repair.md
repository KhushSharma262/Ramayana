# ANIMAL DEPENDENCY REPAIR

## PURPOSE

Defines minimal-change repair strategy.

---

# PRINCIPLE

CHANGE ONLY WHAT IS AFFECTED.

---

# EXAMPLE

If an injury changes:

PHYSIOLOGY
? BEHAVIOR
? LOCOMOTION
? AUDIO
? PERFORMANCE

Do not regenerate:

unrelated species identity
unrelated historical records
unrelated group records
unrelated canonical facts

---

# REPAIR STEPS

1. Identify changed node.
2. Identify downstream dependencies.
3. Freeze unaffected nodes.
4. Update affected state.
5. Revalidate affected chain.
6. Approve corrected state.
7. Propagate.
8. Record audit history.
