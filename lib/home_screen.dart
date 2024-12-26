import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatem/counterController.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterCtrl ctrl=Get.put(CounterCtrl());
  @override
  Widget build(BuildContext context) {
    print('rebuld');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx State managment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text("Counter:${ctrl.counter}")),
            Column(
              children: [
                ElevatedButton(onPressed: ctrl.increment, child: Text("Increment")),SizedBox(height: 10,),
                ElevatedButton(onPressed: ctrl.decrement, child: Text("Decrement"))
              ],
            )
          ],
        ),
      ),

    );
  }
}
