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
  var postList = [
    {
      "title": "Sample title 1",
      "color": Colors.green,
    },
    {
      "title": "Sample title 2",
      "color": Colors.redAccent,
    },
    {
      "title": "Sample title 3",
      "color": Colors.amber,
    },
    {
      "title": "Sample title 4",
      "color": Colors.teal,
    },
    {
      "title": "Sample title 5",
      "color": Colors.blueAccent,
    },                
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test title"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
          ),
        children: [
            postController(number: "1", colorData: Colors.red),          
            postController(number: "2", colorData: Colors.pink),          
            postController(number: "3", colorData: Colors.purple),          
            postController(number: "4", colorData: Colors.green),          
            postController(number: "5", colorData: Colors.black),          
            postController(number: "6", colorData: Colors.blue),          
        ],
      )
    );
    }

  Widget postController({String number = "0", Color colorData = Colors.amber}) {
    return Container(
            height: 200,
            color: colorData,
            child: Center(child: Text("Box $number")),
          );
  }
}
