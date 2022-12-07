import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var listColors = [Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue];

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Layouts"), // or widget.title
      //   actions: <Widget>[
      //     IconButton(
      //       onPressed: () => {},
      //       icon: Icon(Icons.add),
      //     )
      //   ],
      // ), 1
      drawer: Container(
        width: 250,
        color: Colors.red,
      ),
      body: SafeArea(
          child: ListView(
              children: [
                Column(
                    children: const [
                      Text('Col1'),
                      Text('Col2'),
                      Text('Col3'),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Row1'),
                      Text('Row2'),
                      Text('Row3'),
                    ]
                )
              ]
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
