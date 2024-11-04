import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late PageController pageController;

  get forwardTapCount => null;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  final RxInt pageIndex = 0.obs;

  void changePageIndex(int val) {
    pageIndex.value = val;
    update();
  }

  void increaseForwardTapCount() {}
  
}

