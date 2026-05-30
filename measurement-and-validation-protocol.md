<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Measurement And Validation Protocol

This protocol defines what evidence is required before any Wheelharp estimate
can become fabrication authority. It contains no measured values and no
fabrication dimensions. Every test below is `pending_measurement`.

## Authority Promotion Rule

An estimate may be promoted only when all of these are true:

- The measurement method is written before the test.
- The tool or fixture used for the test is identified.
- The raw observation is recorded with date, operator, and setup state.
- The result is repeatable enough for review by a second pass or reviewer.
- The promoted value cites the log row, fixture, and subsystem interface it
  governs.

Until then, the value remains `estimate_*_pending_measurement`.

## Required Tests By Subsystem

| subsystem | estimate to promote | required test evidence | promotion blocker |
| --- | --- | --- | --- |
| wheel bank | `estimate_wheel_count_pending_measurement` | Review note grouping, service access, drive architecture, and guard access on a mock layout. | No wheel count authority until one-wheel contact behavior is measured. |
| wheel edge | `estimate_wheel_edge_material_pending_measurement` | One-wheel witness rig logs trueness, rosin pickup, cleaning, wear, and string contact behavior. | Any edge choice that cannot be cleaned or retrued remains concept-only. |
| drive | `estimate_motor_drive_architecture_pending_measurement` | Drive test with wheel contact load, heat observation, noise isolation, and recovery after engagement. | Nameplate motor data alone is not evidence. |
| keyboard | `estimate_key_travel_pending_measurement` | Key coupon logs travel feel, return, lost motion, bounce, and contact-pressure repeatability. | Comfortable key motion without measured bow contact is not enough. |
| engagement | `estimate_contact_pressure_pending_measurement` | One key-to-string-to-wheel rig logs attack, squeal, chatter, and release with repeated actuations. | Contact pressure cannot be promoted if damping is absent. |
| strings | `estimate_string_count_pending_measurement` | String routing review with wheel access, damping access, and replacement sequence. | No count authority until service access is demonstrated. |
| damping | `estimate_damper_clearance_pending_measurement` | Note-off tests log release, rebound, residual sound, and mechanical noise. | Any damper that blocks note-on setup is rejected. |
| frame | `estimate_frame_alignment_pending_measurement` | Alignment witness marks before and after string load, drive operation, and service operations. | A static layout drawing is not frame authority. |
| safety | `estimate_guard_coverage_pending_measurement` | Pinch-point, dust, heat, hair/clothing, and electrical isolation review. | Powered testing cannot advance without guard review. |

## One-Wheel Witness Rig

The one-wheel witness rig is the first required test artifact. It must isolate:

- wheel trueness from string choice;
- rosin behavior from drive noise;
- engagement force from key travel;
- damping release from string speaking onset;
- service access from musical layout.

The witness rig may use placeholders and adjustable fixtures. It must not be
treated as released instrument geometry.

## Logs To Create Before L3 Promotion

- wheel truing and cleaning log;
- rosin application and dust log;
- one-string engagement log;
- note-off and damper release log;
- motor heat/noise observation log;
- guard and pinch-point review;
- service operation checklist.

## Validation Rejection Criteria

Reject or keep pending any parameter when:

- the measured result depends on an unlogged setup change;
- the result works only with guards removed;
- the damper fixes one note but creates release noise or adjacent contact;
- rosin or dust behavior makes service intervals unknowable;
- a symbolic relationship is filled with an absolute value without evidence.

