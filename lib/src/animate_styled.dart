import 'package:flutter/widgets.dart';

import 'animate_style.dart';
import 'keyframe_transition.dart';

/// Plays an [AnimateStyle] on [child].
///
/// ```dart
/// AnimateStyled(
///   style: AnimateStyle.bounceIn,
///   animation: controller,
///   child: const Text('Hello'),
/// )
/// ```
class AnimateStyled extends StatelessWidget {
  /// Creates a widget that plays [style].
  const AnimateStyled({
    required this.style,
    required this.animation,
    required this.child,
    this.respectReducedMotion = true,
    super.key,
  });

  /// The effect to play.
  final AnimateStyle style;

  /// The driving animation, from `0` to `1`.
  final Animation<double> animation;

  /// The widget to animate.
  final Widget child;

  /// Whether to skip the animation when the platform asks for reduced
  /// motion. Entrances then show their final state; exits are hidden.
  final bool respectReducedMotion;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.maybeDisableAnimationsOf(context) ?? false;
    if (respectReducedMotion && reduceMotion) {
      final settled = style.track.resolve(1);
      return KeyframeTransform(
        frame: style.isExit ? settled.withOpacity(0) : settled,
        origin: style.track.origin,
        child: child,
      );
    }

    return KeyframeTransition(
      track: style.track,
      animation: animation,
      child: child,
    );
  }
}
