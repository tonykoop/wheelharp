<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Drawing Brief

Scope for any future dimensioned drawing of the wheelharp. This packet is
deliberately non-dimensional (concept-only / `pending_measurement`), so **no
dimensioned DXF/SVG exists yet** and none may be produced until the measurement
gates in `validation.csv` and the authority register are satisfied.

## What a future drawing set must show (once measured)

- **Wheel bank layout** — wheel count, diameters, and `wheel_spacing` along the
  semicircular arc, with axle/bearing supports.
- **Key-to-string engagement** — `string_contact_path` per key from key motion
  through the engagement linkage to the assigned wheel edge.
- **Damping** — `damper_position` and idle-release scheme.
- **Drive** — motor(s), transmission, and `drive_architecture` (shared/grouped/
  individual) with guarding.
- **Guard + frame** — `guard_envelope` (moving parts, dust path, hand
  clearance) and `frame_reference` alignment datums.

## Current CAD artifact

`cad/wheelharp.scad` is a **parametric structural-envelope scaffold**: it lays
out the semicircular frame, wheel-bank arc, keyboard arc, and guard/drive
envelope, encoding the documented symbolic relationships as formulas with
render-only placeholder leaf values (clearly flagged, not authority). A more
detailed one-wheel coupon (`cad/wheel-coupon.scad`) remains a planned future
artifact.

## Drawing rules

- Every dimension on any released drawing must trace to a measured or reviewed
  authority-register row.
- Keep the layout relationships (`wheel_spacing`, `frame_reference`,
  `guard_envelope`) formula-driven; never hand-place from a lossy export.
- Treat existing Wheelharp/Viola Organista instruments, photos, and diagrams as
  reference-only.
