import '../keyframes.dart';

/// Animate.css `backInDown`.
const AnimateKeyframeTrack backInDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelY: -1200, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
]);

/// Animate.css `backInLeft`.
const AnimateKeyframeTrack backInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelX: -2000, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
]);

/// Animate.css `backInRight`.
const AnimateKeyframeTrack backInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelX: 2000, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
]);

/// Animate.css `backInUp`.
const AnimateKeyframeTrack backInUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelY: 1200, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
]);

/// Animate.css `backOutDown`.
const AnimateKeyframeTrack backOutDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(pixelY: 700, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
]);

/// Animate.css `backOutLeft`.
const AnimateKeyframeTrack backOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(pixelX: -2000, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
]);

/// Animate.css `backOutRight`.
const AnimateKeyframeTrack backOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(pixelX: 2000, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
]);

/// Animate.css `backOutUp`.
const AnimateKeyframeTrack backOutUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1)),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(pixelY: -700, scaleX: 0.7, scaleY: 0.7, opacity: 0.7),
  ),
]);
