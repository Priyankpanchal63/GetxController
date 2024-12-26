

import 'package:get/get.dart';

class CounterCtrl extends GetxController{
  var counter=0.obs;

  void increment()=>counter++;
  void decrement()=>counter--;
}