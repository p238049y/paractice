import 'package:flutter/material.dart';
import 'package:my_app/hello_world/TestPage2.dart';
import 'package:my_app/hello_world/TestPage3.dart';
import 'package:url_launcher/url_launcher.dart';
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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = '偶数';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const[
          Icon(Icons.create),
          Text('Hello World'),
        ],)
      ),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      body: Center(
        child: TestPage1(),
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
      floatingActionButton: FloatingActionButton(
        key: const Key('increment'),
        onPressed: () => {
          _incrementCounter(),
          print('押した')
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
