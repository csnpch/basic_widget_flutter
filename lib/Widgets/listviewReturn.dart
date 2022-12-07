import 'package:flutter/material.dart';
import 'dart:async';

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
      appBar: AppBar(
        title: Text("App"), // or widget.title
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add),
          )
        ],
        backgroundColor: Colors.pink,
      ),
      drawer: Container(
        width: 250,
        color: Colors.red,
      ),
      body: SafeArea(
          child: ListView(
            children: getData(6),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );

  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (int i = 0; i < count; i++) {
      data.add(
          ListTile(
            title: Text("รายการที่ ${i + 1}", style: TextStyle(fontSize: 20)),
            subtitle: Text("เมื่อไหร่จะไปถึงฝัน ${i + 1}", style: TextStyle(fontWeight: FontWeight.w700)),
          )
      );
    }
    return data;
  }

}
