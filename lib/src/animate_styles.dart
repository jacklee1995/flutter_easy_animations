import 'dart:math';
import 'dart:math' as math;
import 'package:flutter/material.dart';

/// 受启发于[animate.style](https://animate.style/)，
/// 即 **Animate.css** 模块，提供同名的静态方法，
/// 每一个静态方法返回的都是一个 [AnimatedWidget] 类型，
class AnimateStyles {
  /// 弹跳动画
  static ScaleTransition bounce(Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 闪烁动画
  static AnimatedBuilder flash(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final opacity =
            animation.value > 0.5 ? 1.0 - animation.value : animation.value;
        return Opacity(opacity: opacity, child: child);
      },
      child: child,
    );
  }

  /// 脉动动画
  static ScaleTransition pulse(Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.0, end: 1.05).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeInOut),
      ),
      child: child,
    );
  }

  /// 橡皮筋动画
  static AnimatedBuilder rubberBand(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final scale = animation.value <= 0.5
            ? 1.0 + animation.value
            : 1.5 - animation.value;
        return Transform.scale(scale: scale, child: child);
      },
      child: child,
    );
  }

  /// X轴抖动动画
  static AnimatedBuilder shakeX(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final dx = sin(animation.value * pi * 10) * 10;
        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
      child: child,
    );
  }

  /// Y轴抖动动画
  static AnimatedBuilder shakeY(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final dy = sin(animation.value * pi * 10) * 10;
        return Transform.translate(offset: Offset(0, dy), child: child);
      },
      child: child,
    );
  }

  /// 头部摇摆动画
  static AnimatedBuilder headShake(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final dx = sin(animation.value * pi * 4) * 10;
        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
      child: child,
    );
  }

  /// 摆动动画
  static RotationTransition swing(Animation<double> animation, Widget child) {
    return RotationTransition(
      turns: Tween<double>(begin: 0.0, end: 0.1).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
      ),
      child: child,
    );
  }

  /// Tada 动画
  static ScaleTransition tada(Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// Wobble 动画
  static AnimatedBuilder wobble(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = animation.value * pi / 18;
        return Transform.rotate(angle: angle, child: child);
      },
      child: child,
    );
  }

  /// Jello 动画
  static AnimatedBuilder jello(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final skew = sin(animation.value * pi * 4) * 0.02;
        return Transform(
          transform: Matrix4.skewX(skew),
          child: child,
        );
      },
      child: child,
    );
  }

  /// HeartBeat 动画
  static ScaleTransition heartBeat(Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.0, end: 1.3).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 向下回弹动画
  static SlideTransition backInDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticOut,
      )),
      child: child,
    );
  }

  /// 向左回弹动画
  static SlideTransition backInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticOut,
      )),
      child: child,
    );
  }

  /// 向右回弹动画
  static SlideTransition backInRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticOut,
      )),
      child: child,
    );
  }

  /// 向上回弹动画
  static SlideTransition backInUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticOut,
      )),
      child: child,
    );
  }

  /// 向下回弹出动画
  static SlideTransition backOutDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, 1.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticIn,
      )),
      child: child,
    );
  }

  /// 向左回弹出动画
  static SlideTransition backOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-1.0, 0.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticIn,
      )),
      child: child,
    );
  }

  /// 向右回弹出动画
  static SlideTransition backOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticIn,
      )),
      child: child,
    );
  }

  /// 向上回弹出动画
  static SlideTransition backOutUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, -1.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.elasticIn,
      )),
      child: child,
    );
  }

  /// 弹入动画
  static ScaleTransition bounceIn(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.3, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.bounceOut,
        ),
      ),
      child: child,
    );
  }

  /// 向下弹入动画
  static SlideTransition bounceInDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceOut,
      )),
      child: child,
    );
  }

  /// 向左弹入动画
  static SlideTransition bounceInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceOut,
      )),
      child: child,
    );
  }

  /// 向右弹入动画
  static SlideTransition bounceInRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceOut,
      )),
      child: child,
    );
  }

  /// 向上弹入动画
  static SlideTransition bounceInUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceOut,
      )),
      child: child,
    );
  }

  /// 弹出动画
  static ScaleTransition bounceOut(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.0, end: 0.3).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.bounceIn,
        ),
      ),
      child: child,
    );
  }

  /// 向下弹出动画
  static SlideTransition bounceOutDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, 1.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceIn,
      )),
      child: child,
    );
  }

  /// 向左弹出动画
  static SlideTransition bounceOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-1.0, 0.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceIn,
      )),
      child: child,
    );
  }

  /// 向右弹出动画
  static SlideTransition bounceOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceIn,
      )),
      child: child,
    );
  }

  /// 向上弹出动画
  static SlideTransition bounceOutUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, -1.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceIn,
      )),
      child: child,
    );
  }

  /// 使用给定的动画将一个小部件淡入。
  static FadeTransition fadeIn(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(animation),
      child: child,
    );
  }

  /// 使用给定的动画将小部件淡入并向下滑动。
  static SlideTransition fadeInDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向下滑动，滑动距离更大。
  static SlideTransition fadeInDownBig(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -5.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向左滑动。
  static SlideTransition fadeInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向左滑动，滑动距离更大。
  static SlideTransition fadeInLeftBig(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-5.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向右滑动。
  static SlideTransition fadeInRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向右滑动，滑动距离更大。
  static SlideTransition fadeInRightBig(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(5.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向上滑动。
  static SlideTransition fadeInUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向上滑动，滑动距离更大。
  static SlideTransition fadeInUpBig(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 5.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 使用给定的动画将小部件淡入并向左上角滑动。
  static SlideTransition fadeInTopLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, -1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 从右上角淡入动画
  static SlideTransition fadeInTopRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, -1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 从左下角淡入动画
  static SlideTransition fadeInBottomLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 从右下角淡入动画
  static SlideTransition fadeInBottomRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: fadeIn(animation, child),
    );
  }

  /// 淡出动画
  static FadeTransition fadeOut(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: child,
    );
  }

  /// 向下淡出动画
  static FadeTransition fadeOutDown(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, 0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向下淡出大动画
  static FadeTransition fadeOutDownBig(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, 1.0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向左淡出动画
  static FadeTransition fadeOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(-0.1, 0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向左淡出大动画
  static FadeTransition fadeOutLeftBig(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(-1.0, 0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向右淡出动画
  static FadeTransition fadeOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.1, 0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向右淡出大动画
  static FadeTransition fadeOutRightBig(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向上淡出动画
  static FadeTransition fadeOutUp(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, -0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向上淡出大动画
  static FadeTransition fadeOutUpBig(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, -1.0),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向左上角淡出动画
  static FadeTransition fadeOutTopLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(-0.1, -0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向右上角淡出动画
  static FadeTransition fadeOutTopRight(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.1, -0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向右下角淡出动画
  static FadeTransition fadeOutBottomRight(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0.1, 0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 向左下角淡出动画
  static FadeTransition fadeOutBottomLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: Tween<double>(begin: 1.0, end: 0.0).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(-0.1, 0.1),
        ).animate(animation),
        child: child,
      ),
    );
  }

  /// 翻转动画
  static AnimatedBuilder flip(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = animation.value * math.pi;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(angle),
          child: child,
        );
      },
      child: child,
    );
  }

  /// 沿 X 轴翻入动画
  static AnimatedBuilder flipInX(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = math.pi * (1.0 - animation.value);
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationX(angle)..scale(animation.value),
          child: Opacity(opacity: animation.value, child: child),
        );
      },
      child: child,
    );
  }

  /// 沿 Y 轴翻入动画
  static AnimatedBuilder flipInY(Animation<double> animation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = math.pi * (1.0 - animation.value);
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(angle)..scale(animation.value),
          child: Opacity(opacity: animation.value, child: child),
        );
      },
      child: child,
    );
  }

  /// 沿 X 轴翻出动画
  static AnimatedBuilder flipOutX(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = math.pi * animation.value;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationX(angle)..scale(1.0 - animation.value),
          child: Opacity(opacity: 1.0 - animation.value, child: child),
        );
      },
      child: child,
    );
  }

  /// 沿 Y 轴翻出动画
  static AnimatedBuilder flipOutY(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = math.pi * animation.value;
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(angle)..scale(1.0 - animation.value),
          child: Opacity(opacity: 1.0 - animation.value, child: child),
        );
      },
      child: child,
    );
  }

  /// 从右侧加速进入动画
  static AnimatedBuilder lightSpeedInRight(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final double translateX = (1.0 - animation.value) * 400;
        final double opacity = animation.value;
        return Transform.translate(
          offset: Offset(translateX, 0),
          child: Opacity(opacity: opacity, child: child),
        );
      },
      child: child,
    );
  }

  /// 从左侧加速进入动画
  static AnimatedBuilder lightSpeedInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final double translateX = (animation.value - 1.0) * 400;
        final double opacity = animation.value;
        return Transform.translate(
          offset: Offset(translateX, 0),
          child: Opacity(opacity: opacity, child: child),
        );
      },
      child: child,
    );
  }

  /// 从右侧加速退出动画
  static AnimatedBuilder lightSpeedOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final double translateX = animation.value * 400;
        final double opacity = 1.0 - animation.value;
        return Transform.translate(
          offset: Offset(translateX, 0),
          child: Opacity(opacity: opacity, child: child),
        );
      },
      child: child,
    );
  }

  /// 从左侧加速退出动画
  static AnimatedBuilder lightSpeedOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final double translateX = -animation.value * 400;
        final double opacity = 1.0 - animation.value;
        return Transform.translate(
          offset: Offset(translateX, 0),
          child: Opacity(opacity: opacity, child: child),
        );
      },
      child: child,
    );
  }

  /// 旋转进入动画
  static RotationTransition rotateIn(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      turns: Tween<double>(begin: -0.25, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 左上角旋转进入动画
  static RotationTransition rotateInDownLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: Alignment.topLeft,
      turns: Tween<double>(begin: -0.25, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 右上角旋转进入动画
  static RotationTransition rotateInDownRight(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: Alignment.topRight,
      turns: Tween<double>(begin: 0.25, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 左上角旋转进入动画
  static RotationTransition rotateInUpLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: Alignment.bottomLeft,
      turns: Tween<double>(begin: 0.25, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 右上角旋转进入动画
  static RotationTransition rotateInUpRight(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      alignment: Alignment.bottomRight,
      turns: Tween<double>(begin: -0.25, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 旋转退出动画
  static RotationTransition rotateOut(
    Animation<double> animation,
    Widget child,
  ) {
    return RotationTransition(
      turns: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  /// 左下角旋转退出动画
  static AnimatedBuilder rotateOutDownLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final angle = animation.value * pi / 2;
        final offset = animation.value * 200;
        return Transform(
          transform: Matrix4.rotationZ(angle)..translate(0.0, offset),
          alignment: Alignment.bottomLeft,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  /// 右下角旋转退出动画
  static AnimatedBuilder rotateOutDownRight(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final angle = -animation.value * pi / 2;
        final offset = animation.value * 200;
        return Transform(
          transform: Matrix4.rotationZ(angle)..translate(0.0, offset),
          alignment: Alignment.bottomRight,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  /// 左上角旋转退出动画
  static AnimatedBuilder rotateOutUpLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final angle = -animation.value * pi / 2;
        final offset = animation.value * 200;
        return Transform(
          transform: Matrix4.rotationZ(angle)..translate(0.0, -offset),
          alignment: Alignment.topLeft,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  /// 右上角旋转退出动画
  static AnimatedBuilder rotateOutUpRight(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final angle = animation.value * pi / 2;
        final offset = animation.value * 200;
        return Transform(
          transform: Matrix4.rotationZ(angle)..translate(0.0, -offset),
          alignment: Alignment.topRight,
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  /// 垂直悬挂动画
  static AnimatedBuilder hinge(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = animation.value < 0.5
            ? (animation.value * 2 * math.pi / 18)
            : (math.pi / 18);
        final offset = animation.value < 0.5 ? 0.0 : 100.0 * animation.value;
        return Transform(
          alignment: Alignment.topLeft,
          transform: Matrix4.rotationZ(angle)..translate(0.0, offset),
          child: Opacity(
            opacity:
                animation.value < 0.5 ? 1.0 : 1.0 - (animation.value - 0.5) * 2,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  /// 盒子跳动动画
  static ScaleTransition jackInTheBox(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.1, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(0.0, 0.5, curve: Curves.bounceOut),
        ),
      ),
      child: RotationTransition(
        turns: Tween<double>(begin: 0.25, end: 0.0).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.5, 1.0, curve: Curves.bounceOut),
          ),
        ),
        child: child,
      ),
    );
  }

  /// 从左边滚动进入动画
  static AnimatedBuilder rollIn(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final offset =
            Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
                .animate(animation);
        final angle =
            Tween<double>(begin: -math.pi / 2, end: 0.0).animate(animation);
        return Transform.translate(
          offset: offset.value,
          child: Transform.rotate(
            angle: angle.value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  /// 向右边滚动退出动画
  static AnimatedBuilder rollOut(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final offset =
            Tween<Offset>(begin: Offset.zero, end: const Offset(1.0, 0.0))
                .animate(animation);
        final angle =
            Tween<double>(begin: 0.0, end: math.pi / 2).animate(animation);
        return Transform.translate(
          offset: offset.value,
          child: Transform.rotate(
            angle: angle.value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  /// 缩放进入动画
  static ScaleTransition zoomIn(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: child,
    );
  }

  /// 从上方缩放进入动画
  static ScaleTransition zoomInDown(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, -1.0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(parent: animation, curve: Curves.elasticOut),
        ),
        child: child,
      ),
    );
  }

  /// 从左侧缩放进入动画
  static ScaleTransition zoomInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1.0, 0.0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(parent: animation, curve: Curves.elasticOut),
        ),
        child: child,
      ),
    );
  }

  /// 从右侧缩放进入动画
  static ScaleTransition zoomInRight(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(parent: animation, curve: Curves.elasticOut),
        ),
        child: child,
      ),
    );
  }

  /// 从下方缩放进入动画
  static ScaleTransition zoomInUp(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.elasticOut),
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.elasticOut)),
        child: child,
      ),
    );
  }

  /// 缩小动画：从大到小
  static ScaleTransition zoomOut(
    Animation<double> animation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeIn), // 动画曲线
      ),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  /// 缩小下移动画
  static AnimatedBuilder zoomOutDown(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double offset = 100.0 * (1.0 - animation.value); // 下移偏移量
        return Transform.translate(
          offset: Offset(0, offset),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeIn,
              ),
            ),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }

  /// 缩小左移动画
  static AnimatedBuilder zoomOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double offset = -300.0 * (1.0 - animation.value); // 左移偏移量
        return Transform.translate(
          offset: Offset(offset, 0),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn),
            ),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }

  /// 缩小右移动画
  static AnimatedBuilder zoomOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double offset = 300.0 * (1.0 - animation.value);
        return Transform.translate(
          offset: Offset(offset, 0),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn),
            ),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }

  /// 缩小上移动画
  static AnimatedBuilder zoomOutUp(
    Animation<double> animation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        double offset = -100.0 * (1.0 - animation.value);
        return Transform.translate(
          offset: Offset(0, offset),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn),
            ),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }

  /// 从上方滑入动画
  static SlideTransition slideInDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, -1.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeOut),
      ),
      child: child,
    );
  }

  /// 从左侧滑入动画
  static SlideTransition slideInLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1.0, 0.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeOut),
      ),
      child: child,
    );
  }

  /// 从右侧滑入动画
  static SlideTransition slideInRight(
      Animation<double> animation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeOut),
      ),
      child: child,
    );
  }

  /// 从下方滑入动画
  static SlideTransition slideInUp(Animation<double> animation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeOut),
      ),
      child: child,
    );
  }

  /// 使元素向下滑出屏幕
  static SlideTransition slideOutDown(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, 1.0),
      ).animate(animation),
      child: child,
    );
  }

  /// 使元素向左滑出屏幕
  static SlideTransition slideOutLeft(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-1.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }

  /// 使元素向右滑出屏幕
  static SlideTransition slideOutRight(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }

  /// 使元素向上滑出屏幕
  static SlideTransition slideOutUp(
    Animation<double> animation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.0, -1.0),
      ).animate(animation),
      child: child,
    );
  }
}
