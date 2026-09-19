import 'package:flutter/widgets.dart';
import 'package:flutter_easy_animations/flutter_easy_animations.dart';
import 'package:flutter_test/flutter_test.dart';

const Key childKey = ValueKey<String>('child');

Widget host(
  Widget child, {
  bool disableAnimations = false,
  TextDirection textDirection = TextDirection.ltr,
}) {
  return Directionality(
    textDirection: textDirection,
    child: MediaQuery(
      data: MediaQueryData(disableAnimations: disableAnimations),
      child: Center(child: child),
    ),
  );
}

const Widget target = SizedBox(key: childKey, width: 40, height: 20);

double? opacityOf(WidgetTester tester) {
  final finder = find.ancestor(
    of: find.byKey(childKey),
    matching: find.byType(Opacity),
  );
  if (finder.evaluate().isEmpty) {
    return null;
  }
  return tester.widget<Opacity>(finder.first).opacity;
}

void main() {
  testWidgets('every style renders its child across the whole timeline', (
    tester,
  ) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    for (final style in AnimateStyle.values) {
      await tester.pumpWidget(
        host(AnimateStyled(style: style, animation: controller, child: target)),
      );

      for (final t in const <double>[0, 0.25, 0.5, 0.75, 1]) {
        controller.value = t;
        await tester.pump();
        expect(tester.takeException(), isNull, reason: '${style.name} at $t');
        expect(
          find.byKey(childKey),
          findsOneWidget,
          reason: '${style.name} at $t',
        );
      }
    }
  });

  testWidgets('fadeIn starts invisible and ends opaque', (tester) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      host(
        AnimateStyled(
          style: AnimateStyle.fadeIn,
          animation: controller,
          child: target,
        ),
      ),
    );

    expect(opacityOf(tester), 0);

    controller.value = 1;
    await tester.pump();
    expect(opacityOf(tester), isNull);
  });

  testWidgets('an effect that only changes opacity adds no Transform', (
    tester,
  ) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      host(
        AnimateStyled(
          style: AnimateStyle.fadeIn,
          animation: controller,
          child: target,
        ),
      ),
    );
    controller.value = 0.5;
    await tester.pump();

    expect(
      find.ancestor(of: find.byKey(childKey), matching: find.byType(Transform)),
      findsNothing,
    );
  });

  group('reduced motion', () {
    testWidgets('settles an entrance into its final state', (tester) async {
      final controller = AnimationController(
        vsync: tester,
        duration: const Duration(seconds: 1),
      );
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        host(
          AnimateStyled(
            style: AnimateStyle.fadeIn,
            animation: controller,
            child: target,
          ),
          disableAnimations: true,
        ),
      );

      expect(opacityOf(tester), isNull);
      expect(find.byKey(childKey), findsOneWidget);
    });

    testWidgets('hides an exit outright', (tester) async {
      final controller = AnimationController(
        vsync: tester,
        duration: const Duration(seconds: 1),
      );
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        host(
          AnimateStyled(
            style: AnimateStyle.backOutDown,
            animation: controller,
            child: target,
          ),
          disableAnimations: true,
        ),
      );

      expect(opacityOf(tester), 0);
    });

    testWidgets('can be opted out of', (tester) async {
      final controller = AnimationController(
        vsync: tester,
        duration: const Duration(seconds: 1),
      );
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        host(
          AnimateStyled(
            style: AnimateStyle.fadeIn,
            animation: controller,
            respectReducedMotion: false,
            child: target,
          ),
          disableAnimations: true,
        ),
      );

      expect(opacityOf(tester), 0);
    });
  });

  testWidgets('works without a MediaQuery ancestor', (tester) async {
    final controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: AnimateStyled(
          style: AnimateStyle.bounce,
          animation: controller,
          child: target,
        ),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.byKey(childKey), findsOneWidget);
  });
}
