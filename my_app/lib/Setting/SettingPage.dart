import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  // const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('設定画面'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: '名前',
              ),
              maxLength: 30,
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return '';
              //   }
              //   return null;
              // }
              autofocus: true,
            ), 
            const TextField(
              decoration: InputDecoration(
                hintText: 'ふりがな',
              ),
              maxLength: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'メールアドレス',
              ),
              maxLength: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'パスワード',
              ),
            ),
            TextButton(
              child: const Text('ホームに戻る'),
              onPressed: () { 
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )
    );
  }

}