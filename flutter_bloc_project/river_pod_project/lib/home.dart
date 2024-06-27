import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "riverPod Example",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: TestView(),
    );
  }
}

class TestView extends ConsumerWidget {
  TestView({Key? key}) : super(key: key);

  final counterProvider = StateNotifierProvider((ref) => Counter());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, ((prev,next){
      print("현재 상태 $prev, $next");
    }));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod 예제"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: ${count.toString()}"),
            TextButton(
              onPressed: () => ref.watch(counterProvider.notifier).increment(), 
              child: const Text("증가하기"),
            ),
          ],
        )
     ),
    );
  }
}

class Counter extends StateNotifier<int>{// 일부 로직을 같이 사용 하고 값을 읽고 수정 상태를 변경
  Counter() : super(0); 

  void increment() => state++;
}


class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod 예제"),
      ),
      body: Container(),
    );
  }
}