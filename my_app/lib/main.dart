import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/hello_world/TestPage2.dart';
import 'package:my_app/hello_world/TestPage3.dart';
import 'package:my_app/hello_world/TestPage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          "/test1": (BuildContext context) => TestPage1(),
          "/test2": (BuildContext context) => TestPage2(),
          "/test3": (BuildContext context) => TestPage3(),
        },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;

  _play() async {
    setState(() {
      _animationController.forward();
    });
  }

  _stop() async {
    setState(() {
      _animationController.stop();
    });
  }

  _reverse() async {
    setState(() {
      _animationController.reverse();
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = _animationController.drive(Tween(begin: 0.0, end: 2.0 * pi));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(children: const[
            Icon(Icons.create),
            Text('Hello World'),
          ],)
        ),
        drawer: Drawer(
          child: Column(
            children: const [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("ホーム"),
              ),
              ListTile(
                leading: Icon(Icons.menu_book),
                title: Text("メニュー"),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text("マップ"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("設定"),
              ),
            ]),
          ),
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, _) {
              return Transform.rotate(
                angle: _animation.value, child: const Icon(Icons.cached, size: 100)
              );
            }
          ),
          // child: TestPage1(),
          // child: IconButton(
          //   icon: const Icon(Icons.open_in_browser),
          //   onPressed: () async{
          //     String url = Uri.encodeFull('https://www.google.co.jp');
          //     if (await canLaunch(url)) {
          //       await launch(url);
          //     }
          //   }
          // ),
        ),
        floatingActionButton: 
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            FloatingActionButton(
              onPressed: _play, 
              child: const Icon(Icons.arrow_forward)
            ),
            FloatingActionButton(
              onPressed: _stop, 
              child: const Icon(Icons.pause)
            ),
            FloatingActionButton(
              onPressed: _reverse, 
              child: const Icon(Icons.arrow_back)
            ),
          ])
      )
    );
  }
}
