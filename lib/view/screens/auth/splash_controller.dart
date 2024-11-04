import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:yalla_app/view/screens/auth/onboarding_screen.dart';
import 'package:yalla_app/view/screens/auth/sign_in.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      Get.to(OnboardingScreen());
    });
  }

  void navigateToOnboardingScreen() {
    Get.to(OnboardingScreen());
  }
}
