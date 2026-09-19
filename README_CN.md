# flutter_easy_animations

[![pub package](https://img.shields.io/pub/v/flutter_easy_animations.svg)](https://pub.dev/packages/flutter_easy_animations)
[![CI](https://github.com/jacklee1995/flutter_easy_animations/actions/workflows/ci.yml/badge.svg)](https://github.com/jacklee1995/flutter_easy_animations/actions/workflows/ci.yml)

[English](https://github.com/jacklee1995/flutter_easy_animations/blob/master/README.md)

[Animate.css](https://animate.style/) 的 Flutter 版。97 个效果，名字和关键帧都和原版一样。

## 安装

```yaml
dependencies:
  flutter_easy_animations: ^1.0.0
```

需要 Flutter 3.47 / Dart 3.13。

## 用法

```dart
import 'package:flutter/material.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';

class Greeting extends StatefulWidget {
  const Greeting({super.key});

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimateStyled(
      style: AnimateStyle.fadeInUp,
      animation: _controller,
      child: const Text('Hello'),
    );
  }
}
```

`animation` 是任意 0 到 1 的 `Animation<double>`。

Animate.css 默认 1 秒，少数效果会乘一个系数（`hinge` 2×、`heartBeat` 1.3×、`bounceIn`/`bounceOut` 0.75×）。系数在 `style.track.durationScale`：

```dart
AnimationController(
  duration: const Duration(seconds: 1) * style.track.durationScale,
  vsync: this,
);
```

`AnimateStyle` 是枚举，`AnimateStyle.values` 就是全部效果。`style.isExit` 对 `*Out*` 效果为 true。

系统开了 `MediaQuery.disableAnimations` 时，`AnimateStyled` 直接显示最后一帧，退场效果隐藏。传 `respectReducedMotion: false` 强制播放。

## 效果

| | |
| :- | :- |
| Attention seekers | `bounce` `flash` `pulse` `rubberBand` `shakeX` `shakeY` `headShake` `swing` `tada` `wobble` `jello` `heartBeat` |
| Back | `backInDown` `backInLeft` `backInRight` `backInUp` `backOutDown` `backOutLeft` `backOutRight` `backOutUp` |
| Bouncing | `bounceIn` `bounceInDown` `bounceInLeft` `bounceInRight` `bounceInUp` `bounceOut` `bounceOutDown` `bounceOutLeft` `bounceOutRight` `bounceOutUp` |
| Fading in | `fadeIn` `fadeInDown` `fadeInDownBig` `fadeInLeft` `fadeInLeftBig` `fadeInRight` `fadeInRightBig` `fadeInUp` `fadeInUpBig` `fadeInTopLeft` `fadeInTopRight` `fadeInBottomLeft` `fadeInBottomRight` |
| Fading out | `fadeOut` `fadeOutDown` `fadeOutDownBig` `fadeOutLeft` `fadeOutLeftBig` `fadeOutRight` `fadeOutRightBig` `fadeOutUp` `fadeOutUpBig` `fadeOutTopLeft` `fadeOutTopRight` `fadeOutBottomRight` `fadeOutBottomLeft` |
| Flippers | `flip` `flipInX` `flipInY` `flipOutX` `flipOutY` |
| Lightspeed | `lightSpeedInRight` `lightSpeedInLeft` `lightSpeedOutRight` `lightSpeedOutLeft` |
| Rotating | `rotateIn` `rotateInDownLeft` `rotateInDownRight` `rotateInUpLeft` `rotateInUpRight` `rotateOut` `rotateOutDownLeft` `rotateOutDownRight` `rotateOutUpLeft` `rotateOutUpRight` |
| Specials | `hinge` `jackInTheBox` `rollIn` `rollOut` |
| Zooming | `zoomIn` `zoomInDown` `zoomInLeft` `zoomInRight` `zoomInUp` `zoomOut` `zoomOutDown` `zoomOutLeft` `zoomOutRight` `zoomOutUp` |
| Sliding | `slideInDown` `slideInLeft` `slideInRight` `slideInUp` `slideOutDown` `slideOutLeft` `slideOutRight` `slideOutUp` |

跑 `example/` 可以看全部效果。

## 自定义效果

```dart
const wiggle = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.00, AnimateKeyframe.none),
  AnimateKeyframeStop(0.25, AnimateKeyframe(rotateZ: 5 * degrees)),
  AnimateKeyframeStop(0.75, AnimateKeyframe(rotateZ: -5 * degrees)),
  AnimateKeyframeStop(1.00, AnimateKeyframe.none),
], origin: Alignment.topCenter);

KeyframeTransition(track: wiggle, animation: controller, child: child);
```

`transform` 和 `opacity` 各自独立插值，和 CSS 一样。百分比用 `fractionX`/`fractionY`，像素用 `pixelX`/`pixelY`，角度用 `degrees`。`CssCurves` 里是 Animate.css 用到的 `cubic-bezier` 曲线。

没实现的：`slide*` 的 `visibility`，flippers 的 `backface-visibility`。

## 从 0.x 迁移

```dart
// 0.x
AnimateStyles.bounce(controller, child)

// 1.x
AnimateStyled(style: AnimateStyle.bounce, animation: controller, child: child)
```

旧方法还能用，但已弃用，2.0.0 删除。

0.x 有几个效果本来就是错的，现在看起来会不一样：`rotateOut` 和 `zoomOut*` 是淡入而不是淡出，带方向的 `zoomOut*` 移动方向反了，`rollIn`/`rollOut` 只移了 1px，`flash` 不透明度最高只到 50%。详见 CHANGELOG。

## 许可证

MIT
