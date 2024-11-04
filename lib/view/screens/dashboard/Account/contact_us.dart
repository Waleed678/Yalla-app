import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class contactus extends StatefulWidget {
  const contactus({super.key});

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
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
                  preferredSize: Size(Get.width * 0.02, Get.height * 0.07),
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
                    title: 'Contact Us',
                    actions: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            radius: Get.width * 0.041,
                            backgroundColor: TextFieldColor,
                            child: InkWell(
                                onTap: () {
                                  Get.to(notification());
                                },
                                child: Image.asset('assets/images/Icon.png',
                                    height: 20)),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: CircleAvatar(
                            radius: Get.width * 0.041,
                            backgroundImage:
                                AssetImage('assets/images/profilepic.png'),
                          ),
                        ),
                      ),
                    ],
                  )),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
                child: Column(children: [
                  Lottie.asset('assets/lottie_files/contact-us.json',
                      height: 300, width: 400, fit: BoxFit.cover),
                  SizedBox(
                    height: 50,
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
