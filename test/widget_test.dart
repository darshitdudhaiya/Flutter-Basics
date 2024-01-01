import 'package:demo/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Calculator Test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key("Result")), findsOneWidget);
    expect(find.byKey(const Key("InputField1")), findsOneWidget);
    expect(find.byKey(const Key("InputField2")), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.add), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.minus), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.multiply), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);

    await tester.enterText(find.byKey(const Key("InputField1")), "10");
    await tester.enterText(find.byKey(const Key("InputField2")), "2");

    await tester.tap((find.byIcon(CupertinoIcons.add)));

    expect(find.text("12"), findsOneWidget);
  });
}
