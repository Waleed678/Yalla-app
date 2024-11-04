import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/HomeScreen/homescreen.dart';
import 'package:yalla_app/bottomBar/HomeScreen/see_all.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/textFormField.dart';
import '../../view/screens/dashboard/notification/notification.dart';

class joinscreen extends StatefulWidget {
  const joinscreen({super.key});

  @override
  State<joinscreen> createState() => _joinscreenState();
}

class _joinscreenState extends State<joinscreen> {
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        appBar: PreferredSize(
            preferredSize: Size(Get.width * 0.02, Get.height * 0.05),
            child:
             appbarWidget(
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
              title: 'Home',

                          )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045, vertical: Get.height * 0.02),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 56,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: TextFieldColor),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/elitespecial@3x.png')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Room Title',
                        style: TextStyles.RoomTitle,
                      ),
                      Text(
                        '120+Joined',
                        style: TextStyles.h3,
                      ),
                      Text(
                        '85 Online',
                        style: TextStyles.Online,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: SizedBox(
                      height: 25,
                      width: Get.width * 0.4,
                      child: Material(
                        elevation: 15.0,
                        borderRadius: BorderRadius.circular(20),
                        color: TextFieldColor,
                        shadowColor: border,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: hintcolor,
                                size: 15,
                              ),
                              hintText: 'search',
                              hintStyle: TextStyles.hinttext,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: border),
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: WhiteColor,
                      size: 23,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/aliquam.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Aliquam',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  vitae metus tortor!',
                                style: TextStyles.TextButton)
                          ])),
                      Text(
                        '04:00 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/efficitur.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Eficitur',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  pulvinar Desmond?',
                                style: TextStyles.TextButton)
                          ])),
                      Text(
                        '03:54 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/aliquam2.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Aliquam',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  vitae metus tortor!',
                                style: TextStyles.TextButton)
                          ])),
                      Text('04:00 pm', style: TextStyles.ConsoleType)
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/efficitur3.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Eficitur',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  pulvinar Desmond?',
                                style: TextStyles.TextButton)
                          ])),
                      Text(
                        '03:54 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/efficitur.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Eficitur',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  pulvinar Desmond?',
                                style: TextStyles.TextButton)
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 7),
                        child: Image.asset(
                          'assets/images/efficitur-fullpic.png',
                          height: Get.height * 0.1,
                        ),
                      ),
                      Text(
                        '03:54 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/aliquam2.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Aliquam',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  vitae metus tortor!',
                                style: TextStyles.TextButton)
                          ])),
                      Text('04:00 pm', style: TextStyles.ConsoleType)
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/efficitur3.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Eficitur',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  pulvinar Desmond?',
                                style: TextStyles.TextButton)
                          ])),
                      Text(
                        '03:54 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Eficitur',
                            style: TextStyle(color: hintcolor),
                            children: [
                              TextSpan(
                                text: '  pulvinar Desmond?',
                                style: TextStyles.TextButton,
                              )
                            ],
                          ),
                        ),
                        Text('03:54 pm', style: TextStyles.ConsoleType),
                      ],
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      'assets/images/profilepic.png',
                      height: 55,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: [
                  Image.asset(
                    'assets/images/aliquam2.png',
                    height: 55,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Aliquam',
                              style: TextStyle(color: hintcolor),
                              children: [
                            TextSpan(
                                text: '  vitae metus tortor!',
                                style: TextStyles.TextButton)
                          ])),
                      Text(
                        '04:00 pm',
                        style: TextStyles.ConsoleType,
                      )
                    ],
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
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
                        Image.asset('assets/images/sendicon.png', height: 25),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
