import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/onboarding_page.dart';
import 'package:yalla_app/view/screens/auth/sign_in.dart';
import 'package:yalla_app/view/screens/auth/splash_screen.dart';
import 'package:yalla_app/widgets/onboarding_controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [backgroundLight, backgroundDark])),
        child: Scaffold(
          body: GetBuilder<OnboardingController>(
            init: OnboardingController(), // Initialize the controller here
            builder: (controller) {
              return Container(
                height: 1000,
                width: Get.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [backgroundLight, backgroundDark])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      'YALLA GAME',
                      style: TextStyles.h1,
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    //Image.asset('assets/images/view-illuminated-@3x.png'),
                    Expanded(
                      flex: 1,
                      child: PageView.builder(
                        onPageChanged: controller.pageIndex,
                        controller: controller.pageController,
                        itemCount: onboardingContent.length,
                        itemBuilder: (context, index) => OnboardingPage(
                          content: onboardingContent[index],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Get.height * 0.05,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 0, bottom: 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: TextFieldColor,
                            child: IconButton(
                                onPressed: () {
                                  controller.pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                icon: Icon(Icons.arrow_back)),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          controller.pageIndex.value == 0
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(signin());
                                  },
                                  child: Text('Skip', style: TextStyles.h2),
                                )
                              : SizedBox(),
                          SizedBox(
                            width: 80,
                          ),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: TextFieldColor,
                            child: IconButton(
                                onPressed: () {
                                  controller.pageIndex.value == 0
                                      ? controller.pageController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.ease)
                                      : Get.to(signin());
                                },
                                icon: Icon(Icons.arrow_forward_rounded)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
