/// A Flutter port of [Animate.css](https://animate.style/).
///
/// ```dart
/// AnimateStyled(
///   style: AnimateStyle.fadeInUp,
///   animation: controller,
///   child: const Text('Hello'),
/// )
/// ```
library;

export 'src/animate_style.dart' show AnimateStyle;
export 'src/animate_styled.dart' show AnimateStyled;
// ignore: deprecated_member_use_from_same_package
export 'src/animate_styles.dart' show AnimateStyles;
export 'src/keyframe_transition.dart'
    show KeyframeTransform, KeyframeTransition;
export 'src/keyframes.dart'
    show
        AnimateKeyframe,
        AnimateKeyframeStop,
        AnimateKeyframeTrack,
        CssCurves,
        degrees;
