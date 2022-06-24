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
            TextField(
              controller: TextEditingController(text: '名前'),
            ), 
            TextField(
              controller: TextEditingController(text: 'ふりがな'),
            ),
            TextField(
              controller: TextEditingController(text: 'メールアドレス'),
              // maxLength: 30,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // validator: (value) {
              //   if ((value == null) || !EmailValidator.validate(value)) {
              //     return 'Emailが不正です';
              //   }
              // },
            ),
            TextField(
              controller: TextEditingController(text: 'パスワード'),
            ),
            TextButton(
              child: const Text('保存'),
              onPressed: () { 
                Navigator.pop(context);
              },
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