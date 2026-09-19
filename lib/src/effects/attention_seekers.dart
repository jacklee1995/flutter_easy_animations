import 'package:flutter/painting.dart';

import '../keyframes.dart';

/// Animate.css `bounce`.
const AnimateKeyframeTrack bounceEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none, curve: CssCurves.easeOutCubic),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe.none,
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(pixelY: -30, scaleY: 1.1),
    curve: CssCurves.easeInCubic,
  ),
  AnimateKeyframeStop(
    0.43,
    AnimateKeyframe(pixelY: -30, scaleY: 1.1),
    curve: CssCurves.easeInCubic,
  ),
  AnimateKeyframeStop(
    0.53,
    AnimateKeyframe.none,
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.70,
    AnimateKeyframe(pixelY: -15, scaleY: 1.05),
    curve: CssCurves.easeInCubic,
  ),
  AnimateKeyframeStop(0.80, AnimateKeyframe(scaleY: 0.95)),
  AnimateKeyframeStop(0.90, AnimateKeyframe(pixelY: -4, scaleY: 1.02)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
], origin: Alignment.bottomCenter);

/// Animate.css `flash`.
const AnimateKeyframeTrack flashEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(0.25, AnimateKeyframe.opacity(0)),
  AnimateKeyframeStop(0.50, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(0.75, AnimateKeyframe.opacity(0)),
  AnimateKeyframeStop(1, AnimateKeyframe.opacity(1)),
]);

/// Animate.css `pulse`.
const AnimateKeyframeTrack pulseEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(0.50, AnimateKeyframe(scaleX: 1.05, scaleY: 1.05)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
], defaultCurve: CssCurves.easeInOut);

/// Animate.css `rubberBand`.
const AnimateKeyframeTrack rubberBandEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(0.30, AnimateKeyframe(scaleX: 1.25, scaleY: 0.75)),
  AnimateKeyframeStop(0.40, AnimateKeyframe(scaleX: 0.75, scaleY: 1.25)),
  AnimateKeyframeStop(0.50, AnimateKeyframe(scaleX: 1.15, scaleY: 0.85)),
  AnimateKeyframeStop(0.65, AnimateKeyframe(scaleX: 0.95, scaleY: 1.05)),
  AnimateKeyframeStop(0.75, AnimateKeyframe(scaleX: 1.05, scaleY: 0.95)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `shakeX`.
const AnimateKeyframeTrack shakeXEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(0.10, AnimateKeyframe(pixelX: -10)),
  AnimateKeyframeStop(0.20, AnimateKeyframe(pixelX: 10)),
  AnimateKeyframeStop(0.30, AnimateKeyframe(pixelX: -10)),
  AnimateKeyframeStop(0.40, AnimateKeyframe(pixelX: 10)),
  AnimateKeyframeStop(0.50, AnimateKeyframe(pixelX: -10)),
  AnimateKeyframeStop(0.60, AnimateKeyframe(pixelX: 10)),
  AnimateKeyframeStop(0.70, AnimateKeyframe(pixelX: -10)),
  AnimateKeyframeStop(0.80, AnimateKeyframe(pixelX: 10)),
  AnimateKeyframeStop(0.90, AnimateKeyframe(pixelX: -10)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `shakeY`.
const AnimateKeyframeTrack shakeYEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(0.10, AnimateKeyframe(pixelY: -10)),
  AnimateKeyframeStop(0.20, AnimateKeyframe(pixelY: 10)),
  AnimateKeyframeStop(0.30, AnimateKeyframe(pixelY: -10)),
  AnimateKeyframeStop(0.40, AnimateKeyframe(pixelY: 10)),
  AnimateKeyframeStop(0.50, AnimateKeyframe(pixelY: -10)),
  AnimateKeyframeStop(0.60, AnimateKeyframe(pixelY: 10)),
  AnimateKeyframeStop(0.70, AnimateKeyframe(pixelY: -10)),
  AnimateKeyframeStop(0.80, AnimateKeyframe(pixelY: 10)),
  AnimateKeyframeStop(0.90, AnimateKeyframe(pixelY: -10)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `headShake`.
const AnimateKeyframeTrack headShakeEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(
    0.065,
    AnimateKeyframe(pixelX: -6, rotateY: -9 * degrees),
  ),
  AnimateKeyframeStop(0.185, AnimateKeyframe(pixelX: 5, rotateY: 7 * degrees)),
  AnimateKeyframeStop(
    0.315,
    AnimateKeyframe(pixelX: -3, rotateY: -5 * degrees),
  ),
  AnimateKeyframeStop(0.435, AnimateKeyframe(pixelX: 2, rotateY: 3 * degrees)),
  AnimateKeyframeStop(0.50, AnimateKeyframe.none),
], defaultCurve: CssCurves.easeInOut);

/// Animate.css `swing`.
const AnimateKeyframeTrack swingEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.20, AnimateKeyframe(rotateZ: 15 * degrees)),
  AnimateKeyframeStop(0.40, AnimateKeyframe(rotateZ: -10 * degrees)),
  AnimateKeyframeStop(0.60, AnimateKeyframe(rotateZ: 5 * degrees)),
  AnimateKeyframeStop(0.80, AnimateKeyframe(rotateZ: -5 * degrees)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
], origin: Alignment.topCenter);

