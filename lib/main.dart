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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.pink,
                    ),

                  ]
                )
              )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.purple,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.indigo,
                    ),

                  ]
                )
              )
            ),
          ]
        ),
      ),
    );
  }
}