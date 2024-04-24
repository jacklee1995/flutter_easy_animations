# Easy Animations

## Features

This library offers a variety of pre-built animation methods. These animations cover effects such as bouncing, flashing, pulsing, rubber banding, shaking, swinging, and more, allowing you to easily integrate captivating animations into your Flutter applications. More features are on the way, so stay tuned!

## Getting Started

To start using Easy Animations, follow these steps:

1. Add the Easy Animations package to your Flutter project.
2. Import the package and access the AnimateStyles class.
3. Choose from the available animation methods provided by AnimateStyles to enhance your user interface with engaging animations.

## Usage

Here is an example of how to use the bounce animation from AnimateStyles:

```dart
import 'package:easy_animations/animate_styles.dart';

// Implementing the bounce animation
AnimateStyles.bounce(
  animation: animationController, // Provide your animation controller
  child: YourWidget(), // The widget you want to animate
)
```



Feel free to explore and experiment with the various animation methods available in the AnimateStyles class to bring your Flutter user interface to life with dynamic and interactive animations.

### Using the AnimateStyles Class

The AnimateStyles class provides a series of static methods, each returning a specific animated widget. These methods can be directly used in Flutter's build method to add animated effects to widgets in your application.

| Method Name | Return Type | Description |
| :- | :- | :- |
| bounce | ScaleTransition | Creates a bouncing animation, making the widget bounce from a smaller size to its original size. |
| flash | AnimatedBuilder | Creates a flashing effect, toggling the widget's opacity between fully opaque and fully transparent. |
| pulse | ScaleTransition | Creates a pulsing effect, slightly enlarging the widget and then returning to its original size. |
| rubberBand | AnimatedBuilder | Creates a rubber band effect, stretching the widget and then snapping it back. |
| shakeX | AnimatedBuilder | Creates a horizontal shaking animation, moving the widget back and forth horizontally. |
| shakeY | AnimatedBuilder | Creates a vertical shaking animation, moving the widget back and forth vertically. |
| headShake | AnimatedBuilder | Creates a head shake effect, slightly swaying the widget horizontally. |
| swing | RotationTransition | Creates a swinging effect, swinging the widget around its top center point. |
| tada | ScaleTransition | Creates a "Tada!" celebration effect, enlarging the widget and slightly rotating it. |
| wobble | AnimatedBuilder | Creates a wobbling effect, tilting and distorting the widget in different directions. |
| jello | AnimatedBuilder | Creates a jelly effect, distorting the widget horizontally. |
| heartBeat | ScaleTransition | Creates a heartbeat effect, rapidly enlarging and shrinking the widget. |
| backInDown | SlideTransition | Creates an animation that slides in from above and bounces back. |
| backInLeft | SlideTransition | Creates an animation that slides in from the left and bounces back. |
| backInRight | SlideTransition | Creates an animation that slides in from the right and bounces back. |
| backInUp | SlideTransition | Creates an animation that slides in from below and bounces back. |
| backOutDown | SlideTransition | Creates an animation that slides out downward and bounces back. |
| backOutLeft | SlideTransition | Creates an animation that slides out to the left and bounces back. |
| backOutRight | SlideTransition | Creates an animation that slides out to the right and bounces back. |
| backOutUp | SlideTransition | Creates an animation that slides out upward and bounces back. |
| bounceIn | ScaleTransition | Creates a bouncing in animation. |
| bounceInDown | SlideTransition | Creates a bouncing in animation from above. |
| bounceInLeft | SlideTransition | Creates a bouncing in animation from the left. |
| bounceInRight | SlideTransition | Creates a bouncing in animation from the right. |
| bounceInUp | SlideTransition | Creates a bouncing in animation from below. |
| bounceOut | ScaleTransition | Creates a bouncing out animation, shrinking the widget and bouncing it out of view. |
| bounceOutDown | SlideTransition | Creates a bouncing out animation downward. |
| bounceOutLeft | SlideTransition | Creates a bouncing out animation to the left. |
| bounceOutRight | SlideTransition | Creates a bouncing out animation to the right. |
| bounceOutUp | SlideTransition | Creates a bouncing out animation upward. |
| fadeIn | FadeTransition | Creates a fade-in effect, gradually making the widget opaque. |
| fadeInDown | SlideTransition | Creates a fade-in animation that also slides down. |
| fadeInDownBig | SlideTransition | Creates a fade-in animation that slides down a greater distance. |
| fadeInLeft | SlideTransition | Creates a fade-in animation that also slides to the left. |
| fadeInLeftBig | SlideTransition | Creates a fade-in animation that slides to the left a greater distance. |
| fadeInRight | SlideTransition | Creates a fade-in animation that also slides to the right. |
| fadeInRightBig | SlideTransition | Creates a fade-in animation that slides to the right a greater distance. |
| fadeInUp | SlideTransition | Creates a fade-in animation that also slides up. |
| fadeInUpBig | SlideTransition | Creates a fade-in animation that slides up a greater distance. |
| `fadeOut` | `FadeTransition` | Creates a fade-out effect, gradually making the widget transparent. |
| `fadeOutDown` | `SlideTransition` | Creates a fade-out animation that also slides down. |
| `fadeOutDownBig` | `SlideTransition` | Creates a fade-out animation that slides down a greater distance. |
| `fadeOutLeft` | `SlideTransition` | Creates a fade-out animation that also slides to the left. |
| `fadeOutLeftBig` | `SlideTransition` | Creates a fade-out animation that slides to the left a greater distance. |
| `fadeOutRight` | `SlideTransition` | Creates a fade-out animation that also slides to the right. |
| `fadeOutRightBig` | `SlideTransition` | Creates a fade-out animation that slides to the right a greater distance. |
| `fadeOutUp` | `SlideTransition` | Creates a fade-out animation that also slides up. |
| `fadeOutUpBig` | `SlideTransition` | Creates a fade-out animation that slides up a greater distance. |
| `flipInX` | `AnimatedBuilder` | Creates a flip-in animation along the X-axis. |
| `flipInY` | `AnimatedBuilder` | Creates a flip-in animation along the Y-axis. |
| `flipOutX` | `AnimatedBuilder` | Creates a flip-out animation along the X-axis. |
| `flipOutY` | `AnimatedBuilder` | Creates a flip-out animation along the Y-axis. |
| `lightSpeedInRight` | `AnimatedBuilder` | Creates a light speed in animation, where the widget quickly enters and slows to a stop. |
| `lightSpeedInLeft` | `AnimatedBuilder` | Creates a light speed in animation, where the widget quickly enters from the left and slows to a stop. |
| `lightSpeedOutRight` | `AnimatedBuilder` | Creates a light speed out animation, where the widget quickly exits to the right. |
| `lightSpeedOutLeft` | `AnimatedBuilder` | Creates a light speed out animation, where the widget quickly exits to the left. |
| `rotateIn` | `AnimatedBuilder` | Creates a rotating in animation. |
| `rotateInDownLeft` | `AnimatedBuilder` | Creates a rotating in animation from the bottom left corner. |
| `rotateInDownRight` | `AnimatedBuilder` | Creates a rotating in animation from the bottom right corner. |
| `rotateInUpLeft` | `AnimatedBuilder` | Creates a rotating in animation from the top left corner. |
| `rotateInUpRight` | `AnimatedBuilder` | Creates a rotating in animation from the top right corner. |
| `rotateOut` | `AnimatedBuilder` | Creates a rotating out animation. |
| `rotateOutDownLeft` | `AnimatedBuilder` | Creates a rotating out animation to the bottom left corner. |
| `rotateOutDownRight` | `AnimatedBuilder` | Creates a rotating out animation to the bottom right corner. |
| `rotateOutUpLeft` | `AnimatedBuilder` | Creates a rotating out animation to the top left corner. |
| `rotateOutUpRight` | `AnimatedBuilder` | Creates a rotating out animation to the top right corner. |
| `slideInDown` | `SlideTransition` | Creates a sliding in animation from above. |
| `slideInLeft` | `SlideTransition` | Creates a sliding in animation from the left. |
| `slideInRight` | `SlideTransition` | Creates a sliding in animation from the right. |
| `slideInUp` | `SlideTransition` | Creates a sliding in animation from below. |
| `slideOutDown` | `SlideTransition` | Creates a sliding out animation downward. |
| `slideOutLeft` | `SlideTransition` | Creates a sliding out animation to the left. |
| `slideOutRight` | `SlideTransition` | Creates a sliding out animation to the right. |
| `slideOutUp` | `SlideTransition` | Creates a sliding out animation upward. |
| `zoomIn` | `ScaleTransition` | Creates a zooming in animation, where the widget enlarges from small to large. |
| `zoomInDown` | `ScaleTransition` | Creates a zooming in animation that also slides down. |
| `zoomInLeft` | `ScaleTransition` | Creates a zooming in animation that also slides from the left. |
| `zoomInRight` | `ScaleTransition` | Creates a zooming in animation that also slides from the right. |
| `zoomInUp` | `ScaleTransition` | Creates a zooming in animation that also slides from below. |
| `zoomOut` | `ScaleTransition` | Creates a zooming out animation, where the widget shrinks from large to small. |
| `zoomOutDown` | `AnimatedBuilder` | Creates a zooming out animation that also slides down. |
| `zoomOutLeft` | `AnimatedBuilder` | Creates a zooming out animation that also slides to the left. |
| `zoomOutRight` | `AnimatedBuilder` | Creates a zooming out animation that also slides to the right. |
| `zoomOutUp` | `AnimatedBuilder` | Creates a zooming out animation that also slides up. |


![alt text](assets/example_vVU5ImxxqS.gif)

#### Importing the Library

First, make sure you have added the easy_animations library as a dependency in your Flutter project.

```dart
import 'package:easy_animations/easy_animations.dart';
```

#### Example: Using Bounce Animation

The following example demonstrates how to add a "bounce" animation to a text widget.


```dart
import 'package:flutter/material.dart';
import 'package:easy_animations/easy_animations.dart';

class BounceTextExample extends StatefulWidget {
  const BounceTextExample({super.key});

  @override
  State<BounceTextExample> createState() => _BounceTextExampleState();
}

class _BounceTextExampleState extends State<BounceTextExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bounce Animation Example'),
      ),
      body: Center(
        // 使用 AnimateStyles.bounce 方法
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimateStyles.bounce(
                _controller,
                const Text(
                  'Bounce!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

In this example, we first create an AnimationController that controls the animation playback. Then, we use the AnimateStyles.bounce method and pass the animation controller and the widget to be animated (in this case, a text widget) as parameters. This way, the text widget will have a bouncing animation effect.

