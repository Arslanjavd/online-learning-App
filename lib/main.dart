import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/modules/visibility_practise/vis_pre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: VisibilityPractice(),
    );
  }
}
