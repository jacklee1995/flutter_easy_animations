import 'package:flutter/material.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Easy Animations Example',
      home: AnimateStylesExample(),
    );
  }
}

class AnimateStylesExample extends StatefulWidget {
  const AnimateStylesExample({super.key});

  @override
  State<AnimateStylesExample> createState() => _AnimateStylesExampleState();
}

class _AnimateStylesExampleState extends State<AnimateStylesExample>
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
    final animates = [
      AnimateStyles.bounce(
        _controller,
        const Text(
          'Bounce!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.flash(
        _controller,
        const Text(
          'Flash!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.pulse(
        _controller,
        const Text(
          'Pulse!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rubberBand(
        _controller,
        const Text(
          'Rubber Band!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.shakeX(
        _controller,
        const Text(
          'Shake X!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.shakeY(
        _controller,
        const Text(
          'Shake Y!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.headShake(
        _controller,
        const Text(
          'Head Shake!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.swing(
        _controller,
        const Text(
          'Swing!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.tada(
        _controller,
        const Text(
          'Tada!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.wobble(
        _controller,
        const Text(
          'Wobble!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.jello(
        _controller,
        const Text(
          'Jello!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.heartBeat(
        _controller,
        const Text(
          'Heart Beat!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backInDown(
        _controller,
        const Text(
          'Back In Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backInLeft(
        _controller,
        const Text(
          'Back In Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backInRight(
        _controller,
        const Text(
          'Back In Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backInUp(
        _controller,
        const Text(
          'Back In Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backOutDown(
        _controller,
        const Text(
          'Back Out Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backOutLeft(
        _controller,
        const Text(
          'Back Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backOutRight(
        _controller,
        const Text(
          'Back Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.backOutUp(
        _controller,
        const Text(
          'Back Out Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceInDown(
        _controller,
        const Text(
          'Bounce In Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceInLeft(
        _controller,
        const Text(
          'Bounce In Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceInRight(
        _controller,
        const Text(
          'Bounce In Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceInUp(
        _controller,
        const Text(
          'Bounce In Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceOut(
        _controller,
        const Text(
          'Bounce Out!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceOutDown(
        _controller,
        const Text(
          'Bounce Out Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceOutLeft(
        _controller,
        const Text(
          'Bounce Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceOutRight(
        _controller,
        const Text(
          'Bounce Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.bounceOutUp(
        _controller,
        const Text(
          'Bounce Out Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeIn(
        _controller,
        const Text(
          'Fade In!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInDown(
        _controller,
        const Text(
          'Fade In Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInDownBig(
        _controller,
        const Text(
          'Fade In Down Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInLeft(
        _controller,
        const Text(
          'Fade In Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInLeftBig(
        _controller,
        const Text(
          'Fade In Left Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInRight(
        _controller,
        const Text(
          'Fade In Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInRightBig(
        _controller,
        const Text(
          'Fade In Right Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInUp(
        _controller,
        const Text(
          'Fade In Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeInUpBig(
        _controller,
        const Text(
          'Fade In Up Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOut(
        _controller,
        const Text(
          'Fade Out!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutDown(
        _controller,
        const Text(
          'Fade Out Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutDownBig(
        _controller,
        const Text(
          'Fade Out Down Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutLeft(
        _controller,
        const Text(
          'Fade Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutLeftBig(
        _controller,
        const Text(
          'Fade Out Left Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutRight(
        _controller,
        const Text(
          'Fade Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutRightBig(
        _controller,
        const Text(
          'Fade Out Right Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutUp(
        _controller,
        const Text(
          'Fade Out Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.fadeOutUpBig(
        _controller,
        const Text(
          'Fade Out Up Big!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.flipInX(
        _controller,
        const Text(
          'Flip In X!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.flipInY(
        _controller,
        const Text(
          'Flip In Y!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.flipOutX(
        _controller,
        const Text(
          'Flip Out X!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.flipOutY(
        _controller,
        const Text(
          'Flip Out Y!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.lightSpeedInRight(
        _controller,
        const Text(
          'Light Speed In!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.lightSpeedInLeft(
        _controller,
        const Text(
          'Light Speed In!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.lightSpeedOutRight(
        _controller,
        const Text(
          'Light Speed Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.lightSpeedOutLeft(
        _controller,
        const Text(
          'light Speed Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateIn(
        _controller,
        const Text(
          'Rotate In!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateInDownLeft(
        _controller,
        const Text(
          'Rotate In Down Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateInDownRight(
        _controller,
        const Text(
          'Rotate In Down Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateInUpLeft(
        _controller,
        const Text(
          'Rotate In Up Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateInUpRight(
        _controller,
        const Text(
          'Rotate In Up Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateOut(
        _controller,
        const Text(
          'Rotate Out!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateOutDownLeft(
        _controller,
        const Text(
          'Rotate Out Down Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateOutDownRight(
        _controller,
        const Text(
          'Rotate Out Down Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateOutUpLeft(
        _controller,
        const Text(
          'Rotate Out Up Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.rotateOutUpRight(
        _controller,
        const Text(
          'Rotate Out Up Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideInDown(
        _controller,
        const Text(
          'Slide In Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideInLeft(
        _controller,
        const Text(
          'Slide In Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideInRight(
        _controller,
        const Text(
          'Slide In Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideInUp(
        _controller,
        const Text(
          'Slide In Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideOutDown(
        _controller,
        const Text(
          'Slide Out Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideOutLeft(
        _controller,
        const Text(
          'Slide Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideOutRight(
        _controller,
        const Text(
          'Slide Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.slideOutUp(
        _controller,
        const Text(
          'Slide Out Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomIn(
        _controller,
        const Text(
          'Zoom In!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomInDown(
        _controller,
        const Text(
          'Zoom In Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomInLeft(
        _controller,
        const Text(
          'Zoom In Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomInRight(
        _controller,
        const Text(
          'Zoom In Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomInUp(
        _controller,
        const Text(
          'Zoom In Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomOut(
        _controller,
        const Text(
          'Zoom Out!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomOutDown(
        _controller,
        const Text(
          'Zoom Out Down!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomOutLeft(
        _controller,
        const Text(
          'Zoom Out Left!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomOutRight(
        _controller,
        const Text(
          'Zoom Out Right!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      AnimateStyles.zoomOutUp(
        _controller,
        const Text(
          'Zoom Out Up!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyAnimation AnimateStyles Example'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: animates
              .map((e) => Center(
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
