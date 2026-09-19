import 'package:flutter/widgets.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';
import 'package:flutter_test/flutter_test.dart';

const Set<AnimateStyle> attentionSeekers = {
  AnimateStyle.bounce,
  AnimateStyle.flash,
  AnimateStyle.pulse,
  AnimateStyle.rubberBand,
  AnimateStyle.shakeX,
  AnimateStyle.shakeY,
  AnimateStyle.headShake,
  AnimateStyle.swing,
  AnimateStyle.tada,
  AnimateStyle.wobble,
  AnimateStyle.jello,
  AnimateStyle.heartBeat,
};

// Perspective is not checked; flipInX/flipInY keep it on their last frame.
bool isNeutral(AnimateKeyframe frame) =>
    _near(frame.fractionX, 0) &&
    _near(frame.fractionY, 0) &&
    _near(frame.pixelX, 0) &&
    _near(frame.pixelY, 0) &&
    _near(frame.pixelZ, 0) &&
    _near(frame.scaleX, 1) &&
    _near(frame.scaleY, 1) &&
    _near(frame.rotateX, 0) &&
    _near(frame.rotateY, 0) &&
    _near(frame.rotateZ, 0) &&
    _near(frame.skewX, 0) &&
    _near(frame.skewY, 0) &&
    _near(frame.opacity ?? 1, 1);

bool _near(double value, double target) => (value - target).abs() < 1e-9;

bool _allFinite(AnimateKeyframe frame) => <double>[
  frame.fractionX,
  frame.fractionY,
  frame.pixelX,
  frame.pixelY,
  frame.pixelZ,
  frame.scaleX,
  frame.scaleY,
  frame.rotateX,
  frame.rotateY,
  frame.rotateZ,
  frame.skewX,
  frame.skewY,
  frame.opacity ?? 1,
].every((double value) => value.isFinite);

void main() {
  test('the enum covers every Animate.css effect exactly once', () {
    expect(AnimateStyle.values, hasLength(97));
    expect(
      AnimateStyle.values.map((AnimateStyle s) => s.name).toSet(),
      hasLength(97),
    );
  });

  group('track shape', () {
    for (final style in AnimateStyle.values) {
      test('${style.name} is a well-formed timeline', () {
        final stops = style.track.stops;
        expect(stops, isNotEmpty);
        for (final stop in stops) {
          expect(stop.offset, inInclusiveRange(0, 1));
        }
        for (var i = 1; i < stops.length; i++) {
          expect(stops[i].offset, greaterThanOrEqualTo(stops[i - 1].offset));
        }
        expect(style.track.durationScale, greaterThan(0));
      });
    }
  });

  group('resolved values', () {
    for (final style in AnimateStyle.values) {
      test('${style.name} stays finite and within opacity bounds', () {
        for (var step = 0; step <= 40; step++) {
          final t = step / 40;
          final frame = style.track.resolve(t);
          expect(_allFinite(frame), isTrue, reason: 'at t=$t');
          expect(
            frame.opacity,
            inInclusiveRange(-1e-6, 1 + 1e-6),
            reason: 'at t=$t',
          );
        }
      });

      test('${style.name} actually animates', () {
        final sampled = <bool>[
          for (var step = 0; step <= 20; step++)
            isNeutral(style.track.resolve(step / 20)),
        ];
        expect(
          sampled.any((bool neutral) => !neutral),
          isTrue,
          reason: 'never leaves the neutral state',
        );
      });
    }
  });

  group('entrances settle', () {
    for (final style in AnimateStyle.values.where(
      (AnimateStyle s) => s.name.contains('In'),
    )) {
      test('${style.name} ends untouched and fully opaque', () {
        expect(isNeutral(style.track.resolve(1)), isTrue);
      });
    }
  });

  group('exits depart', () {
    for (final style in AnimateStyle.values.where(
      (AnimateStyle s) => s.isExit || s == AnimateStyle.hinge,
    )) {
      test('${style.name} ends hidden or displaced', () {
        final frame = style.track.resolve(1);
        final hidden = (frame.opacity ?? 1) < 0.9;
        final displaced =
            frame.fractionX.abs() > 0.5 ||
            frame.fractionY.abs() > 0.5 ||
            frame.pixelX.abs() > 100 ||
            frame.pixelY.abs() > 100 ||
            (frame.scaleX - 1).abs() > 0.1;
        expect(hidden || displaced, isTrue);
      });
    }
  });

  group('attention seekers return to rest', () {
    for (final style in attentionSeekers) {
      test('${style.name} starts and ends neutral', () {
        expect(isNeutral(style.track.resolve(0)), isTrue, reason: 'at t=0');
        expect(isNeutral(style.track.resolve(1)), isTrue, reason: 'at t=1');
      });
    }
  });

  group('regressions against the 0.x implementation', () {
    test('rotateOut fades out rather than in', () {
      expect(AnimateStyle.rotateOut.track.resolve(0).opacity, 1);
      expect(AnimateStyle.rotateOut.track.resolve(1).opacity, 0);
    });

    test('zoomOut fades out rather than in', () {
      expect(AnimateStyle.zoomOut.track.resolve(0).opacity, 1);
      expect(AnimateStyle.zoomOut.track.resolve(1).opacity, 0);
    });

    test('zoomOutDown travels downwards', () {
      expect(
        AnimateStyle.zoomOutDown.track.resolve(1).pixelY,
        greaterThan(1000),
      );
    });

    test('zoomOutUp travels upwards', () {
      expect(AnimateStyle.zoomOutUp.track.resolve(1).pixelY, lessThan(-1000));
    });

    test('rollIn slides in by a full width, not a single pixel', () {
      expect(AnimateStyle.rollIn.track.resolve(0).fractionX, -1);
      expect(AnimateStyle.rollIn.track.resolve(0).pixelX, 0);
    });

    test('rollOut slides out by a full width', () {
      expect(AnimateStyle.rollOut.track.resolve(1).fractionX, 1);
    });

    test('flash reaches both full opacity and full transparency', () {
      expect(AnimateStyle.flash.track.resolve(0).opacity, 1);
      expect(AnimateStyle.flash.track.resolve(0.25).opacity, 0);
      expect(AnimateStyle.flash.track.resolve(0.50).opacity, 1);
      expect(AnimateStyle.flash.track.resolve(0.75).opacity, 0);
      expect(AnimateStyle.flash.track.resolve(1).opacity, 1);
    });

    test('bounce lifts the child at its 40% keyframe', () {
      final frame = AnimateStyle.bounce.track.resolve(0.40);
      expect(frame.pixelY, -30);
      expect(frame.scaleY, 1.1);
    });

    test('bounce pivots about the bottom edge', () {
      expect(AnimateStyle.bounce.track.origin, Alignment.bottomCenter);
    });

    test('swing pivots about the top edge', () {
      expect(AnimateStyle.swing.track.origin, Alignment.topCenter);
    });

    test('heartBeat carries the CSS duration multiplier', () {
      expect(AnimateStyle.heartBeat.track.durationScale, 1.3);
    });
  });
}
