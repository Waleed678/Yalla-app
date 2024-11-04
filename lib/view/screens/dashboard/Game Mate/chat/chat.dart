import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
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
                      radius: Get.width * 0.041,
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
                    title: 'Chat',
                  )),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045, vertical: Get.height * 0.02),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(children: [
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/aliquam.png',
                            height: Get.height * 0.05,
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          Text(
                            'Valentine Eagle',
                            style: TextStyles.category,
                          )
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/aliquam.png',
                                  height: Get.height * 0.06,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'Aliquam vitae metus tortor!',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '04:00 pm',
                                  style: TextStyles.h3,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 96),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 220,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: TextFieldColor),
                                child: Center(
                                  child: Text(
                                    'Efficitur pulvinar Desmond?',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat-Regular',
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('03:54 pm', style: TextStyles.h3)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/aliquam.png',
                                  height: Get.height * 0.06,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'Aliquam vitae metus tortor!',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '04:00 pm',
                                  style: TextStyles.h3,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 96),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 220,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: TextFieldColor),
                                child: Center(
                                  child: Text(
                                    'Efficitur pulvinar Desmond?',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat-Regular',
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('03:54 pm', style: TextStyles.h3)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/aliquam.png',
                                  height: Get.height * 0.06,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      'Aliquam vitae metus tortor!',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '04:00 pm',
                                  style: TextStyles.h3,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 96),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 220,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: TextFieldColor),
                                child: Center(
                                  child: Text(
                                    'Efficitur pulvinar Desmond?',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat-Regular',
                                        fontSize: 12,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text('03:54 pm', style: TextStyles.h3)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 62,
                        width: Get.width,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Type something...',
                            hintStyle: TextStyles.h3,
                            filled: true,
                            fillColor: TextFieldColor,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'assets/images/emoji.png',
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset('assets/images/galleryimage.png',
                                    height: 25),
                                SizedBox(width: 8),
                                Image.asset('assets/images/sendicon.png',
                                    height: 25),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            )));
  }
}
