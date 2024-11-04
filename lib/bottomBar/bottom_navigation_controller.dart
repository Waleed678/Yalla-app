// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class BottomNavigationController extends GetxController {
//   PageController pageController = PageController(initialPage: 0);

//   final currentPage = 0.obs;

//   changePage(value) {
//     currentPage.value = value;
//     pageController.jumpToPage(value);
//     update();
//   }

//   @override
//   void onClose() {
//     pageController.dispose();
//     super.onClose();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  late PageController pageController;
  final currentPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
    update();
  }

  changePage(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
    update();
  }
}