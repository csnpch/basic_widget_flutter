import 'package:flutter/material.dart';
import '../services/FoodMenu.dart';

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

  List<FoodMenu> listMenuFoods = [
    FoodMenu('Food 1', 5.45, 'foods_menu/pic1.jfif'),
    FoodMenu('Food 2', 1.25, 'foods_menu/pic2.jpg'),
    FoodMenu('Food 3', 9.99, 'foods_menu/pic3.jfif'),
  ];

  @override
  Widget build(BuildContext context) {

    var listColors = [Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue, Colors.red, Colors.green, Colors.blue];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Foods Menu"), // or widget.title
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: listMenuFoods.length,
          itemBuilder: (BuildContext context, int index) {

            FoodMenu foodItem = listMenuFoods[index];

            return ListTile(
              leading: Image.asset("assets/images/${foodItem.pathImg}"),
              title: Text(foodItem.name),
              subtitle: Text("ราคา ${foodItem.price} / ชิ้น"),
            );

          },
        ),
      ),
    );

  }

}
