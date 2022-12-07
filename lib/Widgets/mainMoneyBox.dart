// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import './Components/MoneyBox.dart';

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

  @override
  Widget build(BuildContext context) {

    Color randomColor() {
      var listColors = [Colors.purple, Colors.blue, Colors.brown, Colors.pink, Colors.green];
      return listColors[Random().nextInt(4)];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Component Widget"), // or widget.title
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    // or use Padding(padding: const EdgeInsets.all(20), child: widget),
                    margin: const EdgeInsets.all(20),
                    child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 12,
                        children: [
                          for (int i = 0; i < 16; i++)
                            MoneyBox("${i+1}", 20 + i+1.42, randomColor(), 120)
                        ]),
                  ),
                ),
                Container(
                  // or use Padding(padding: const EdgeInsets.all(20), child: widget),
                  margin: const EdgeInsets.all(20),
                  child: Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 12,
                      children: [
                        for (int i = 0; i < 16; i++)
                          MoneyBox("Test ${i+1}", 20224222424 + i+142.21241242, randomColor(), 120),
                      ]),
                ),
              ]
          ),
        ),
      ),
    );

  }

}
