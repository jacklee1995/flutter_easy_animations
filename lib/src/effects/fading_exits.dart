import '../keyframes.dart';

/// Animate.css `fadeOut`.
const AnimateKeyframeTrack fadeOutEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe.opacity(0)),
]);

/// Animate.css `fadeOutDown`.
const AnimateKeyframeTrack fadeOutDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionY: 1, opacity: 0)),
]);

/// Animate.css `fadeOutDownBig`.
const AnimateKeyframeTrack fadeOutDownBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelY: 2000, opacity: 0)),
]);

/// Animate.css `fadeOutLeft`.
const AnimateKeyframeTrack fadeOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionX: -1, opacity: 0)),
]);

/// Animate.css `fadeOutLeftBig`.
const AnimateKeyframeTrack fadeOutLeftBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelX: -2000, opacity: 0)),
]);

/// Animate.css `fadeOutRight`.
const AnimateKeyframeTrack fadeOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionX: 1, opacity: 0)),
]);

/// Animate.css `fadeOutRightBig`.
const AnimateKeyframeTrack fadeOutRightBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 2000, opacity: 0)),
]);

/// Animate.css `fadeOutUp`.
const AnimateKeyframeTrack fadeOutUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionY: -1, opacity: 0)),
]);

/// Animate.css `fadeOutUpBig`.
const AnimateKeyframeTrack fadeOutUpBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelY: -2000, opacity: 0)),
]);

/// Animate.css `fadeOutTopLeft`.
const AnimateKeyframeTrack fadeOutTopLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(opacity: 1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: -1, fractionY: -1, opacity: 0),
  ),
]);

/// Animate.css `fadeOutTopRight`.
const AnimateKeyframeTrack fadeOutTopRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(opacity: 1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: 1, fractionY: -1, opacity: 0),
  ),
]);

/// Animate.css `fadeOutBottomRight`.
const AnimateKeyframeTrack fadeOutBottomRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(opacity: 1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: 1, fractionY: 1, opacity: 0),
  ),
]);

/// Animate.css `fadeOutBottomLeft`.
const AnimateKeyframeTrack fadeOutBottomLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(opacity: 1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: -1, fractionY: 1, opacity: 0),
  ),
]);
