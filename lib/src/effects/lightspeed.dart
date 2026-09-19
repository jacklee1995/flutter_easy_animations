import '../keyframes.dart';

/// Animate.css `lightSpeedInRight`.
const AnimateKeyframeTrack lightSpeedInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: 1, skewX: -30 * degrees, opacity: 0),
  ),
  AnimateKeyframeStop(0.60, AnimateKeyframe(skewX: 20 * degrees, opacity: 1)),
  AnimateKeyframeStop(0.80, AnimateKeyframe(skewX: -5 * degrees)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
], defaultCurve: CssCurves.easeOut);

/// Animate.css `lightSpeedInLeft`.
const AnimateKeyframeTrack lightSpeedInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(fractionX: -1, skewX: 30 * degrees, opacity: 0),
  ),
  AnimateKeyframeStop(0.60, AnimateKeyframe(skewX: -20 * degrees, opacity: 1)),
  AnimateKeyframeStop(0.80, AnimateKeyframe(skewX: 5 * degrees)),
  AnimateKeyframeStop(1, AnimateKeyframe.none),
], defaultCurve: CssCurves.easeOut);

/// Animate.css `lightSpeedOutRight`.
const AnimateKeyframeTrack lightSpeedOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: 1, skewX: 30 * degrees, opacity: 0),
  ),
], defaultCurve: CssCurves.easeIn);

/// Animate.css `lightSpeedOutLeft`.
const AnimateKeyframeTrack lightSpeedOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe.opacity(1)),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(fractionX: -1, skewX: -30 * degrees, opacity: 0),
  ),
], defaultCurve: CssCurves.easeIn);
