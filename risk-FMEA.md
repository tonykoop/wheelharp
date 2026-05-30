<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Risk FMEA

This FMEA is qualitative. It avoids numeric severity, occurrence, and detection
scores because the packet has no measured prototype evidence yet.

| failure mode | likely cause | effect | detection method | mitigation before authority |
| --- | --- | --- | --- | --- |
| wheel wobble | unmeasured shaft, bearing, wheel, or frame fit | uneven bowing, chatter, premature wear | truing log and contact observation | one-wheel witness rig before wheel-bank layout |
| squeal on attack | excessive or unstable contact, rosin mismatch, string prep issue | harsh note-on, unreliable tone | repeated contact tests with setup notes | keep contact pressure pending until measured |
| note will not stop | damper misses string or rebounds | smear, ghost notes, unplayable release | note-off log with wheel still running | damper fixture before multi-note scaling |
| adjacent ghost note | string path or wheel spacing allows unintended contact | wrong note sounds | one-string sweep and mock layout | no spacing authority before mock review |
| motor noise dominates | drive vibration or transmission noise couples into frame | poor musical tone | drive isolation test | separate drive stand and frame isolation review |
| heat or electrical risk | motor/controller/guard not reviewed under load | unsafe powered operation | heat and electrical isolation checklist | powered tests require guard and electrical review |
| rosin dust contaminates drive | poor dust path or cleaning access | wear, slip, electrical contamination | dust and cleaning log | guard and service-access mockup |
| key bounce repeats note | action return or lost motion unresolved | double attack or timing error | key coupon high-speed/observational log | key return authority remains pending |
| string replacement changes setup | poor access or no witness marks | repeated retuning/rework | service operation checklist | alignment marks and service protocol |
| frame drifts under load | unmeasured load path or vibration | all contacts shift | alignment witness marks before/after tests | frame authority requires load/service observations |

## Review Actions

- Keep every high-impact failure mode tied to a specific measurement protocol.
- Reject CAD work that lacks a corresponding detection method.
- Treat service failures as design failures, not maintenance footnotes.
- Do not promote symbolic parameters to fabrication authority until the related
  FMEA detection method has evidence.
