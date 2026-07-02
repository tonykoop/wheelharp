# Design Intent — wheelharp rev A

- Master CAD: `cad/wheelharp.scad` (sha256: 4838627fa4520dfbb871a92dc339ecb4f9947d004aa30b0f716268ce92669783), a parametric structural-envelope scaffold driven by the symbolic table `parametric-design-table.md` (sha256: 3f37d2c14507377464896567bee6d45e862d44b67a245a26d6b9961ffd94dbf4).
- Function: A keyboard-controlled bowed-string instrument. A motor keeps a bank of rosined wheels rotating; each key on a semicircular keyboard presses its string against the assigned spinning wheel (a keyboard bank of miniature hurdy-gurdy bow wheels). Idle strings are damped so notes do not smear. Frame carries wheel alignment, string load, and keyboard reference.
- Environment: powered acoustic/amplified instrument; rosin dust, drive noise, heat, and wheel wear are first-order concerns; string tension + wheel contact are sustained loads on the frame; guarding is required before powered testing.
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

Packet is deliberately non-dimensional — every critical value is
`pending_measurement`; the table records the governing symbolic relationship
and its measurement gate, not a released number.

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Wheel count | TBD (f(note layout, service, drive)) | one-wheel coupon first | set only after one-wheel behavior | parametric-design-table.md (pending_measurement) |
| Wheel spacing | TBD (max(service, guard, contact)) | measured clearances | service + guard + no cross-contact | parametric-design-table.md (pending_measurement) |
| String contact path | TBD (f(key motion, linkage, wheel edge)) | one-string fixture | clean engagement | parametric-design-table.md (pending_measurement) |
| Damper position | TBD (f(note-off, string path, service)) | damper test | no idle smear | parametric-design-table.md (pending_measurement) |
| Drive architecture | TBD (shared/grouped/individual) | noise/heat/recovery logs | usable + safe drive | parametric-design-table.md (pending_measurement) |
| Guard envelope | TBD (f(moving parts, dust, hand clearance)) | safety review | safe powered testing | parametric-design-table.md (pending_measurement) |
| Frame reference | TBD (f(wheel/string/keyboard alignment)) | witness marks + service checks | alignment survives service | parametric-design-table.md (pending_measurement) |

## Incidental (free for DFM)

- Cabinet/enclosure styling, keyboard cosmetic shaping, guard cosmetics on non-functional faces, non-mating surface finish.

## Must-nots (DFM may never violate)

- Do not assign a fabrication value to any symbol or promote a `// PLACEHOLDER` in `cad/wheelharp.scad` without a measured/reviewed authority-register row (parametric-design-table.md Symbolic Promotion Rule).
- Do not release scale, tuning, wheel diameter, or motor speed from historical examples, images, or prose (design.md).
- Guarding must exist before any powered wheel testing (validation.csv VAL-006).
- Frame is an alignment + load path: no sizing until frame-reference review (VAL-007).
- Preserve service access to wheels, strings, dampers, and drive for rosin/cleaning.

## Material intent

- Preferred: structural frame, rosined wheel bank, motor/drive, semicircular keybed, strings + dampers, soundboard or pickup — all per bom.csv, all class-only / `pending_measurement`.
- Acceptable subs: per sourcing.csv (spec-first; specs pending).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable or dimensioned.
