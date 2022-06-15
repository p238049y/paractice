import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  // const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マップ画面'),
      ),
      body: Center(child: TextButton(child: const Text('ホームに戻る'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }

}