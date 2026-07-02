<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Risks

Top-level risk summary for the wheelharp L2 build-packet candidate. The full
qualitative analysis lives in `risk-FMEA.md`; this file is the baseline packet
summary. No numeric risk scores are assigned.

## Wheel bank / drive

- **Untrue wheel / uneven rosin** — scratchy or dead notes. Control: measured
  one-wheel coupon before setting wheel_count (validation.csv VAL-001).
- **Insufficient wheel spacing** — no service/guard clearance or adjacent
  contact. Control: `wheel_spacing = max(service, guard, contact margin)`
  (VAL-002).
- **Drive noise / heat** — instrument unusable or unsafe. Control: drive
  architecture noise/heat/recovery logs (VAL-005).

## Engagement / damping

- **Key engagement path unreliable** — wrong or missed string contact. Control:
  one-string contact fixture (VAL-003).
- **No idle damping** — notes smear across the keyboard. Control: damper
  position test (VAL-004).

## Safety / structure / process

- **Unguarded moving parts / rosin dust** — injury or health hazard. Control:
  guard envelope + safety review before powered testing (VAL-006).
- **Frame alignment drifts after service** — wheels/strings/keyboard misalign.
  Control: frame reference with witness marks + repeated service checks (VAL-007).
- **CAD appears authoritative too early** — the parametric OpenSCAD envelope
  (`cad/wheelharp.scad`) carries `pending_measurement` authority and render-only
  placeholder values; it is **not** fabrication authority. Update the authority
  register before any DXF/SVG or measured geometry is accepted.

## Must-not (carried into evolution/design-intent.md)

- Do not assign a fabrication value to any symbol (wheel_count, wheel_spacing,
  drive_architecture, …) or promote a `// PLACEHOLDER` without a
  measured/reviewed authority-register row (parametric-design-table.md).
- Do not release scale, tuning, wheel diameter, or motor speed from historical
  examples, images, or prose (design.md authority boundary).
- Guarding must exist before any powered wheel testing.
