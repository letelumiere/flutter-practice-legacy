import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Test App"),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(115),
            color:  Colors.blueAccent,
            child: const Text("this is SecondView."),
          )
        ),
      )
    );
  }
}