import '../keyframes.dart';

/// Animate.css `bounceIn`.
const AnimateKeyframeTrack bounceInEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(scaleX: 0.3, scaleY: 0.3, opacity: 0),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(scaleX: 0.9, scaleY: 0.9),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(scaleX: 1.03, scaleY: 1.03, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.97, scaleY: 0.97),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(scaleX: 1, scaleY: 1, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
], durationScale: 0.75);

/// Animate.css `bounceInDown`.
const AnimateKeyframeTrack bounceInDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelY: -3000, scaleY: 3, opacity: 0),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(pixelY: 25, scaleY: 0.9, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.75,
    AnimateKeyframe(pixelY: -10, scaleY: 0.95),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.90,
    AnimateKeyframe(pixelY: 5, scaleY: 0.985),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none, curve: CssCurves.easeOutCubic),
]);

/// Animate.css `bounceInLeft`.
const AnimateKeyframeTrack bounceInLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelX: -3000, scaleX: 3, opacity: 0),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(pixelX: 25, scaleX: 1, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.75,
    AnimateKeyframe(pixelX: -10, scaleX: 0.98),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.90,
    AnimateKeyframe(pixelX: 5, scaleX: 0.995),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none, curve: CssCurves.easeOutCubic),
]);

/// Animate.css `bounceInRight`.
const AnimateKeyframeTrack bounceInRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelX: 3000, scaleX: 3, opacity: 0),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(pixelX: -25, scaleX: 1, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.75,
    AnimateKeyframe(pixelX: 10, scaleX: 0.98),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.90,
    AnimateKeyframe(pixelX: -5, scaleX: 0.995),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none, curve: CssCurves.easeOutCubic),
]);

/// Animate.css `bounceInUp`.
const AnimateKeyframeTrack bounceInUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(pixelY: 3000, scaleY: 5, opacity: 0),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(pixelY: -20, scaleY: 0.9, opacity: 1),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.75,
    AnimateKeyframe(pixelY: 10, scaleY: 0.95),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(
    0.90,
    AnimateKeyframe(pixelY: -5, scaleY: 0.985),
    curve: CssCurves.easeOutCubic,
  ),
  AnimateKeyframeStop(1, AnimateKeyframe.none, curve: CssCurves.easeOutCubic),
]);

/// Animate.css `bounceOut`.
const AnimateKeyframeTrack bounceOutEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.20, AnimateKeyframe(scaleX: 0.9, scaleY: 0.9)),
  AnimateKeyframeStop(
    0.50,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, opacity: 1),
  ),
  AnimateKeyframeStop(
    0.55,
    AnimateKeyframe(scaleX: 1.1, scaleY: 1.1, opacity: 1),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(scaleX: 0.3, scaleY: 0.3, opacity: 0)),
], durationScale: 0.75);

/// Animate.css `bounceOutDown`.
const AnimateKeyframeTrack bounceOutDownEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.20, AnimateKeyframe(pixelY: 10, scaleY: 0.985)),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(pixelY: -20, scaleY: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(
    0.45,
    AnimateKeyframe(pixelY: -20, scaleY: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelY: 2000, scaleY: 3, opacity: 0)),
]);

/// Animate.css `bounceOutLeft`.
const AnimateKeyframeTrack bounceOutLeftEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(pixelX: 20, scaleX: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelX: -2000, scaleX: 2, opacity: 0)),
]);

/// Animate.css `bounceOutRight`.
const AnimateKeyframeTrack bounceOutRightEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0.20,
    AnimateKeyframe(pixelX: -20, scaleX: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 2000, scaleX: 2, opacity: 0)),
]);

/// Animate.css `bounceOutUp`.
const AnimateKeyframeTrack bounceOutUpEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.20, AnimateKeyframe(pixelY: -10, scaleY: 0.985)),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(pixelY: 20, scaleY: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(
    0.45,
    AnimateKeyframe(pixelY: 20, scaleY: 0.9, opacity: 1),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(pixelY: -2000, scaleY: 3, opacity: 0)),
]);
