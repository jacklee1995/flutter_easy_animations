import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/widgets.dart';

import 'keyframes.dart';

/// Plays an [AnimateKeyframeTrack] on [child], driven by [animation].
class KeyframeTransition extends AnimatedWidget {
  /// Creates a transition for [track].
  const KeyframeTransition({
    required this.track,
    required Animation<double> animation,
    required this.child,
    super.key,
  }) : super(listenable: animation);

  /// The keyframes to play.
  final AnimateKeyframeTrack track;

  /// The widget to animate.
  final Widget child;

  /// The driving animation, from `0` to `1`.
  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return KeyframeTransform(
      frame: track.resolve(animation.value),
      origin: track.origin,
      child: child,
    );
  }
}

/// Applies a single [AnimateKeyframe] to [child].
class KeyframeTransform extends StatelessWidget {
  /// Creates a transform for [frame].
  const KeyframeTransform({
    required this.frame,
    required this.child,
    this.origin = Alignment.center,
    super.key,
  });

  /// The keyframe to apply.
  final AnimateKeyframe frame;

  /// CSS `transform-origin`.
  final Alignment origin;

  /// The widget to transform.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var result = child;

    final opacity = frame.opacity ?? 1;
    if (opacity != 1) {
      result = Opacity(opacity: clampDouble(opacity, 0, 1), child: result);
    }

    final matrix = frame.toMatrix();
    if (!matrix.isIdentity()) {
      result = Transform(transform: matrix, alignment: origin, child: result);
    }

    final translation = frame.fractionalTranslation;
    if (translation != Offset.zero) {
      result = FractionalTranslation(translation: translation, child: result);
    }

    return result;
  }
}
