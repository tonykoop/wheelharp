<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Decision Record

## Decisions

- Readiness is `L1 concept packet`.
- The instrument is modeled as a keyboard-controlled rosined wheel bank, not as
  a conventional plucked, struck, or single-wheel hurdy-gurdy.
- The first technical risk is controlled friction: wheel truing, rosin, string
  contact, damping, and mechanical noise.
- The motor drive is treated as an unresolved subsystem, with no performance
  numbers claimed.
- The key action is intentionally left open between string-moving, wheel-moving,
  and pressure-shoe approaches.
- Every visual-output register row is `concept_only`; no artifact is
  fabrication authority.

## Open Questions

- Should the wheel bank use one shared drive path or many independently driven
  wheels?
- Should each key move the string, the wheel, or an intermediate contact shoe?
- How can the design damp strings cleanly at release without making the key
  feel heavy?
- What wheel material and rosin combination gives stable tone with tolerable
  dust and wear?
- How should the semicircular keyboard route strings and linkages without
  blocking wheel maintenance?
- Should the first prototype be acoustic, amplified, or a bench test rig with
  pickups?
- What guarding is needed around continuously spinning rosined wheels?
- What must be tested in a one-wheel coupon before scaling to a wheel bank?

## Rejected For L1

- No dimensions.
- No tuning table.
- No string gauges.
- No wheel diameter or motor speed targets.
- No CAD, DXF, G-code, or fabrication drawing.
- No claim that the concept is ready to build.

