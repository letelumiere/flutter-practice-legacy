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
  var count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Title"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header Part"),
            ),
            ListTile(
              title: Text("Menu 1"),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 50, top: 50),
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 100, top: 100),
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 150, top: 150),
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(left: 200, top: 200),
              color: Colors.blueGrey,
            ),                                                
          ],
          )
      )
    );
  }
}