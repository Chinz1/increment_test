import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/counter_display_widget.dart';

main() {
  testWidgets('CounterWidget should have a text and a number',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CounterDisplay(number: 5),
      ),
    );

    expect(find.text('CONTAGEM'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });
}

