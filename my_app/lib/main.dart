import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text('You have pushed the button this many times:'),
        //       Text(
        //         '$_counter', 
        //         key: const Key('counter'),
        //         style: Theme.of(context).textTheme.headline4,
        //       ),
        //       if (_counter % 2 == 0) const Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
        //       if(_counter % 2 == 1) const Text('奇数です', style: TextStyle(fontSize: 20, color: Colors.red)),
        //   ],
        // ),
        child: IconButton(
          icon: const Icon(Icons.open_in_browser),
          onPressed: () async{
            String url = Uri.encodeFull('https://www.google.co.jp');
            if (await canLaunch(url)) {
              await launch(url);
            }
          }
        ),
      ),  
      floatingActionButton: FloatingActionButton(
        key: const Key('increment'),
        onPressed: () => {
          _incrementCounter(),
          print('押したね？')
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
