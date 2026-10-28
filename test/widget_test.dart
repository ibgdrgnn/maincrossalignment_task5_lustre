import 'package:flutter_test/flutter_test.dart';

import 'package:maincrossalignment_task5_lustre/main.dart';

void main() {
  testWidgets('alignment examples show Row and Column layouts', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('LUSTRE_TASK 5'), findsOneWidget);

    const exampleTitles = [
      'MainAxisAlignment.center',
      'MainAxisAlignment.spaceAround',
      'MainAxisAlignment.spaceBetween',
      'MainAxisAlignment.spaceEvenly',
      'MainAxisAlignment.start',
      'MainAxisAlignment.end',
      'CrossAxisAlignment.start',
      'CrossAxisAlignment.end',
      'CrossAxisAlignment.baseline',
      'CrossAxisAlignment.center',
      'CrossAxisAlignment.stretch',
    ];

    for (final title in exampleTitles) {
      await tester.ensureVisible(find.text(title).first);
      await tester.pumpAndSettle();
      await tester.tap(find.text(title).first);
      await tester.pumpAndSettle();

      expect(find.text('Row'), findsOneWidget);
      expect(find.text('Column'), findsOneWidget);
      expect(tester.takeException(), isNull);

      await tester.tap(find.text('Column'));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      await tester.pageBack();
      await tester.pumpAndSettle();
    }
  });
}
