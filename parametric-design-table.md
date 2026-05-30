<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Parametric Design Table

This table records symbolic relationships only. It intentionally contains no
fabrication dimensions, tuning values, motor speeds, forces, clearances, or
absolute counts.

| parameter | symbolic relationship | authority | notes |
| --- | --- | --- | --- |
| `wheel_count` | `wheel_count = function(note_layout, service_access, drive_architecture)` | pending_measurement | Cannot be set before service and one-wheel behavior are measured. |
| `string_count` | `string_count = function(note_layout, damping_strategy, replacement_access)` | pending_measurement | No tuning or pitch layout authority. |
| `key_count` | `key_count = function(playable_range_intent, linkage_routing, ergonomic_mockup)` | pending_measurement | Semicircular keyboard remains a routing concept. |
| `wheel_spacing` | `wheel_spacing = max(service_access_requirement, guard_requirement, adjacent_contact_margin)` | pending_measurement | No clearance value is released. |
| `string_contact_path` | `string_contact_path = function(key_motion, engagement_linkage, wheel_edge_profile)` | pending_measurement | Must be verified with one-string contact fixture. |
| `damper_position` | `damper_position = function(note_off_target, string_path, service_access)` | pending_measurement | No release gap or travel value is claimed. |
| `drive_architecture` | `drive_architecture = choose(shared_drive, grouped_drive, individual_drive)` | pending_measurement | Choice depends on noise, heat, and recovery logs. |
| `guard_envelope` | `guard_envelope = function(moving_parts, cleaning_access, dust_path, hand_clearance_review)` | pending_measurement | Safety review required before powered testing. |
| `frame_reference` | `frame_reference = function(wheel_alignment, string_load_path, keyboard_reference, service_operations)` | pending_measurement | Alignment authority requires witness marks and repeated service checks. |
| `rosin_service_interval` | `rosin_service_interval = function(tone_stability, dust_log, cleaning_log)` | pending_measurement | No interval is claimed. |

## Symbolic Promotion Rule

A symbolic relationship can guide prototype planning, but it becomes a design
value only after the measurement protocol identifies a test method, log, and
review path for that parameter.

