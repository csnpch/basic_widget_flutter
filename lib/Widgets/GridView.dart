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

    var listImgUrls = [
      'https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg',
      'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg',
      'https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Sophie-Turner.jpg',
      'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Neckertal_20150527-6384.jpg/640px-Neckertal_20150527-6384.jpg',
      'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg',
      'https://media.istockphoto.com/id/583809524/photo/alberta-wilderness-near-banff.jpg?s=612x612&w=0&k=20&c=hiI3ib9ibDxAgqEZEH09EO3JOw94v5xh6hzcuXGhO-M=',
    ];

    List<Widget> getDataImage() {
      List<Widget> data = [];
      for (int i = 0; i < listImgUrls.length; i++) {
        data.add(Image.network(listImgUrls[i]));
      }
      return data;
    }

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
          child: GridView.count(
            crossAxisCount: 3,
            children: getDataImage(),
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
