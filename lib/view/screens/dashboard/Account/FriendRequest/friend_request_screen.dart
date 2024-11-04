import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/FriendRequest/friend_request_container.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class friendrequestscreen extends StatefulWidget {
  const friendrequestscreen({super.key});

  @override
  State<friendrequestscreen> createState() => _friendrequestscreenState();
}

class _friendrequestscreenState extends State<friendrequestscreen> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [backgroundLight, backgroundDark])),
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              extendBody: true,
              appBar: PreferredSize(
                  preferredSize: Size(Get.width * 0.02, Get.height * 0.05),
                  child: appbarWidget(
                    leadingIcon: CircleAvatar(
                      radius: Get.width * 0.041,
                      backgroundColor: TextFieldColor,
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          'assets/images/backarrow.png',
                          height: Get.height * 0.02,
                        ),
                      ),
                    ),
                    title: 'Request',
                   
                  )),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075, vertical: Get.height * 0.02),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        friendrequestcontainer(),
                        SizedBox(
                          height: 20,
                        ),
                        friendrequestcontainer(),
                        SizedBox(
                          height: 20,
                        ),
                        friendrequestcontainer(),
                        SizedBox(
                          height: 20,
                        ),
                        friendrequestcontainer(),
                      ],
                    ),
                  )
                ]),
              ),
            )));
  }
}
