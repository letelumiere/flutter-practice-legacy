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
  String url = 
    "https://i.namu.wiki/i/AlSuUQ4sVbejb0biO_fPQngK__h41nPHepDRUdWv31-C1mTLlVIoFJU_ku0z5cZ2C-YtNsydw6C7MkunqRYuN_PJXIAmsIAmuCtJzKAFStdx4Oob6kqh-o_-B0_-yjVYrQxNMfD46Cja_on2Pnny0Q.webp";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test Title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image(
          height: 400,
          image: NetworkImage(
            url
          ),
          fit: BoxFit.fitHeight,
  
        )
      ),
    );
  }
}
