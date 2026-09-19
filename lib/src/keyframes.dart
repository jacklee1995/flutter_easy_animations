import 'dart:math' as math;

import 'package:flutter/widgets.dart';

/// Degrees to radians, so CSS angles can be written as `15 * degrees`.
const double degrees = math.pi / 180;

/// One keyframe of an [AnimateKeyframeTrack].
///
/// As in CSS, `transform` and `opacity` are independent properties. A
/// keyframe that omits one of them does not reset it; the value keeps
/// interpolating between the neighbouring keyframes that declare it.
///
/// Transform components compose as
/// `perspective * translate * rotateX * rotateY * rotateZ * skew * scale`,
/// or with `scale` moved to the front when [scaleFirst] is set.
@immutable
class AnimateKeyframe {
  /// A keyframe that declares a transform and optionally an [opacity].
  const AnimateKeyframe({
    this.fractionX = 0,
    this.fractionY = 0,
    this.pixelX = 0,
    this.pixelY = 0,
    this.pixelZ = 0,
    this.scaleX = 1,
    this.scaleY = 1,
    this.rotateX = 0,
    this.rotateY = 0,
    this.rotateZ = 0,
    this.skewX = 0,
    this.skewY = 0,
    this.perspective = 0,
    this.scaleFirst = false,
    this.opacity,
  }) : specifiesTransform = true,
       assert(
         !scaleFirst || (fractionX == 0 && fractionY == 0),
         'scaleFirst cannot be combined with fractional translation',
       );

  /// A keyframe that declares only `opacity`.
  const AnimateKeyframe.opacity(double value)
    : opacity = value,
      specifiesTransform = false,
      fractionX = 0,
      fractionY = 0,
      pixelX = 0,
      pixelY = 0,
      pixelZ = 0,
      scaleX = 1,
      scaleY = 1,
      rotateX = 0,
      rotateY = 0,
      rotateZ = 0,
      skewX = 0,
      skewY = 0,
      perspective = 0,
      scaleFirst = false;

  /// Identity transform, i.e. `transform: translate3d(0, 0, 0)`.
  static const AnimateKeyframe none = AnimateKeyframe();

  /// Identity transform at full opacity.
  static const AnimateKeyframe base = AnimateKeyframe(opacity: 1);

  /// Whether this keyframe declares `transform`.
  final bool specifiesTransform;

  /// Horizontal translation as a fraction of the child's width.
  final double fractionX;

  /// Vertical translation as a fraction of the child's height.
  final double fractionY;

  /// Horizontal translation in logical pixels.
  final double pixelX;

  /// Vertical translation in logical pixels.
  final double pixelY;

  /// Translation along the z axis in logical pixels. Needs [perspective].
  final double pixelZ;

  /// Whether `scale` is applied before `translate`, as in
  /// `scale(0.1) translate3d(0, -1000px, 0)`.
  final bool scaleFirst;

  /// Horizontal scale.
  final double scaleX;

  /// Vertical scale.
  final double scaleY;

  /// Rotation about the x axis, in radians.
  final double rotateX;

  /// Rotation about the y axis, in radians.
  final double rotateY;

  /// Rotation about the z axis, in radians.
  final double rotateZ;

  /// Skew along the x axis, in radians.
  final double skewX;

  /// Skew along the y axis, in radians.
  final double skewY;

  /// CSS `perspective()` distance in logical pixels; `0` for none.
  final double perspective;

  /// Opacity, or `null` if this keyframe does not declare it.
  final double? opacity;

  /// Whether this keyframe declares `opacity`.
  bool get specifiesOpacity => opacity != null;

  /// The fractional part of the translation, applied outside [toMatrix].
  Offset get fractionalTranslation => Offset(fractionX, fractionY);

