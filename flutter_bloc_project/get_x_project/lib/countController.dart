import 'package:get/get.dart';

class CounController extends GetxController{
  int _counter = 0;
  int get counter => _counter;

  void increase(){
    _counter++;
    update();
  }

  void decrease(){
    _counter--;
    update();
  }
} 