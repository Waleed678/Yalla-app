import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';

class BottomNavigation extends GetView<BottomNavigationController> {
   BottomNavigation({Key? key}) : super(key: key);

    final BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 30, // Blur radius
              offset: Offset(0, 3), // Offset in the x, y direction
            ),
          ],
        ),
        height: Get.height * 0.090,
        margin:
            EdgeInsets.symmetric(vertical: Get.height * 0.01, horizontal: Get.width * 0.045),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: TextFieldColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/chat@3x.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/chat@3x.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/friends@3x.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/friends@3x.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/trophy@3x.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/trophy@3x.png',
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: BottomBarUnSelectedIcon(
                  iconPath: 'assets/images/user@3x.png',
                ),
                activeIcon: BottomBarSelectedIcon(
                  iconPath: 'assets/images/user@3x.png',
                ),
              ),
            ],
            currentIndex: controller.currentPage.value,
            onTap: (index) {
              controller.changePage(index);
            },
          ),
        ),
      ),
    );
  }
}

class BottomBarSelectedIcon extends StatelessWidget {
  const BottomBarSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow color
                  spreadRadius: 5, // spread radius
                  blurRadius: 5, // blur radius
                  offset: Offset(0, 1), 
          )
        ]
      ),
      child: CircleAvatar(
        radius: Get.width * 0.055,
        backgroundColor: Colors.black.withOpacity(0.1),
        child: Image.asset(
          iconPath ?? '',
          height: Get.height * 0.025,
        ),
      ),
    );
  }
}

class BottomBarUnSelectedIcon extends StatelessWidget {
  const BottomBarUnSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);

  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath ?? '',
      height: Get.height * 0.025,
    );
  }
}
