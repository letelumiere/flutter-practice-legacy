import 'package:flutter/material.dart';

import 'second.dart';

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
        title: const Text("Test App"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => const SecondView(),
          )),
          child: Container(
            padding: const EdgeInsets.all(115),
            color:  Colors.blueAccent,
            child: const Text("get Started"),
          )
        ),
      )
    );
  }
}