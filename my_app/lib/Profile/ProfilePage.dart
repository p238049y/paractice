import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('プロフィール画面'),
      ),
      body: Center(child: TextButton(child: const Text('ホームに戻る'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }

}