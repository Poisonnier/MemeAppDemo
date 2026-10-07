import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:memeapp/main.dart';

void main() {
  testWidgets('MemeApp navbar redirection and content verification test', (WidgetTester tester) async {
    // 1. Build app and settle
    await tester.pumpWidget(const MemeApp());
    await tester.pumpAndSettle();

    // 2. Verify Home Page is shown with "Welcome to MemeApp, I guess?"
    expect(find.widgetWithText(AppBar, 'Home Page'), findsOneWidget);
    expect(find.text('Welcome to MemeApp, I guess?'), findsOneWidget);

    // 3. Test Redirection to Content Page
    await tester.tap(find.text('Content'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(AppBar, 'About MemeApp'), findsOneWidget);
    expect(find.textContaining('About MemeApp:'), findsOneWidget);

    // 4. Test Redirection to Dev Meme Page
    await tester.tap(find.text('Dev'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(AppBar, 'Developer Meme'), findsOneWidget);
    expect(find.textContaining('It works on my machine'), findsOneWidget);

    // 5. Test Redirection to Cat Meme Page
    await tester.tap(find.text('Cat'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(AppBar, 'Cat Meme'), findsOneWidget);
    expect(find.textContaining('keyboard'), findsOneWidget);

    // 6. Test Redirection to Student Meme Page
    await tester.tap(find.text('Student'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(AppBar, 'Student Meme'), findsOneWidget);
    expect(find.textContaining('Due tomorrow'), findsOneWidget);
  });
}
