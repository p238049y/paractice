import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

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
              autofocus: true,
            ), 
            const TextField(
              decoration: InputDecoration(
                hintText: 'ふりがな',
              ),
              maxLength: 30,
            ),
            const TextField(
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'メールアドレス',
              ),
              maxLength: 30,
              // validator: (value) {
              //   if ((value == null) || !EmailValidator.validate(value)) {
              //     return 'Emailが不正です';
              //   }
              // },
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'パスワード',
              ),
              maxLength: 30,
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