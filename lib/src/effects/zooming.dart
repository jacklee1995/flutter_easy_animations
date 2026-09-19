import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';

import '../keyframes.dart';

/// Animate.css `zoomIn`.
const AnimateKeyframeTrack zoomInEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 0.3, scaleY: 0.3, opacity: 0)),
  AnimateKeyframeStop(0.50, AnimateKeyframe.opacity(1)),
]);

/// Animate.css `zoomInDown`.
const AnimateKeyframeTrack zoomInDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelY: -1000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelY: 60,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
]);

/// Animate.css `zoomInLeft`.
const AnimateKeyframeTrack zoomInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelX: -1000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelX: 10,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
]);

/// Animate.css `zoomInRight`.
const AnimateKeyframeTrack zoomInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelX: 1000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelX: -10,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
]);

/// Animate.css `zoomInUp`.
const AnimateKeyframeTrack zoomInUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelY: 1000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelY: -60,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
]);

/// Animate.css `zoomOut`.
const AnimateKeyframeTrack zoomOutEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(
    0.50,
    AnimateKeyframe(scaleX: 0.3, scaleY: 0.3, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.opacity(0)),
]);

/// Animate.css `zoomOutDown`.
const AnimateKeyframeTrack zoomOutDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelY: -60,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelY: 2000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
], origin: Alignment.bottomCenter);

/// Animate.css `zoomOutLeft`.
const AnimateKeyframeTrack zoomOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelX: 42,
      scaleFirst: true,
      opacity: 1,
    ),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelX: -2000,
      scaleFirst: true,
      opacity: 0,
    ),
  ),
], origin: Alignment.centerLeft);

/// Animate.css `zoomOutRight`.
const AnimateKeyframeTrack zoomOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelX: -42,
      scaleFirst: true,
      opacity: 1,
    ),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelX: 2000,
      scaleFirst: true,
      opacity: 0,
    ),
  ),
], origin: Alignment.centerRight);

/// Animate.css `zoomOutUp`.
const AnimateKeyframeTrack zoomOutUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(
      scaleX: 0.475,
      scaleY: 0.475,
      pixelY: 60,
      scaleFirst: true,
      opacity: 1,
    ),
    curve: Cubic(0.55, 0.055, 0.675, 0.19),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(
      scaleX: 0.1,
      scaleY: 0.1,
      pixelY: -2000,
      scaleFirst: true,
      opacity: 0,
    ),
    curve: Cubic(0.175, 0.885, 0.32, 1),
  ),
], origin: Alignment.bottomCenter);
