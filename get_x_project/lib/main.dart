import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/countController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CounController>(
                init: CounController(),
                builder: (_) => Text("current count: ${Get.find<CounController>().counter}"),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Get.find<CounController>().increase(),
                    child: const Text("증가"),
                  ),
                  TextButton(
                    onPressed: () => Get.find<CounController>().decrease(),
                    child: const Text("감소"),
                  ),                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
