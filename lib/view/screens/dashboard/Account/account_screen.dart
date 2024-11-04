import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/bottom_navigation.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/sign_in.dart';
import 'package:yalla_app/view/screens/dashboard/Account/FriendRequest/friend_request_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Account/about_us.dart';
import 'package:yalla_app/view/screens/dashboard/Account/contact_us.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class accountscreen extends StatefulWidget {
  const accountscreen({super.key});

  @override
  State<accountscreen> createState() => _accountscreenState();
}

class _accountscreenState extends State<accountscreen> {
  bool isSwitched = false;

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
              bottomNavigationBar: BottomNavigation(),
              backgroundColor: Colors.transparent,
              extendBody: true,
              appBar: PreferredSize(
                  preferredSize: Size(Get.width * 0.02, Get.height * 0.05),
                  child: appbarWidget(
                    title: 'Account',
                    
                  )),
              body: SingleChildScrollView(
                child: Column(children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Container(
                          color: TextFieldColor,
                          height: Get.height - 20,
                          width: Get.width,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 155, top: 25),
                        child: Container(
                          height: 122,
                          width: 122,
                          decoration: BoxDecoration(
                            border: Border.all(color: WhiteColor, width: 2.0),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/profilepic.png'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 230, top: 100),
                        child: Container(
                          width: Get.width * 0.08,
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextFieldColor,
                              border:
                                  Border.all(color: WhiteColor, width: 2.0)),
                          child: Center(
                              child: Image.asset(
                            'assets/images/edit-text.png',
                            height: Get.height * 0.02,
                          )),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 160, left: 145),
                        child: Text(
                          'Player Name',
                          style: TextStyles.PlayerName,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 200, left: 140),
                        child: Container(
                          width: 140,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Color(0xffBF9DDB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'Lorem@gmail.com',
                            style: TextStyles.containertext,
                          )),
                        ),
                      ),

                      ////////////////////////////////////////////////  CONTAINER  ////////////////////////

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.075,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /////////////////////////

                            Padding(
                              padding: const EdgeInsets.only(top: 250),
                              child: Column(
                                children: [
                                  Container(
                                    height: 62,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        color: TextFieldColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                                0.2), // Shadow color
                                            spreadRadius: 5, // Spread radius
                                            blurRadius: 7, // Blur radius
                                            offset: Offset(0,
                                                3), // Offset in the x, y direction
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                          'assets/images/notificationimg.png',
                                          height: Get.height * 0.05),

                                      // SizedBox(
                                      //   width: 20,
                                      // ),

                                      Expanded(
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '   Notification',
                                              style: TextStyles.personalInformation,
                                            ),
                                          ],
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 160,
                                      // ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Switch(
                                              activeTrackColor: Colors.green,
                                              activeColor: WhiteColor,
                                              value: isSwitched,
                                              onChanged: (value) {
                                                setState(() {
                                                  isSwitched = value;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                              
                                    ]),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  //////////  ABOUT US
                                  InkWell(
                                    onTap: () {
                                      Get.to(aboutus());
                                    },
                                    child: Container(
                                      height: 62,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.2), // Shadow color
                                              spreadRadius: 5, // Spread radius
                                              blurRadius: 7, // Blur radius
                                              offset: Offset(0,
                                                  3), // Offset in the x, y direction
                                            ),
                                          ],
                                          color: TextFieldColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            'assets/images/information.png',
                                            height: Get.height * 0.05,
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   About Us',
                                                  style:
                                                      TextStyles.personalInformation,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.arrow_forward_outlined,
                                                  size: 25,
                                                  color: WhiteColor,
                                                ),
                                               SizedBox(width: 7,),   
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  ///////////////  CONTACT US
                                  InkWell(
                                    onTap: () {
                                      Get.to(contactus());
                                    },
                                    child: Container(
                                      height: 62,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.2), // Shadow color
                                              spreadRadius: 5, // Spread radius
                                              blurRadius: 7, // Blur radius
                                              offset: Offset(0,
                                                  3), // Offset in the x, y direction
                                            ),
                                          ],
                                          color: TextFieldColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            'assets/images/contactus.png',
                                            height: Get.height * 0.05,
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   Contact Us',
                                                  style:
                                                      TextStyles.personalInformation,
                                                ),
                                              ],
                                            ),
                                          ),
                                      const    Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.arrow_forward_outlined,
                                                  size: 25,
                                                  color: WhiteColor,
                                                ),
                                               SizedBox(width: 7,), 
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  ///////////////  FRIEND REQUEST
                                  InkWell(
                                    onTap: () {
                                      Get.to(friendrequestscreen());
                                    },
                                    child: Container(
                                      height: 62,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.2), // Shadow color
                                              spreadRadius: 5, // Spread radius
                                              blurRadius: 7, // Blur radius
                                              offset: Offset(0,
                                                  3), // Offset in the x, y direction
                                            ),
                                          ],
                                          color: TextFieldColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            'assets/images/friend-request.png',
                                            height: Get.height * 0.05,
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  '   Friend Request',
                                                  style:
                                                      TextStyles.personalInformation,
                                                ),
                                              ],
                                            ),
                                          ),
                                     const  Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.arrow_forward_outlined,
                                                  size: 25,
                                                  color: WhiteColor,
                                                ),
                                                 SizedBox(width: 7,), 
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  /////////////////////  LOGOUT
                                  InkWell(
                                    onTap: () {
                                      Get.to(signin());
                                    },
                                    child: Container(
                                      height: 62,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.2), // Shadow color
                                              spreadRadius: 5, // Spread radius
                                              blurRadius: 7, // Blur radius
                                              offset: Offset(0,
                                                  3), // Offset in the x, y direction
                                            ),
                                          ],
                                          color: TextFieldColor,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            'assets/images/logout.png',
                                            height: Get.height * 0.05,
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  '   Logout',
                                                  style:
                                                      TextStyles.personalInformation,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )));
  }
}
