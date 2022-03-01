import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  // テストケースをグループ化しておきますが、今回のように1ケースだとあまり意味はない
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), '0');
    });
    // テスト2:incrementをタップすると、Textが1になることを確認する
    test('increments the counter', () async {
      // タップ操作
      await driver.tap(buttonFinder);
      // Textの検証.
      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}