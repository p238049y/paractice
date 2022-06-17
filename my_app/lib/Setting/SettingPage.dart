import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  // const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('設定画面'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                hintText: '名前',
              ),
              autofocus: true,
            ), 
            TextField(
              decoration: InputDecoration(
                hintText: 'ふりがな',
              ),
            ),
          ],
        ),
      )
      //   Center(child: TextButton(child: const Text('ホームに戻る'),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // )),
    );
  }

}