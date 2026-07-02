// Wheelharp — parametric STRUCTURAL-ENVELOPE scaffold (concept-only packet).
//
// Authority: pending_measurement. NOT fabrication authority.
// ---------------------------------------------------------------------------
// HONESTY BOUNDARY (read before using any value here):
//   This packet is deliberately NON-DIMENSIONAL. README.md, design.md,
//   bom.csv, cut-list.csv, and parametric-design-table.md release NO absolute
//   dimensions — every symbol (wheel_count, wheel_spacing, drive_architecture,
//   ...) is `pending_measurement`. Therefore EVERY numeric leaf value below is
//   a RENDER-ONLY PLACEHOLDER chosen only so the envelope draws; NONE is a
//   design, tuning, speed, or fabrication authority. Placeholders are tagged
//   `// PLACEHOLDER`.
//   The DOCUMENTED content this file honestly encodes is the set of SYMBOLIC
//   RELATIONSHIPS from parametric-design-table.md (wheel_spacing = max(service,
//   guard, contact margin); semicircular wheel-bank/keyboard layout) —
//   expressed as formulas, not baked values.
//   Mechanism detail (engagement linkage, bearing/hub, motor internals, damper
//   action) is intentionally OUT OF SCOPE — see design.md.
// ---------------------------------------------------------------------------
// Units: millimeters.

/* [Layout — semicircular arc, all PLACEHOLDER] */
arc_radius_mm      = 400;   // PLACEHOLDER arc radius (keyboard/wheel-bank arc)
arc_span_deg       = 180;   // PLACEHOLDER semicircular span
wheel_count        = 24;    // PLACEHOLDER wheel count (no note-layout authority)
key_count          = 24;    // PLACEHOLDER key count (matches wheels; concept)

/* [Wheel bank — PLACEHOLDER] */
wheel_dia_mm       = 70;    // PLACEHOLDER wheel diameter
wheel_edge_mm      = 10;    // PLACEHOLDER wheel edge width

/* [Clearance drivers for wheel_spacing — parametric-design-table.md] */
service_access_mm  = 18;    // PLACEHOLDER service-access requirement
guard_req_mm       = 12;    // PLACEHOLDER guard requirement
contact_margin_mm  = 6;     // PLACEHOLDER adjacent-contact margin

/* [Frame / guard / drive envelope — PLACEHOLDER] */
frame_width_mm     = 120;   // PLACEHOLDER frame ring radial width
frame_depth_mm     = 60;    // PLACEHOLDER frame depth (height)
guard_height_mm    = 90;    // PLACEHOLDER guard band height
key_len_mm         = 90;    // PLACEHOLDER key length (radial)
key_width_mm       = 14;    // PLACEHOLDER key width
motor_box_mm       = 120;   // PLACEHOLDER drive/motor envelope cube

// ---------------------------------------------------------------------------
// Derived geometry — DOCUMENTED symbolic relationships as formulas
// (parametric-design-table.md). Honest, source-traceable part of the model.
// ---------------------------------------------------------------------------

// wheel_spacing = max(service_access, guard, adjacent_contact_margin).
function wheel_spacing(service, guard, contact) =
  max(service, max(guard, contact));
spacing_clear_mm = wheel_spacing(service_access_mm, guard_req_mm, contact_margin_mm);

// Angular pitch so wheels + clearance fit the arc; needed pitch vs available.
function angle_at(i, n, span) = -span/2 + span * i / (n - 1);
avail_pitch_mm = 2 * 3.14159265 * arc_radius_mm * (arc_span_deg/360) / (wheel_count - 1);
need_pitch_mm  = wheel_dia_mm + spacing_clear_mm;
pitch_ok = (avail_pitch_mm >= need_pitch_mm);

module frame_ring() {
  // Semicircular frame ring (half annulus base).
  rotate([0,0,-arc_span_deg/2])
    difference() {
      linear_extrude(height = frame_depth_mm)
        difference() {
          circle(r = arc_radius_mm + frame_width_mm/2, $fn = 128);
          circle(r = arc_radius_mm - frame_width_mm/2, $fn = 128);
        }
      // keep only the arc_span sweep (cut the far half away)
      translate([0, -1000, -1]) cube([2000, 1000, frame_depth_mm + 2]);
    }
}

module wheel_bank() {
  for (i = [0 : wheel_count - 1]) {
    a = angle_at(i, wheel_count, arc_span_deg);
    rotate([0, 0, a])
      translate([arc_radius_mm, 0, frame_depth_mm + wheel_dia_mm/2])
        rotate([0, 90, 0])
          cylinder(h = wheel_edge_mm, d = wheel_dia_mm, center = true, $fn = 48);
  }
}

module keyboard_arc() {
  for (i = [0 : key_count - 1]) {
    a = angle_at(i, key_count, arc_span_deg);
    rotate([0, 0, a])
      translate([arc_radius_mm - frame_width_mm/2 - key_len_mm, -key_width_mm/2, 0])
        cube([key_len_mm, key_width_mm, 12]);   // 12 mm PLACEHOLDER key thickness
  }
}

module guard_band() {
  // Guard envelope arc over the wheel bank (reserved volume).
  rotate([0,0,-arc_span_deg/2])
    difference() {
      linear_extrude(height = guard_height_mm)
        difference() {
          circle(r = arc_radius_mm + wheel_dia_mm/2 + guard_req_mm, $fn = 128);
          circle(r = arc_radius_mm - wheel_dia_mm/2 - guard_req_mm, $fn = 128);
        }
      translate([0, -1000, -1]) cube([2000, 1000, guard_height_mm + 2]);
    }
}

module drive_envelope() {
  // Motor/drive reserved volume at the arc center-rear.
  translate([-motor_box_mm/2, arc_radius_mm*0.2, 0])
    cube([motor_box_mm, motor_box_mm, motor_box_mm]);
}

module wheelharp_assembly() {
  frame_ring();
  wheel_bank();
  keyboard_arc();
  translate([0, 0, frame_depth_mm]) guard_band();
  drive_envelope();
}

wheelharp_assembly();

echo(str("wheel_spacing_clear_mm=", spacing_clear_mm));
echo(str("avail_pitch_mm=", avail_pitch_mm));
echo(str("need_pitch_mm=", need_pitch_mm));
echo(str("pitch_ok(placeholder)=", pitch_ok));
echo("AUTHORITY=pending_measurement; all leaf values are render-only placeholders.");
