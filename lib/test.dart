import 'package:flutter/material.dart';

class TestView extends StatefulWidget{
  @override
  State<TestView> createState() => _TestViewState();

}

class _TestViewState extends State<TestView> {
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
        child: Center(
          child: Text("COUNT NUMBER : $count"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => count++ ),
          tooltip: 'test Tooltip',
          child: Icon(Icons.mouse),
        ),
    );
  }
}
