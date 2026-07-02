<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# MCP Session Log

No MCP, CAD, rendering, image-generation, or creative-tool session was run for
this L1 packet. No geometry was generated. No dimensions, tuning numbers, motor
performance values, DXF coordinates, G-code, or fabrication outputs are claimed.

## QMD Step 0

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-05-30-qmd-query | qmd CLI | `qmd query "wheelharp Wheelharp — semicircular keyboard where each key presses a string against one of many continuously rotating rosined wheels (motor-driven), a keyboard hurdy-gurdy; wheel bank, drive, key-to-string engagement"` | none | context_retrieval | concept_only | attempted | Query crashed in Bun/node-llama-cpp with repeated segmentation faults before returning usable context. |
| 2026-05-30-local-authoring | Codex local edit | Round 7 handoff plus real Wheelharp-style rosined wheel/key/string mechanism knowledge | `README.md`; `design.md`; `bom.csv`; `decision-record.md`; `visual-output-register.csv`; `cad/mcp-session-log.md` | concept_packet_authoring | concept_only | self_checked | Authored an L1 concept packet only. All fabrication-relevant claims remain pending measurement. |
| 2026-05-30-wolfram-hand-authoring | Codex local edit | Round 8 Wolfram author contract plus existing repo design notes | `wheelharp-starter.wl`; `wolfram/wheelharp-wolfram-model.wl` | wolfram_source_authoring | reference_only | self_checked | No MCP, Desktop, or Cloud Wolfram session was run; source was authored by hand. All physical numeric inputs are estimate placeholders pending measurement, not fabrication authority. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md, bom.csv, cut-list.csv, parametric-design-table.md | bom.csv, cut-list.csv, sourcing.csv, validation.csv, visual-output-register.csv | packet_refresh | fabrication | self_checked | V5 refresh pass; tabular packet data reviewed against design docs. Scaffolded missing baseline files (sourcing.csv, validation.csv, risks.md, drawing-brief.md) as concept-only/pending_measurement; no dimensions invented. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | parametric-design-table.md, design.md | cad/wheelharp.scad, cad/README.md | cad_authoring | pending_measurement | self_checked | Parametric structural-envelope scaffold (semicircular frame + wheel-bank arc + keyboard arc + guard/drive envelope); symbolic relationships encoded as formulas, all leaf values render-only placeholders (packet is non-dimensional; register dimension_claim=render_only_scaffold / scaffold_dimensions). Mechanism internals out of scope. OpenSCAD render check: pass (openscad -o STL, exit 0, Simple: yes). Not fabrication authority. |
