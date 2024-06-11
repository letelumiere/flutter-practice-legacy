import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("Test Title"),
      ),
      body: GridView(
//        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(number: "1", colorData: Colors.white),
          postContainer(number: "2", colorData: Colors.blueGrey),
          postContainer(number: "3", colorData: Colors.blue),
          postContainer(number: "4", colorData: Colors.amber),
          postContainer(number: "5", colorData: Colors.grey),
          postContainer(number: "6", colorData: Colors.green),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),
          postContainer(number: "7", colorData: Colors.black),

         ],
      )
    );
  }

  Widget postContainer({String number = "a", Color colorData = Colors.amber}) {
    return Container(
          height : 200,
          color: colorData,
          padding: EdgeInsets.all(20),
          child: Center(child: Text("Box $number")),
        );
  }
}