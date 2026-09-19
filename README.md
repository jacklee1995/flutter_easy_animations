# flutter_easy_animations

[![pub package](https://img.shields.io/pub/v/flutter_easy_animations.svg)](https://pub.dev/packages/flutter_easy_animations)
[![CI](https://github.com/jacklee1995/flutter_easy_animations/actions/workflows/ci.yml/badge.svg)](https://github.com/jacklee1995/flutter_easy_animations/actions/workflows/ci.yml)

[中文文档](https://github.com/jacklee1995/flutter_easy_animations/blob/master/README_CN.md)

[Animate.css](https://animate.style/) for Flutter. 97 effects, same names,
same keyframes.

## Install

```yaml
dependencies:
  flutter_easy_animations: ^1.0.0
```

Requires Flutter 3.47 / Dart 3.13.

## Usage

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

`animation` is any `Animation<double>` from 0 to 1.

Animate.css defaults to 1s, and a few effects multiply that (`hinge` 2×,
`heartBeat` 1.3×, `bounceIn`/`bounceOut` 0.75×). The multiplier is
`style.track.durationScale`:

```dart
AnimationController(
  duration: const Duration(seconds: 1) * style.track.durationScale,
  vsync: this,
);
```

`AnimateStyle` is an enum, so `AnimateStyle.values` gives you all of them.
`style.isExit` is true for the `*Out*` effects.

When `MediaQuery.disableAnimations` is set, `AnimateStyled` renders the final
frame instead of animating and hides exits. Pass
`respectReducedMotion: false` to always animate.

## Effects

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

Run `example/` for a gallery.

## Custom effects

```dart
const wiggle = AnimateKeyframeTrack([
  AnimateKeyframeStop(0.00, AnimateKeyframe.none),
  AnimateKeyframeStop(0.25, AnimateKeyframe(rotateZ: 5 * degrees)),
  AnimateKeyframeStop(0.75, AnimateKeyframe(rotateZ: -5 * degrees)),
  AnimateKeyframeStop(1.00, AnimateKeyframe.none),
], origin: Alignment.topCenter);

KeyframeTransition(track: wiggle, animation: controller, child: child);
```

`transform` and `opacity` interpolate independently, like CSS. Use
`fractionX`/`fractionY` for percentages, `pixelX`/`pixelY` for px, and
`degrees` for angles. `CssCurves` has the `cubic-bezier` curves from
Animate.css.

Not implemented: `visibility` (`slide*`) and `backface-visibility`
(flippers).

## Migrating from 0.x

```dart
// 0.x
AnimateStyles.bounce(controller, child)

// 1.x
AnimateStyled(style: AnimateStyle.bounce, animation: controller, child: child)
```

The old methods still work but are deprecated and go away in 2.0.0.

Several 0.x effects were wrong and now look different: `rotateOut` and the
`zoomOut*` family faded in instead of out, the directional `zoomOut*`
effects moved the wrong way, `rollIn`/`rollOut` moved by 1px, `flash` never
went above 50% opacity. See CHANGELOG.

## License

MIT
