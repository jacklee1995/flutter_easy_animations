import 'package:flutter/painting.dart';

import '../keyframes.dart';

/// Animate.css `hinge`.
const AnimateKeyframeTrack hingeEffect = AnimateKeyframeTrack(
  [
    AnimateKeyframeStop(0.20, AnimateKeyframe(rotateZ: 80 * degrees)),
    AnimateKeyframeStop(
      0.40,
      AnimateKeyframe(rotateZ: 60 * degrees, opacity: 1),
    ),
    AnimateKeyframeStop(0.60, AnimateKeyframe(rotateZ: 80 * degrees)),
    AnimateKeyframeStop(
      0.80,
      AnimateKeyframe(rotateZ: 60 * degrees, opacity: 1),
    ),
    AnimateKeyframeStop(1, AnimateKeyframe(pixelY: 700, opacity: 0)),
  ],
  origin: Alignment.topLeft,
  defaultCurve: CssCurves.easeInOut,
  durationScale: 2,
);

/// Animate.css `jackInTheBox`.
const AnimateKeyframeTrack jackInTheBoxEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      rotateZ: 30 * degrees,
      opacity: 0,
    ),
  ),
  AnimateKeyframeStop(0.50, AnimateKeyframe(rotateZ: -10 * degrees)),
  AnimateKeyframeStop(0.70, AnimateKeyframe(rotateZ: 3 * degrees)),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
], origin: Alignment.bottomCenter);

/// Animate.css `rollIn`.
const AnimateKeyframeTrack rollInEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: -1, rotateZ: -120 * degrees, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `rollOut`.
const AnimateKeyframeTrack rollOutEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: 1, rotateZ: 120 * degrees, opacity: 0),
  ),
]);
