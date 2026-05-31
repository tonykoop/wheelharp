(* Wheelharp parametric acoustic/contact model.
   All physical numeric inputs are estimates pending measurement and are not fabrication authority. *)

ClearAll["Global`*"];

packetMetadata = <|
   "Instrument" -> "Wheelharp",
   "Packet" -> "Round 8 Wolfram build-packet model",
   "ModelName" -> "Parametric bowed-string wheel-contact explorer",
   "Authority" -> "reference_only; estimate placeholders only"
   |>;

scaleLengthEstimate = 0.62; (* estimate - pending measurement, not fabrication authority *)
stringTensionEstimate = 45.; (* estimate - pending measurement, not fabrication authority *)
linearDensityEstimate = 0.00075; (* estimate - pending measurement, not fabrication authority *)
wheelSurfaceSpeedEstimate = 0.8; (* estimate - pending measurement, not fabrication authority *)
bowNormalForceEstimate = 0.45; (* estimate - pending measurement, not fabrication authority *)
contactFrictionCoefficientEstimate = 0.35; (* estimate - pending measurement, not fabrication authority *)
damperReleaseTimeEstimate = 0.08; (* estimate - pending measurement, not fabrication authority *)

stringFrequency[length_, tension_, linearDensity_] :=
  (1/(2 length)) Sqrt[tension/linearDensity];

stringWaveSpeed[length_, frequency_] := 2 length frequency;

wheelContactPowerProxy[wheelSpeed_, normalForce_, frictionCoefficient_] :=
  wheelSpeed normalForce frictionCoefficient;

damperEnvelope[time_, releaseTime_] := Exp[-time/releaseTime];

wheelharpModel[scaleLength_, tension_, linearDensity_, wheelSpeed_,
   normalForce_, frictionCoefficient_, releaseTime_] :=
  Module[
   {fundamentalFrequency, waveSpeed, contactPowerProxy, harmonicTable,
    dampingTable},
   fundamentalFrequency = stringFrequency[scaleLength, tension, linearDensity];
   waveSpeed = stringWaveSpeed[scaleLength, fundamentalFrequency];
   contactPowerProxy =
    wheelContactPowerProxy[wheelSpeed, normalForce, frictionCoefficient];
   harmonicTable =
    Table[{mode, mode fundamentalFrequency}, {mode, 1, 8}];
   dampingTable =
    Table[{time, damperEnvelope[time, releaseTime]}, {time, 0, 5 releaseTime,
      releaseTime/8}];
   <|
    "FundamentalHz" -> fundamentalFrequency,
    "StringWaveSpeedMPerS" -> waveSpeed,
    "WheelContactPowerProxyW" -> contactPowerProxy,
    "HarmonicsHz" -> harmonicTable,
    "DamperEnvelope" -> dampingTable
    |>
   ];

wheelharpExplorer =
  Manipulate[
   Module[
    {model, harmonics, damping},
    model =
     wheelharpModel[
      scaleLengthEstimate scaleLengthFactor,
      stringTensionEstimate tensionFactor,
      linearDensityEstimate densityFactor,
      wheelSurfaceSpeedEstimate wheelSpeedFactor,
      bowNormalForceEstimate normalForceFactor,
      contactFrictionCoefficientEstimate frictionFactor,
      damperReleaseTimeEstimate releaseTimeFactor
      ];
    harmonics =
     Prepend[
      ({#[[1]], NumberForm[#[[2]], {8, 2}]} & /@
        model["HarmonicsHz"]),
      {"mode", "frequency Hz"}
      ];
    damping =
     ListLinePlot[
      model["DamperEnvelope"],
      Frame -> True,
      FrameLabel -> {"time s", "relative amplitude"},
      PlotRange -> {0, 1},
      PlotLabel -> "Damper release envelope from estimate placeholder"
      ];
    Column[
     {
      packetMetadata,
      Grid[
       {
        {"fundamental Hz", NumberForm[model["FundamentalHz"], {8, 2}]},
        {"string wave speed m/s",
         NumberForm[model["StringWaveSpeedMPerS"], {8, 2}]},
        {"wheel contact power proxy W",
         NumberForm[model["WheelContactPowerProxyW"], {8, 3}]}
        },
       Frame -> All
       ],
      Grid[harmonics, Frame -> All],
      damping
      }
     ]
    ],
   {{scaleLengthFactor, 1, "scale length factor"}, 0.5, 1.5,
    Appearance -> "Labeled"},
   {{tensionFactor, 1, "tension factor"}, 0.5, 2.0,
    Appearance -> "Labeled"},
   {{densityFactor, 1, "linear density factor"}, 0.5, 2.0,
    Appearance -> "Labeled"},
   {{wheelSpeedFactor, 1, "wheel surface speed factor"}, 0.25, 2.0,
    Appearance -> "Labeled"},
   {{normalForceFactor, 1, "bow normal force factor"}, 0.25, 2.0,
    Appearance -> "Labeled"},
   {{frictionFactor, 1, "friction coefficient factor"}, 0.25, 2.0,
    Appearance -> "Labeled"},
   {{releaseTimeFactor, 1, "damper release time factor"}, 0.25, 3.0,
    Appearance -> "Labeled"},
   ControlPlacement -> Left
   ];

wheelharpExplorer
