import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SwitchController extends GetxController {
  var isSwitched = false.obs;

  void toggleSwitch(bool value) {
    isSwitched.value = value;
  }
}