  /// The transform matrix, excluding [fractionalTranslation].
  Matrix4 toMatrix() {
    final matrix = perspective == 0
        ? Matrix4.identity()
        : (Matrix4.identity()..setEntry(3, 2, -1 / perspective));

    final scaled = scaleX != 1 || scaleY != 1;
    if (scaleFirst && scaled) {
      matrix.scaleByDouble(scaleX, scaleY, 1, 1);
    }
    if (pixelX != 0 || pixelY != 0 || pixelZ != 0) {
      matrix.translateByDouble(pixelX, pixelY, pixelZ, 1);
    }
    if (rotateX != 0) {
      matrix.multiply(Matrix4.rotationX(rotateX));
    }
    if (rotateY != 0) {
      matrix.multiply(Matrix4.rotationY(rotateY));
    }
    if (rotateZ != 0) {
      matrix.multiply(Matrix4.rotationZ(rotateZ));
    }
    if (skewX != 0 || skewY != 0) {
      matrix.multiply(
        Matrix4.identity()
          ..setEntry(0, 1, math.tan(skewX))
          ..setEntry(1, 0, math.tan(skewY)),
      );
    }
    if (!scaleFirst && scaled) {
      matrix.scaleByDouble(scaleX, scaleY, 1, 1);
    }
    return matrix;
  }

  /// Interpolates the transform components of [a] and [b]. Opacity is taken
  /// from [a].
  static AnimateKeyframe lerpTransform(
    AnimateKeyframe a,
    AnimateKeyframe b,
    double t,
  ) {
    if (t == 0) {
      return a;
    }
    if (t == 1) {
      return b;
    }

    double mix(double from, double to) => from + (to - from) * t;

    return AnimateKeyframe(
      fractionX: mix(a.fractionX, b.fractionX),
      fractionY: mix(a.fractionY, b.fractionY),
      pixelX: mix(a.pixelX, b.pixelX),
      pixelY: mix(a.pixelY, b.pixelY),
      pixelZ: mix(a.pixelZ, b.pixelZ),
      scaleFirst: a.scaleFirst || b.scaleFirst,
      scaleX: mix(a.scaleX, b.scaleX),
      scaleY: mix(a.scaleY, b.scaleY),
      rotateX: mix(a.rotateX, b.rotateX),
      rotateY: mix(a.rotateY, b.rotateY),
      rotateZ: mix(a.rotateZ, b.rotateZ),
      skewX: mix(a.skewX, b.skewX),
      skewY: mix(a.skewY, b.skewY),
      perspective: a.perspective != 0 ? a.perspective : b.perspective,
      opacity: a.opacity,
    );
  }

  /// A copy with [opacity] replaced.
  AnimateKeyframe withOpacity(double value) => AnimateKeyframe(
    fractionX: fractionX,
    fractionY: fractionY,
    pixelX: pixelX,
    pixelY: pixelY,
    pixelZ: pixelZ,
    scaleFirst: scaleFirst,
    scaleX: scaleX,
    scaleY: scaleY,
    rotateX: rotateX,
    rotateY: rotateY,
    rotateZ: rotateZ,
    skewX: skewX,
    skewY: skewY,
    perspective: perspective,
    opacity: value,
  );
}

/// A keyframe at a position on the timeline.
@immutable
class AnimateKeyframeStop {
  /// Places [frame] at [offset].
  const AnimateKeyframeStop(this.offset, this.frame, {this.curve});

  /// Position from `0` to `1`; the CSS percentage.
  final double offset;

  /// The keyframe.
  final AnimateKeyframe frame;

  /// Easing for the segment starting at this stop. `null` means
  /// [AnimateKeyframeTrack.defaultCurve].
  final Curve? curve;
}

/// The keyframes of one effect.
@immutable
class AnimateKeyframeTrack {
  /// Creates a track from [stops] sorted by offset.
  const AnimateKeyframeTrack(
    this.stops, {
    this.origin = Alignment.center,
    this.defaultCurve = CssCurves.ease,
    this.durationScale = 1,
  });

  /// The keyframes, sorted by offset.
  final List<AnimateKeyframeStop> stops;

  /// CSS `transform-origin`.
  final Alignment origin;

  /// Easing for stops without their own [AnimateKeyframeStop.curve].
  final Curve defaultCurve;

  /// Multiplier the effect applies to `--animate-duration`.
  final double durationScale;

  /// The state at [t] in `0..1`. The result always has an opacity.
  AnimateKeyframe resolve(double t) {
    assert(stops.isNotEmpty, 'track has no stops');
    return _resolveTransform(t).withOpacity(_resolveOpacity(t));
  }

