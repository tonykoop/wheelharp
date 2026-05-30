<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Wheelharp

Status: L1 concept packet

This repository is a V5 L1 concept packet for a Wheelharp-style instrument: a
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
- `decision-record.md` - decisions, assumptions, and open questions.
- `visual-output-register.csv` - V5 authority register; every row is
  `concept_only`.
- `cad/mcp-session-log.md` - QMD Step 0 and tool provenance.

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

## Readiness Boundary

L1 means this repo captures concept intent and risk structure. Promotion to L2
requires reviewed parameter names, test fixtures, a measurement plan, and a
clear separation between wheel-bank authority, keyboard authority, string setup,
and any future visual or CAD artifacts.

