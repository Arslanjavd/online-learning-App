import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/modules/visibility_practise/visibility_contoller.dart';

class VisibilityPractice extends StatelessWidget {
  VisibilityPractice({super.key});
  // List a = [5, 4, 6];
  // List b = [5, 5, 5];
  final controller = Get.put(CustomController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            if (controller.isVisible)
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            if (controller.isVisible2) ...[
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.grey,
              // )
            ],
            ElevatedButton(
                onPressed: () {
                  controller.setVisibility(!controller.isVisible);
                },
                child: const Text("data")),
            ElevatedButton(
                onPressed: () {
                  controller.setVisibility2(!controller.isVisible2);
                },
                child: const Text("data2"))
          ],
        ),
      ),
    );
  }
}
