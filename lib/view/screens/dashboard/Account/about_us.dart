import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class aboutus extends StatefulWidget {
  const aboutus({super.key});

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
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
                    title: 'About US',
                  )),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045, vertical: Get.height * 0.02),
                child: Column(children: [
                  Image.asset(
                    'assets/images/aboutus.png',
                    height: Get.height * 0.4,
                  ),
                  Text(
                    'Lorem Ipsum',
                    style: TextStyles.h2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Text(
                          'Lorem ipsum dolor is the lowest',
                          style: TextStyles.accounttext,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Dolor is the loream dolor is the lowest',
                          style: TextStyles.accounttext,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          'Dolor is the lowestLorem is the lowest',
                          style: TextStyles.accounttext,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Text(
                          'Lorem ipsum dolor is the lowest',
                          style: TextStyles.accounttext,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'YALLA GAME',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: WhiteColor),
                  )
                ]),
              ),
            )));
  }
}
