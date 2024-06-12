import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
      () => setState(() => _selectedIndex = _tabController.index));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("app bar"),
      ),
      body: _selectedIndex == 0 
        ? tabContainer(context, Colors.indigo, "Friends Tab")
        : _selectedIndex == 1
          ? tabContainer(context, Colors.amber[600] as Color, "Chat Tab")
          : tabContainer(context, Colors.blueGrey, "Setting Tab"),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(
                _selectedIndex ==0 ? Icons.person : Icons.person_2_outlined),
              text: "Freinds",
            ),
            Tab(
              icon: Icon(
                _selectedIndex ==0 ? Icons.chat : Icons.chat_outlined),
              text: "Chats",
            ),
            Tab(
              icon: Icon(
                _selectedIndex ==0 ? Icons.settings : Icons.settings_outlined),
              text: "Settings",
            ),          
            ],
        ),
      )
    );
  }

  Widget tabContainer(BuildContext context, Color tabColor, String tabText){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText, 
          style: const TextStyle(
            color: Colors.white
            ),
        ),
      ),
    );
  }
}