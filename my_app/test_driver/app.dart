import 'package:flutter_driver/driver_extension.dart';
import 'package:my_app/hello_world/main.dart' as app;

void main() {
    // 別プロセスのアプリケーションを起動できるようにするために拡張を有効にする
  enableFlutterDriverExtension();
  // アプリの起動
  app.main();
}