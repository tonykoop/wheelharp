<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Tolerance And Fit Analysis

All fits, clearances, and tolerances in this packet are open questions. No
absolute tolerance, clearance, speed, force, or geometry value is released.

## Critical Open Fits

| interface | fit question | why it matters | evidence needed |
| --- | --- | --- | --- |
| wheel edge to string | How much engagement can start tone without squeal, chatter, or string overtravel? | This governs playable note-on behavior. | One-wheel witness rig with repeated note-on logs. |
| string to damper | What release clearance stops sound without rebounding into the wheel? | This governs note-off and silence. | Damping tests with string and wheel installed. |
| key to engagement linkage | How much lost motion is acceptable before response feels late? | This governs keyboard feel and timing. | Key coupon travel and reset observations. |
| wheel shaft to bearing | What fit preserves trueness while allowing service? | Wobble causes uneven bowing. | Wheel truing log before and after removal. |
| drive belt or gear to wheel bank | What compliance avoids noise while holding stable wheel motion? | Drive ripple can become audible. | Drive noise and recovery tests under contact load. |
| guard to moving wheel | What clearance protects the player without trapping rosin dust? | Safety and maintenance are coupled. | Guard review plus cleaning trial. |
| frame to wheel bank | How much alignment drift occurs under string load and motor vibration? | Misalignment changes every note. | Alignment witness marks before/after tests. |
| string path to neighboring wheel | How much spacing prevents accidental adjacent contact? | Adjacent contact causes ghost notes. | Mock layout and one-string sweep test. |

## Fit Questions Before CAD

- Should each wheel have its own removable cartridge, or should wheels share a
  common shaft?
- Can the wheel be trued in place, or must it be removed?
- Does the keyboard action move the string, a pressure shoe, or the wheel
  support?
- Can dampers be adjusted after the wheel guard is installed?
- Does the guard design allow rosin cleaning without disturbing alignment?
- Can a string be replaced without removing neighboring wheels?
- Does frame expansion, vibration, or service handling change string contact?

## Tolerance Evidence Ladder

1. `concept_only`: interface is named, no physical value.
2. `pending_measurement`: coupon or fixture exists, measurement method written.
3. `reviewed_estimate`: repeated observations support a bounded planning value.
4. `fabrication`: reviewed geometry traces to measurement logs and drawings.

This packet stops at `pending_measurement`.

