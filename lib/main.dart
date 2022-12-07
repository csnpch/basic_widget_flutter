import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './Components/MoneyBox.dart';
import './Models/Post.dart';


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


  Post ?_post;
  List dataPost = [];


  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    getPosts();
    print("InitState worked");
  }


  Future <void> getPosts() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    dataPost = postFromJson(response.body);
    print("dataPost[0].title = ${dataPost[0]?.title}");
  }


  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Build widget worked");

    Color randomColor() {
      var listColors = [Colors.purple, Colors.blue, Colors.brown, Colors.pink, Colors.green];
      return listColors[Random().nextInt(4)];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP"), // or widget.title
      ),
      body: FutureBuilder(
        future: getPosts(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: dataPost.map((e) => Column(
                  children: [
                    SizedBox(height: 20),
                    MoneyBox("${e.title}", 12.42, randomColor(), 120)
                  ],
                )).toList()
              ),
            );
          }

          return LinearProgressIndicator();
        }
      ),
    );
  }

}
