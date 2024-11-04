import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/utils/body_decoder.dart';
import 'package:yalla_app/bottomBar/bottom_navigation.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/Find_friend_add_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/chat/chat_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/my_friend_add_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/dotindicator.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class gamematedashboard extends StatefulWidget {
  @override
  _gamematedashboardState createState() => _gamematedashboardState();
}

class _gamematedashboardState extends State<gamematedashboard> {
  BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
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
              preferredSize: Size(Get.width * 0.02, Get.height * 0.07),
              child: appbarWidget(
                title: 'Game Mate',
                actions: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                          onTap: () {
                              Get.to(notification());
                            },
                        child: CircleAvatar(
                          radius: Get.width * 0.041,
                          backgroundColor: TextFieldColor,
                          child: Image.asset('assets/images/Icon.png',
                              height: 20),
                        ),
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
            child: Column(
              children: [
                CustomTextField(
                  validator: (p0) {},
                  obscureText: false,
                  hintText: 'search',
                  prefixIcon: Icon(Icons.search, size: 30, color: bordercolor),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: TextFieldColor),
                  constraints: BoxConstraints.expand(height: 50),
                  child: TabBar(
                    indicatorWeight: 0.1,
                    automaticIndicatorColorAdjustment: false,
                    tabs: [
                      Container(
                          width: 151,
                          height: 34,
                          decoration: BoxDecoration(
                            color: TextFieldColor,
                            boxShadow: [
                              BoxShadow(
                                color: border,
                                spreadRadius: 6,
                                blurRadius: 9,
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Tab(
                            child: Text('Find Friends'),
                          )),
                      Container(
                          width: 151,
                          height: 34,
                          decoration: BoxDecoration(
                              color: TextFieldColor,
                              boxShadow: [
                                BoxShadow(
                                  color: border,
                                  spreadRadius: 6,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30)),
                          child: Tab(
                            child: Text('My Friends'),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2),
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Get.to(findfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.02,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                shortbutton(
                                                    onTap: () {}, title: 'ADD'),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(findfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.02,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                shortbutton(
                                                    onTap: () {}, title: 'ADD'),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(findfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.02,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                shortbutton(
                                                    onTap: () {}, title: 'ADD'),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(findfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.01,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                shortbutton(
                                                    onTap: () {}, title: 'ADD'),
                                              ],
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

/////////////   MY FRIEND TAB  END /////////////////////////////////////////////////////////////////////

                      GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2),
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Get.to(myfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              Get.to(myfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

///////////////////////////////////////

                          InkWell(
                            onTap: () {
                              Get.to(myfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

//////////////////////////////////////////

                          InkWell(
                            onTap: () {
                              Get.to(myfriendaddscreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/images/pexelsgame@3x.png'),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 0),
                                  child: Container(
                                    height: 61,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                                bottomEnd: Radius.circular(10),
                                                bottomStart:
                                                    Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Profile Name',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: WhiteColor,
                                                        fontFamily:
                                                            'Montserrat- Medium')),
                                                Text('12 Mutual Friend',
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xffAAAAAA),
                                                        fontFamily:
                                                            'Montserrat- Regular')),
                                                Text(
                                                  'BATTLE GROUND',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily:
                                                          'Montserrat- SemiBold',
                                                      color: WhiteColor),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

/////////////////////////////////////////////
                        ],
                      ),
                    ],
                  ),
                ),

                ///chatscreen
                Padding(
                  padding: const EdgeInsets.only(bottom: 100, left: 250),
                  child: InkWell(
                    onTap: () {
                      Get.to(chatscreen());
                    },
                    child: Image.asset(
                      'assets/images/sms.png',
                      height: Get.height * 0.09,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
