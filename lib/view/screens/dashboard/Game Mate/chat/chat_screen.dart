import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/chat/Offline_chat_container.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/chat/Online_chat_container.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({super.key});

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
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
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
              backgroundColor: Colors.transparent,
              extendBody: true,
              appBar: PreferredSize(
                  preferredSize: Size(Get.width * 0.02, Get.height * 0.05),
                  child: appbarWidget(
                    leadingIcon: CircleAvatar(
                      radius: Get.width * 0.044,
                      backgroundColor: TextFieldColor,
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            'assets/images/backarrow.png',
                            height: Get.height * 0.02,
                          )),
                    ),
                    title: 'Game Mate',
                    
                  )),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045,vertical: Get.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      validator: (p0) {},
                      obscureText: false,
                      hintText: 'search',
                      prefixIcon:
                          Icon(Icons.search, size: 30, color: bordercolor),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text('Active', style: TextStyles.RoomTitle),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SizedBox(
                        height: 120,
                        child: ListView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/chat-pic2.png'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: WhiteColor,
                                                  width: 2.2),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Valentine',
                                    style: TextStyles.TextButton,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset('assets/images/aliquam.png'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: WhiteColor,
                                                  width: 2.2),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Anna',
                                    style: TextStyles.TextButton,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/chat-pic1.png'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: WhiteColor,
                                                  width: 2.2),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Alice',
                                    style: TextStyles.TextButton,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/chat-pic2.png'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: WhiteColor,
                                                  width: 2.2),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Robert',
                                    style: TextStyles.TextButton,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/chat-pic3.png'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: WhiteColor,
                                                  width: 2.2),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Rosalia',
                                    style: TextStyles.TextButton,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    Text('Recent Chat', style: TextStyles.RoomTitle),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return onlinechatcontainer();
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
