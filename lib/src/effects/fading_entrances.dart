import '../keyframes.dart';

/// Animate.css `fadeIn`.
const AnimateKeyframeTrack fadeInEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(0)),
  AnimateKeyframeStop(1, AnimateKeyframe.opacity(1)),
]);

/// Animate.css `fadeInDown`.
const AnimateKeyframeTrack fadeInDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionY: -1, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInDownBig`.
const AnimateKeyframeTrack fadeInDownBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(pixelY: -2000, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInLeft`.
const AnimateKeyframeTrack fadeInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionX: -1, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInLeftBig`.
const AnimateKeyframeTrack fadeInLeftBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(pixelX: -2000, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInRight`.
const AnimateKeyframeTrack fadeInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionX: 1, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInRightBig`.
const AnimateKeyframeTrack fadeInRightBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(pixelX: 2000, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInUp`.
const AnimateKeyframeTrack fadeInUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionY: 1, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInUpBig`.
const AnimateKeyframeTrack fadeInUpBigEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(pixelY: 2000, opacity: 0)),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInTopLeft`.
const AnimateKeyframeTrack fadeInTopLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: -1, fractionY: -1, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInTopRight`.
const AnimateKeyframeTrack fadeInTopRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: 1, fractionY: -1, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInBottomLeft`.
const AnimateKeyframeTrack fadeInBottomLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: -1, fractionY: 1, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);

/// Animate.css `fadeInBottomRight`.
const AnimateKeyframeTrack fadeInBottomRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: 1, fractionY: 1, opacity: 0),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(opacity: 1)),
]);
