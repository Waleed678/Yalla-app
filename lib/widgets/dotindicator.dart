

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/widgets/onboarding_controller.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  final OnboardingController controller;
  const DotIndicator({Key? key, this.isActive = false, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: Get.height * 0.01,
      width: isActive
          ? Get.width * 0.04
          : Get.width * 0.06,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.white
            : Colors.purple,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}