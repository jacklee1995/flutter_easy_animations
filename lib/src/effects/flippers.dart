import '../keyframes.dart';

/// Animate.css `flip`.
const AnimateKeyframeTrack flipEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(rotateY: -360 * degrees, perspective: 400),
    curve: CssCurves.easeOut,
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(pixelZ: 150, rotateY: -190 * degrees, perspective: 400),
    curve: CssCurves.easeOut,
  ),
  AnimateKeyframeStop(
    0.50,
    AnimateKeyframe(pixelZ: 150, rotateY: -170 * degrees, perspective: 400),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(scaleX: 0.95, scaleY: 0.95, perspective: 400),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(perspective: 400)),
]);

/// Animate.css `flipInX`.
const AnimateKeyframeTrack flipInXEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(rotateX: 90 * degrees, perspective: 400, opacity: 0),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(rotateX: -20 * degrees, perspective: 400),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(rotateX: 10 * degrees, perspective: 400, opacity: 1),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(rotateX: -5 * degrees, perspective: 400),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(perspective: 400)),
]);

/// Animate.css `flipInY`.
const AnimateKeyframeTrack flipInYEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(
    0,
    AnimateKeyframe(rotateY: 90 * degrees, perspective: 400, opacity: 0),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(
    0.40,
    AnimateKeyframe(rotateY: -20 * degrees, perspective: 400),
    curve: CssCurves.easeIn,
  ),
  AnimateKeyframeStop(
    0.60,
    AnimateKeyframe(rotateY: 10 * degrees, perspective: 400, opacity: 1),
  ),
  AnimateKeyframeStop(
    0.80,
    AnimateKeyframe(rotateY: -5 * degrees, perspective: 400),
  ),
  AnimateKeyframeStop(1, AnimateKeyframe(perspective: 400)),
]);

/// Animate.css `flipOutX`.
const AnimateKeyframeTrack flipOutXEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(perspective: 400)),
  AnimateKeyframeStop(
    0.30,
    AnimateKeyframe(rotateX: -20 * degrees, perspective: 400, opacity: 1),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(rotateX: 90 * degrees, perspective: 400, opacity: 0),
  ),
], durationScale: 0.75);

/// Animate.css `flipOutY`.
const AnimateKeyframeTrack flipOutYEffect = AnimateKeyframeTrack([
  AnimateKeyframeStop(0, AnimateKeyframe(perspective: 400)),
  AnimateKeyframeStop(
    0.30,
    AnimateKeyframe(rotateY: -15 * degrees, perspective: 400, opacity: 1),
  ),
  AnimateKeyframeStop(
    1,
    AnimateKeyframe(rotateY: 90 * degrees, perspective: 400, opacity: 0),
  ),
], durationScale: 0.75);
