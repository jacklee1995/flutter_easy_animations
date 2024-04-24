import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';

void main() {
  testWidgets('bounce animation test', (WidgetTester tester) async {
    AnimationController controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: tester,
    );

    await tester.pumpWidget(MaterialApp(
      home: AnimateStyles.bounce(controller, const Text('Bounce')),
    ));

    controller.forward();

    await tester.pump();

    final scaleTextFinder = find.text('Bounce');
    final Transform transform = tester.widget(find.byType(Transform));
    expect(transform.transform.getMaxScaleOnAxis(), greaterThan(1.0));

    controller.dispose();
  });
}
