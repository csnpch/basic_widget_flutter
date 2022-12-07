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
                Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 200,
                            color: Colors.red,
                          )
                      ),
                      Expanded(
                          child: Container(
                            height: 200,
                            color: Colors.green,
                          )
                      ),
                      Expanded(
                          child: Container(
                            height: 200,
                            color: Colors.blue,
                          )
                      ),
                    ]
                ),
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
