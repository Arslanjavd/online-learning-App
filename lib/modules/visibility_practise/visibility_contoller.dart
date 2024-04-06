import 'dart:developer';

import 'package:get/get.dart';

class CustomController extends GetxController {
  bool isVisible = true;
  bool isVisible2 = true;
  setVisibility(bool value) {
    isVisible = value;
    log(isVisible.toString());
    update();
  }

  setVisibility2(bool value) {
    isVisible2 = value;
    log(isVisible2.toString());
    update();
  }
}
