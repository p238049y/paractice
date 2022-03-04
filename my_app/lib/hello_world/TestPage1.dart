import 'package:flutter/material.dart';
import 'package:my_app/hello_world/TestPage2.dart';

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test1"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => {
            Navigator.of(context).pushNamed("/test2")
          },
          child: const Text('進む', style: TextStyle(fontSize: 80))
        )
      )
    );
  }
}