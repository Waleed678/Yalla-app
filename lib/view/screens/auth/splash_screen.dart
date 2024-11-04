import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/onboarding_screen.dart';
import 'package:yalla_app/view/screens/auth/splash_controller.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.to(OnboardingScreen());
        },
        child: Container(
          height: 1000,
          width: Get.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [backgroundLight, backgroundDark])),
          child: Center(
              child: Text(
            'YALLA GAME',
            style: TextStyles.h1,
          )),
        ),
      ),
    );
  }
}
