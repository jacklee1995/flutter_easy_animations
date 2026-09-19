// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/widgets.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('the 0.x static methods still animate their child', (
    tester,
  ) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: AnimateStyles.bounce(controller, const Text('Bounce')),
        ),
      ),
    );

    expect(find.text('Bounce'), findsOneWidget);

    controller.value = 0.40;
    await tester.pump();

    final transform = tester.widget<Transform>(
      find
          .ancestor(of: find.text('Bounce'), matching: find.byType(Transform))
          .first,
    );
    expect(transform.transform.getTranslation().y, closeTo(-30, 1e-9));
    expect(transform.transform.entry(1, 1), closeTo(1.1, 1e-9));
  });

  testWidgets('every 0.x method resolves to the same style as its name', (
    tester,
  ) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    final cases = <Widget Function(Animation<double>, Widget), AnimateStyle>{
      AnimateStyles.fadeInUpBig: AnimateStyle.fadeInUpBig,
      AnimateStyles.rotateOutDownLeft: AnimateStyle.rotateOutDownLeft,
      AnimateStyles.jackInTheBox: AnimateStyle.jackInTheBox,
      AnimateStyles.lightSpeedOutLeft: AnimateStyle.lightSpeedOutLeft,
      AnimateStyles.zoomOutRight: AnimateStyle.zoomOutRight,
    };

    for (final entry in cases.entries) {
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: entry.key(controller, const SizedBox())),
        ),
      );

      final styled = tester.widget<AnimateStyled>(find.byType(AnimateStyled));
      expect(styled.style, entry.value);
    }
  });
}
