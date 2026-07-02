<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Wheelharp

**Status:** L2 V5 build-packet candidate

This repository is a V5 L2 build-packet candidate for a Wheelharp-style instrument: a
semicircular keyboard where each key engages a string against a continuously
rotating rosined wheel. The concept behaves like a keyboard-controlled bank of
miniature hurdy-gurdy bow wheels, with motor drive, wheel truing, string
engagement, damping, and service access treated as the primary engineering
questions.

This packet is not a build-ready plan. It contains no released dimensions, no
tuning table, no string gauges, no wheel diameters, no motor speed targets, no
DXF coordinates, no CAD geometry, and no fabrication instructions. All physical
claims are concept-only or pending measurement.

## Packet Map

- `design.md` - mechanism study, subsystem interfaces, and measurement gates.
- `bom.csv` - estimated parts and unresolved procurement classes.
- `cut-list.csv` - planned fabrication classes with all dimensions blocked
  pending measurement.
- `decision-record.md` - decisions, assumptions, and open questions.
- `visual-output-register.csv` - V5 authority register with concept-only and
  pending-measurement rows only.
- `cad/mcp-session-log.md` - QMD Step 0 and tool provenance.
- `sourcing.csv`, `validation.csv`, `risks.md`, `drawing-brief.md` - baseline
  shop-packet scaffolds (spec-first, non-dimensional, `pending_measurement`).
- `cad/wheelharp.scad` - parametric structural-envelope scaffold (semicircular
  frame + wheel-bank arc + keyboard arc + guard/drive envelope; symbolic
  relationships as formulas, render-only placeholder values); authority
  `pending_measurement`, not fabrication authority.
- `evolution/` - evolution-pipeline Stage 0 intake: master manifest,
  design-intent, and revision register (Gate A not yet run).

## Mechanism Summary

- A motor-driven wheel bank keeps rosined wheel edges rotating before notes are
  selected.
- Each key moves a string, pressure shoe, or engagement linkage so one string
  contacts its assigned spinning wheel.
- Strings need damping when idle so the instrument does not smear notes across
  the whole keyboard.
- The semicircular keyboard is an ergonomic and routing concept only; key count,
  scale, spacing, and tuning are not specified here.
- Wheel wear, rosin loading, drive noise, heat, dust, and serviceability are
  first-order risks.

## L2 Review Boundary

Deepened toward L3 (protocols, tolerances, assembly, FMEA — see
`measurement-and-validation-protocol.md`, `tolerance-and-fit-analysis.md`,
`assembly-sequence.md`, `risk-FMEA.md`) but not promoted: L3 requires
fabrication-authority CAD/DXF and validator evidence, and this packet is
deliberately non-dimensional, so it stays **L2 V5 build-packet candidate**.

L2 means this repo now names the packet surfaces and review gates needed before
a prototype can be specified. Promotion to L3 requires a measured one-wheel
coupon, reviewed key-action mule, string and damper test data, motor safety
review, and CAD or drawing authority for every fabrication part.
