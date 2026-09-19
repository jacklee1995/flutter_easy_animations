import '../keyframes.dart';

/// Animate.css `slideInDown`.
const AnimateKeyframeTrack slideInDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionY: -1)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `slideInLeft`.
const AnimateKeyframeTrack slideInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionX: -1)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `slideInRight`.
const AnimateKeyframeTrack slideInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionX: 1)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `slideInUp`.
const AnimateKeyframeTrack slideInUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(fractionY: 1)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
]);

/// Animate.css `slideOutDown`.
const AnimateKeyframeTrack slideOutDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionY: 1)),
]);

/// Animate.css `slideOutLeft`.
const AnimateKeyframeTrack slideOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionX: -1)),
]);

/// Animate.css `slideOutRight`.
const AnimateKeyframeTrack slideOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionX: 1)),
]);

/// Animate.css `slideOutUp`.
const AnimateKeyframeTrack slideOutUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.none),
  AnimateKeyframeStop(1, AnimateKeyframe(fractionY: -1)),
]);
