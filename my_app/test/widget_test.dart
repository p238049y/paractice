// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // 画面を構築する
    await tester.pumpWidget(const MyApp());

    //0が書かれているWidgetが1つであることをテストする
    expect(find.text('0'), findsOneWidget);
    //1が書かれているWidgetがないことをテストする
    expect(find.text('1'), findsNothing);

    // アイコンが「+」のWidgetをタップする
    await tester.tap(find.byIcon(Icons.add));
    // Widgetツリーの再構築
    await tester.pump();

    //0が書かれているWidgetがないことをテストする
    expect(find.text('0'), findsNothing);
    //1が書かれているWidgetが1つであることをテストする
    expect(find.text('1'), findsOneWidget);
  });
}
