<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# CAD Notes

`wheelharp.scad` is a parametric **structural-envelope scaffold** — authority
`pending_measurement`, **not** fabrication authority. See
`../visual-output-register.csv` (WH-CAD-001) and `mcp-session-log.md`.

This packet is deliberately non-dimensional: every leaf number in the `.scad`
is a render-only placeholder (tagged `// PLACEHOLDER`), chosen only so the
semicircular frame / wheel-bank arc / keyboard arc / guard + drive envelope
draws. The honest, source-traceable content is the set of **symbolic
relationships** from `../parametric-design-table.md` (`wheel_spacing =
max(service, guard, contact margin)`, arc layout) encoded as formulas. The
`pitch_ok` echo is an illustrative feasibility check on the placeholder layout,
not a released clearance.

Mechanism internals (engagement linkage, bearing/hub, motor, damper action)
are intentionally **out of scope**. A more detailed one-wheel coupon
(`cad/wheel-coupon.scad`) remains a planned future artifact — see `../design.md`.

Render check: `openscad -o /tmp/wheelharp-check.stl wheelharp.scad`
exits 0 (manifold solid, "Simple: yes"). Promote a placeholder to a real value
only via a measured/reviewed authority-register row.
