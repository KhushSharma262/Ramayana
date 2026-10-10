# UNCERTAINTY AND ERROR

## Separate error classes

1. Measurement uncertainty
2. Sampling variability
3. Material variability
4. Environmental variability
5. Parameter uncertainty
6. Model-form uncertainty
7. Numerical error
8. Discretization error
9. Solver error
10. Interpolation error
11. Extrapolation error
12. Historical reconstruction uncertainty

## Never combine unlike uncertainties without justification.

## Error propagation

When a derived quantity depends on uncertain inputs, its uncertainty must be propagated.

Do not simply attach the largest input uncertainty to the output.

## Numerical convergence

A simulation result should be tested for sensitivity to:

- spatial resolution
- temporal resolution
- timestep
- solver tolerance
- contact resolution
- mesh resolution
- particle resolution
- iteration count

## Validation

Agreement with one observed frame is not sufficient to establish physical validity.
