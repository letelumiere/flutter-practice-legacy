import 'package:flutter/material.dart';
import 'package:project/notification.dart';
  
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  void initState() {
    FlutterLocalNotification.init();
    Future.delayed(
        const Duration(seconds: 3), 
        FlutterLocalNotification.requestNotificationPermisson()
      );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter App"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => FlutterLocalNotification.showNotification(),
          child: const Text("알림 보내기"),
        ),
      ),
    );
  }  
}