  AnimateKeyframe _resolveTransform(double t) {
    var previous = -1;
    var next = -1;
    for (var i = 0; i < stops.length; i++) {
      if (!stops[i].frame.specifiesTransform) {
        continue;
      }
      if (stops[i].offset <= t) {
        previous = i;
      } else {
        next = i;
        break;
      }
    }

    if (previous < 0 && next < 0) {
      return AnimateKeyframe.base;
    }
    if (previous < 0) {
      return _interpolate(
        0,
        AnimateKeyframe.base,
        defaultCurve,
        stops[next].offset,
        stops[next].frame,
        t,
      );
    }
    if (next < 0) {
      final start = stops[previous];
      if (start.offset >= 1) {
        return start.frame;
      }
      return _interpolate(
        start.offset,
        start.frame,
        start.curve ?? defaultCurve,
        1,
        AnimateKeyframe.base,
        t,
      );
    }
    final start = stops[previous];
    return _interpolate(
      start.offset,
      start.frame,
      start.curve ?? defaultCurve,
      stops[next].offset,
      stops[next].frame,
      t,
    );
  }

  static AnimateKeyframe _interpolate(
    double startOffset,
    AnimateKeyframe startFrame,
    Curve curve,
    double endOffset,
    AnimateKeyframe endFrame,
    double t,
  ) {
    final span = endOffset - startOffset;
    final local = span <= 0 ? 1.0 : (t - startOffset) / span;
    return AnimateKeyframe.lerpTransform(
      startFrame,
      endFrame,
      curve.transform(local.clamp(0, 1)),
    );
  }

  double _resolveOpacity(double t) {
    var previous = -1;
    var next = -1;
    for (var i = 0; i < stops.length; i++) {
      if (!stops[i].frame.specifiesOpacity) {
        continue;
      }
      if (stops[i].offset <= t) {
        previous = i;
      } else {
        next = i;
        break;
      }
    }

    if (previous < 0 && next < 0) {
      return 1;
    }
    if (previous < 0) {
      return _interpolateOpacity(
        0,
        1,
        defaultCurve,
        stops[next].offset,
        stops[next].frame.opacity!,
        t,
      );
    }
    if (next < 0) {
      final start = stops[previous];
      if (start.offset >= 1) {
        return start.frame.opacity!;
      }
      return _interpolateOpacity(
        start.offset,
        start.frame.opacity!,
        start.curve ?? defaultCurve,
        1,
        1,
        t,
      );
    }
    final start = stops[previous];
    return _interpolateOpacity(
      start.offset,
      start.frame.opacity!,
      start.curve ?? defaultCurve,
      stops[next].offset,
      stops[next].frame.opacity!,
      t,
    );
  }

  static double _interpolateOpacity(
    double startOffset,
    double startValue,
    Curve curve,
    double endOffset,
    double endValue,
    double t,
  ) {
    final span = endOffset - startOffset;
    final local = span <= 0 ? 1.0 : (t - startOffset) / span;
    final eased = curve.transform(local.clamp(0, 1));
    return startValue + (endValue - startValue) * eased;
  }
}

/// The `cubic-bezier()` curves used by Animate.css.
abstract final class CssCurves {
  /// CSS `ease`.
  static const Cubic ease = Cubic(0.25, 0.1, 0.25, 1);

  /// CSS `ease-in`.
  static const Cubic easeIn = Cubic(0.42, 0, 1, 1);

  /// CSS `ease-out`.
  static const Cubic easeOut = Cubic(0, 0, 0.58, 1);

  /// CSS `ease-in-out`.
  static const Cubic easeInOut = Cubic(0.42, 0, 0.58, 1);

  /// `cubic-bezier(0.215, 0.61, 0.355, 1)`.
  static const Cubic easeOutCubic = Cubic(0.215, 0.61, 0.355, 1);

  /// `cubic-bezier(0.755, 0.05, 0.855, 0.06)`.
  static const Cubic easeInCubic = Cubic(0.755, 0.05, 0.855, 0.06);

  /// `cubic-bezier(0.25, 0.46, 0.45, 0.94)`.
  static const Cubic easeOutQuad = Cubic(0.25, 0.46, 0.45, 0.94);
}
