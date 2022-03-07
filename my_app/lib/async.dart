import 'dart:async';
import 'dart:io';
class Async {
  void asynctest2() async {
    print("method begin");
    print(DateTime.now().toString());
    print("data1 start");
    print(await asyncFunc("data1", 3));
    print("data2 start");
    print(await asyncFunc("data2", 2));
    print("data3 start");
    print(await asyncFunc("data3", 1));
  }
  // timeの時間分スリープし、その後現在時間を返す関数
  Future<String> asyncFunc(String name, int time) async {
    return Future.delayed(Duration(seconds: time), () {
      return name + ":" + DateTime.now().toString();
    });
  }
}
