import 'dart:math' as math;

import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AnimateKeyframeTrack.resolve', () {
    test('holds the first and last declared values outside the timeline', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(0, AnimateKeyframe(pixelX: 10)),
        AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 20)),
      ]);

      expect(track.resolve(-1).pixelX, 10);
      expect(track.resolve(2).pixelX, 20);
    });

    test('interpolates linearly when the curve is linear', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(
          0,
          AnimateKeyframe(pixelX: 0),
          curve: Curves.linear,
        ),
        AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 100)),
      ], defaultCurve: Curves.linear);

      expect(track.resolve(0.25).pixelX, closeTo(25, 1e-9));
      expect(track.resolve(0.75).pixelX, closeTo(75, 1e-9));
    });

    test('applies the curve of the stop the segment leaves', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(
          0,
          AnimateKeyframe(pixelX: 0),
          curve: Curves.easeInExpo,
        ),
        AnimateKeyframeStop(
          0.5,
          AnimateKeyframe(pixelX: 100),
          curve: Curves.linear,
        ),
        AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 200)),
      ], defaultCurve: Curves.linear);

      expect(track.resolve(0.25).pixelX, lessThan(25));
      expect(track.resolve(0.75).pixelX, closeTo(150, 1e-9));
    });

    test('ramps a property from its neutral value when the track starts '
        'without it', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(0.5, AnimateKeyframe(scaleX: 2, scaleY: 2)),
      ], defaultCurve: Curves.linear);

      expect(track.resolve(0).scaleX, closeTo(1, 1e-9));
      expect(track.resolve(0.25).scaleX, closeTo(1.5, 1e-9));
      expect(track.resolve(0.5).scaleX, closeTo(2, 1e-9));
      expect(track.resolve(0.75).scaleX, closeTo(1.5, 1e-9));
      expect(track.resolve(1).scaleX, closeTo(1, 1e-9));
    });

    test('interpolates opacity across keyframes that omit it', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(0, AnimateKeyframe(pixelX: 0, opacity: 0)),
        AnimateKeyframeStop(0.25, AnimateKeyframe(pixelX: 50)),
        AnimateKeyframeStop(0.5, AnimateKeyframe(pixelX: 100, opacity: 1)),
      ], defaultCurve: Curves.linear);

      expect(track.resolve(0.25).opacity, closeTo(0.5, 1e-9));
      expect(track.resolve(0.25).pixelX, closeTo(50, 1e-9));
    });

    test('leaves the transform alone across an opacity-only keyframe', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(0, AnimateKeyframe(pixelX: 0)),
        AnimateKeyframeStop(0.5, AnimateKeyframe.opacity(0.5)),
        AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 100)),
      ], defaultCurve: Curves.linear);

      expect(track.resolve(0.5).pixelX, closeTo(50, 1e-9));
      expect(track.resolve(0.5).opacity, closeTo(0.5, 1e-9));
    });

    test('defaults opacity to fully opaque when no keyframe declares it', () {
      const track = AnimateKeyframeTrack([
        AnimateKeyframeStop(0, AnimateKeyframe(pixelX: 0)),
        AnimateKeyframeStop(1, AnimateKeyframe(pixelX: 100)),
      ]);

      expect(track.resolve(0).opacity, 1);
      expect(track.resolve(0.5).opacity, 1);
      expect(track.resolve(1).opacity, 1);
    });
  });

  group('AnimateKeyframe.toMatrix', () {
    test('translates before scaling by default', () {
      const frame = AnimateKeyframe(pixelX: 100, scaleX: 0.5, scaleY: 0.5);
      expect(
        MatrixUtils.transformPoint(frame.toMatrix(), Offset.zero).dx,
        closeTo(100, 1e-9),
      );
    });

    test('scales the translation when scaleFirst is set', () {
      const frame = AnimateKeyframe(
        pixelX: 100,
        scaleX: 0.5,
        scaleY: 0.5,
        scaleFirst: true,
      );
      expect(
        MatrixUtils.transformPoint(frame.toMatrix(), Offset.zero).dx,
        closeTo(50, 1e-9),
      );
    });

    test('keeps fractional translation out of the matrix', () {
      const frame = AnimateKeyframe(fractionX: -0.25);
      expect(frame.toMatrix().isIdentity(), isTrue);
      expect(frame.fractionalTranslation, const Offset(-0.25, 0));
    });

    test('converts degrees to radians', () {
      const frame = AnimateKeyframe(rotateZ: 90 * degrees);
      expect(frame.rotateZ, closeTo(math.pi / 2, 1e-9));
    });

    test('writes perspective into the matrix', () {
      const frame = AnimateKeyframe(perspective: 400);
      expect(frame.toMatrix().entry(3, 2), closeTo(-1 / 400, 1e-9));
    });
  });
}
