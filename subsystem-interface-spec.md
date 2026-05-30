<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Subsystem Interface Spec

This spec defines subsystem boundaries for review. It does not define final
dimensions, tolerances, tuning, speed, force, or CAD geometry.

## Interface Matrix

| from | to | exchanged behavior | pending authority |
| --- | --- | --- | --- |
| motor drive | wheel bank | rotational motion, vibration, heat, noise | measured drive stability under contact load |
| wheel bank | strings | bowed contact, rosin transfer, wear | one-wheel witness rig logs |
| keyboard | engagement linkage | player travel, return, lost motion | key action coupon logs |
| engagement linkage | string path | controlled note-on contact | contact fixture observations |
| dampers | strings | note-off, release, residual sound | damper test logs |
| frame | wheel bank | alignment, service mounting, vibration path | alignment witness marks |
| frame | keyboard | action reference and ergonomics | mock layout review |
| guards | wheel bank and drive | safety separation and dust containment | safety and cleaning review |
| setup tools | all serviceable parts | cleaning, truing, rosin, replacement | service checklist |

## Interface Requirements

### Drive To Wheel Bank

- Must preserve wheel contact behavior under engagement load.
- Must not make motor noise the dominant sound source.
- Must allow guarded inspection and shutdown.
- Authority remains `pending_measurement`.

### Wheel Bank To Strings

- Must support repeatable note-on without squeal, chatter, or string damage.
- Must support wheel cleaning and rosin refresh.
- Must avoid adjacent string contact.
- Authority remains `pending_measurement`.

### Keyboard To Engagement

- Must decouple player feel from final contact force.
- Must return reliably without bounce or repeated contact.
- Must expose adjustment points for testing.
- Authority remains `pending_measurement`.

### Strings To Dampers

- Must stop sound after release without muting note-on.
- Must avoid rebound into the wheel.
- Must be adjustable after string replacement.
- Authority remains `pending_measurement`.

### Frame To Service

- Must expose wheel, string, damper, guard, and drive service paths.
- Must maintain alignment after normal service operations.
- Must document any operation that changes setup state.
- Authority remains `pending_measurement`.