/// Animate.css `tada`.
const AnimateKeyframeTrack tadaEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(
    0.10,
    AnimateKeyframe(scaleX: 0.9, scaleY: 0.9, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 0.9, scaleY: 0.9, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.30,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: 3 * degrees),
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.50,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: 3 * degrees),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.70,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: 3 * degrees),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.90,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, rotateZ: 3 * degrees),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `wobble`.
const AnimateKeyframeTrack wobbleEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(
    0.15,
    AnimateKeyframe(fractionX: -0.25, rotateZ: -5 * degrees),
  ),
  AnimateKeyframeStop(
    0.30,
    AnimateKeyframe(fractionX: 0.20, rotateZ: 3 * degrees),
  ),
  AnimateKeyframeStop(
    0.45,
    AnimateKeyframe(fractionX: -0.15, rotateZ: -3 * degrees),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(fractionX: 0.10, rotateZ: 2 * degrees),
  ),
  AnimateKeyframeStop(
    0.75,
    AnimateKeyframe(fractionX: -0.05, rotateZ: -1 * degrees),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `jello`.
const AnimateKeyframeTrack jelloEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(0.111, AnimateKeyframe.none),
  AnimateKeyframeStop(
    0.222,
    AnimateKeyframe(skewX: -12.5 * degrees, skewY: -12.5 * degrees),
  ),
  AnimateKeyframeStop(
    0.333,
    AnimateKeyframe(skewX: 6.25 * degrees, skewY: 6.25 * degrees),
  ),
  AnimateKeyframeStop(
    0.444,
    AnimateKeyframe(skewX: -3.125 * degrees, skewY: -3.125 * degrees),
  ),
  AnimateKeyframeStop(
    0.555,
    AnimateKeyframe(skewX: 1.5625 * degrees, skewY: 1.5625 * degrees),
  ),
  AnimateKeyframeStop(
    0.666,
    AnimateKeyframe(skewX: -0.78125 * degrees, skewY: -0.78125 * degrees),
  ),
  AnimateKeyframeStop(
    0.777,
    AnimateKeyframe(skewX: 0.390625 * degrees, skewY: 0.390625 * degrees),
  ),
  AnimateKeyframeStop(
    0.888,
    AnimateKeyframe(skewX: -0.1953125 * degrees, skewY: -0.1953125 * degrees),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `heartBeat`.
const AnimateKeyframeTrack heartBeatEffect = AnimateKeyframeTrack(
  [
    AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 1, scaleY: 1)),
    AnimateKeyframeStop(0.14, AnimateKeyframe(scaleX: 1.3, scaleY: 1.3)),
    AnimateKeyframeStop(0.28, AnimateKeyframe(scaleX: 1, scaleY: 1)),
    AnimateKeyframeStop(0.42, AnimateKeyframe(scaleX: 1.3, scaleY: 1.3)),
    AnimateKeyframeStop(0.70, AnimateKeyframe(scaleX: 1, scaleY: 1)),
  ],
  defaultCurve: CssCurves.easeInOut,
  durationScale: 1.3,
);
