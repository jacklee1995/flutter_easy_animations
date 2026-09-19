import 'package:flutter/painting.dart';

import '../keyframes.dart';

/// Animate.css `rotateIn`.
const AnimateKeyframeTrack rotateInEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(rotateZ: -200 * degrees, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `rotateInDownLeft`.
const AnimateKeyframeTrack rotateInDownLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(rotateZ: -45 * degrees, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
], origin: Alignment.bottomLeft);

/// Animate.css `rotateInDownRight`.
const AnimateKeyframeTrack rotateInDownRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(rotateZ: 45 * degrees, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
], origin: Alignment.bottomRight);

/// Animate.css `rotateInUpLeft`.
const AnimateKeyframeTrack rotateInUpLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(rotateZ: 45 * degrees, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
], origin: Alignment.bottomLeft);

/// Animate.css `rotateInUpRight`.
const AnimateKeyframeTrack rotateInUpRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(rotateZ: -90 * degrees, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
], origin: Alignment.bottomRight);

/// Animate.css `rotateOut`.
const AnimateKeyframeTrack rotateOutEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(rotateZ: 200 * degrees, opacity: 0)),
]);

/// Animate.css `rotateOutDownLeft`.
const AnimateKeyframeTrack rotateOutDownLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(rotateZ: 45 * degrees, opacity: 0)),
], origin: Alignment.bottomLeft);

/// Animate.css `rotateOutDownRight`.
const AnimateKeyframeTrack rotateOutDownRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(rotateZ: -45 * degrees, opacity: 0)),
], origin: Alignment.bottomRight);

/// Animate.css `rotateOutUpLeft`.
const AnimateKeyframeTrack rotateOutUpLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(rotateZ: -45 * degrees, opacity: 0)),
], origin: Alignment.bottomLeft);

/// Animate.css `rotateOutUpRight`.
const AnimateKeyframeTrack rotateOutUpRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(rotateZ: 90 * degrees, opacity: 0)),
], origin: Alignment.bottomRight);
