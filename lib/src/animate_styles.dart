import 'package:flutter/widgets.dart';

import 'animate_style.dart';
import 'animate_styled.dart';

/// The 0.x API. Each method forwards to [AnimateStyled].
@Deprecated(
  'Use AnimateStyled with an AnimateStyle instead. '
  'This class will be removed in 2.0.0.',
)
// ignore: avoid_classes_with_only_static_members
abstract final class AnimateStyles {
  /// Animate.css `bounce`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounce) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounce(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounce,
        animation: animation,
        child: child,
      );

  /// Animate.css `flash`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flash) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flash(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flash,
        animation: animation,
        child: child,
      );

  /// Animate.css `pulse`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.pulse) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget pulse(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.pulse,
        animation: animation,
        child: child,
      );

  /// Animate.css `rubberBand`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rubberBand) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rubberBand(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rubberBand,
        animation: animation,
        child: child,
      );

  /// Animate.css `shakeX`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.shakeX) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget shakeX(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.shakeX,
        animation: animation,
        child: child,
      );

  /// Animate.css `shakeY`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.shakeY) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget shakeY(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.shakeY,
        animation: animation,
        child: child,
      );

  /// Animate.css `headShake`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.headShake) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget headShake(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.headShake,
        animation: animation,
        child: child,
      );

  /// Animate.css `swing`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.swing) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget swing(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.swing,
        animation: animation,
        child: child,
      );

  /// Animate.css `tada`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.tada) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget tada(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.tada,
        animation: animation,
        child: child,
      );

  /// Animate.css `wobble`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.wobble) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget wobble(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.wobble,
        animation: animation,
        child: child,
      );

  /// Animate.css `jello`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.jello) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget jello(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.jello,
        animation: animation,
        child: child,
      );

  /// Animate.css `heartBeat`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.heartBeat) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget heartBeat(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.heartBeat,
        animation: animation,
        child: child,
      );

  /// Animate.css `backInDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backInDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backInDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backInDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `backInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `backInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `backInUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backInUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backInUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backInUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `backOutDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backOutDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backOutDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backOutDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `backOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `backOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `backOutUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.backOutUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget backOutUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.backOutUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceIn`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceIn) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceIn(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceIn,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceInDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceInDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceInDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceInDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceInUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceInUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceInUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceInUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceOut`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceOut) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceOut(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceOut,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceOutDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceOutDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceOutDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceOutDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `bounceOutUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.bounceOutUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget bounceOutUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.bounceOutUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeIn`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeIn) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeIn(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeIn,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInDownBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInDownBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInDownBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInDownBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInLeftBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInLeftBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInLeftBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInLeftBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInRightBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInRightBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInRightBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInRightBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInUpBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInUpBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInUpBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInUpBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInTopLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInTopLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInTopLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInTopLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInTopRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInTopRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInTopRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInTopRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInBottomLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInBottomLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInBottomLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInBottomLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeInBottomRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeInBottomRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeInBottomRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeInBottomRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOut`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOut) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOut(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOut,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutDownBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutDownBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutDownBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutDownBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutLeftBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutLeftBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutLeftBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutLeftBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutRightBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutRightBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutRightBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutRightBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutUpBig`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutUpBig) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutUpBig(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutUpBig,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutTopLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutTopLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutTopLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutTopLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutTopRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutTopRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutTopRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutTopRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutBottomRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutBottomRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutBottomRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutBottomRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `fadeOutBottomLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.fadeOutBottomLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget fadeOutBottomLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.fadeOutBottomLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `flip`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flip) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flip(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flip,
        animation: animation,
        child: child,
      );

  /// Animate.css `flipInX`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flipInX) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flipInX(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flipInX,
        animation: animation,
        child: child,
      );

  /// Animate.css `flipInY`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flipInY) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flipInY(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flipInY,
        animation: animation,
        child: child,
      );

  /// Animate.css `flipOutX`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flipOutX) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flipOutX(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flipOutX,
        animation: animation,
        child: child,
      );

  /// Animate.css `flipOutY`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.flipOutY) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget flipOutY(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.flipOutY,
        animation: animation,
        child: child,
      );

  /// Animate.css `lightSpeedInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.lightSpeedInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget lightSpeedInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.lightSpeedInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `lightSpeedInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.lightSpeedInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget lightSpeedInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.lightSpeedInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `lightSpeedOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.lightSpeedOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget lightSpeedOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.lightSpeedOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `lightSpeedOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.lightSpeedOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget lightSpeedOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.lightSpeedOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateIn`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateIn) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateIn(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateIn,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateInDownLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateInDownLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateInDownLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateInDownLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateInDownRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateInDownRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateInDownRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateInDownRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateInUpLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateInUpLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateInUpLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateInUpLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateInUpRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateInUpRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateInUpRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateInUpRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateOut`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateOut) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateOut(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateOut,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateOutDownLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateOutDownLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateOutDownLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateOutDownLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateOutDownRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateOutDownRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateOutDownRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateOutDownRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateOutUpLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateOutUpLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateOutUpLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateOutUpLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `rotateOutUpRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rotateOutUpRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rotateOutUpRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rotateOutUpRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideInDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideInDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideInDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideInDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideInUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideInUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideInUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideInUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideOutDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideOutDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideOutDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideOutDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `slideOutUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.slideOutUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget slideOutUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.slideOutUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `hinge`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.hinge) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget hinge(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.hinge,
        animation: animation,
        child: child,
      );

  /// Animate.css `jackInTheBox`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.jackInTheBox) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget jackInTheBox(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.jackInTheBox,
        animation: animation,
        child: child,
      );

  /// Animate.css `rollIn`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rollIn) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rollIn(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rollIn,
        animation: animation,
        child: child,
      );

  /// Animate.css `rollOut`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.rollOut) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget rollOut(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.rollOut,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomIn`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomIn) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomIn(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomIn,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomInDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomInDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomInDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomInDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomInLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomInLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomInLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomInLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomInRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomInRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomInRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomInRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomInUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomInUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomInUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomInUp,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomOut`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomOut) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomOut(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomOut,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomOutDown`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomOutDown) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomOutDown(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomOutDown,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomOutLeft`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomOutLeft) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomOutLeft(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomOutLeft,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomOutRight`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomOutRight) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomOutRight(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomOutRight,
        animation: animation,
        child: child,
      );

  /// Animate.css `zoomOutUp`.
  @Deprecated(
    'Use AnimateStyled(style: AnimateStyle.zoomOutUp) instead. '
    'This method will be removed in 2.0.0.',
  )
  static Widget zoomOutUp(Animation<double> animation, Widget child) =>
      AnimateStyled(
        style: AnimateStyle.zoomOutUp,
        animation: animation,
        child: child,
      );
}
