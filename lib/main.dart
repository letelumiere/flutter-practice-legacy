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
  final postList = [
    {
      "number": "1",
      "color": Colors.amber,
    },
    {
      "number": "2",
      "color": Colors.deepOrange,
    },
    {
      "number": "3",
      "color": Colors.blueAccent,
    },
    {
      "number": "4",
      "color": Colors.greenAccent,
    },
    {
      "number": "5",
      "color": Colors.yellowAccent,
    },
    {
      "number": "6",
      "color": Colors.lightBlue,
    },
    {
      "number": "7",
      "color": Colors.redAccent,
    },
    {
      "number": "8",
      "color": Colors.cyanAccent,
    },  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("Test Title"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 12.0, 
          ),
          itemCount: postList.length,
          itemBuilder: (BuildContext con, int index) {
            return postContainer(
              number: postList[index]["number"] as String, 
              colorData: postList[index]["color"] as Color, 
            );
          },
      ),
    );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
          height : 200,
          color: colorData,
          padding: EdgeInsets.all(20),
          child: Center(child: Text("Box $number")),
    );
  }
}