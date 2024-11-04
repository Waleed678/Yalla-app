import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class findfriendaddscreen extends StatefulWidget {
  const findfriendaddscreen({super.key});

  @override
  State<findfriendaddscreen> createState() => _findfriendaddscreenState();
}

class _findfriendaddscreenState extends State<findfriendaddscreen> {
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
            // bottomNavigationBar: BottomNavigation(),
            backgroundColor: Colors.transparent,
            extendBody: true,
            appBar: PreferredSize(
                preferredSize: Size(Get.width * 0.03, Get.height * 0.05),
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
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/pexelsgame@3x.png',
                        height: Get.height * 0.4),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Player Name',
                            style: TextStyles.RoomTitle,
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/category.png',
                                height: Get.height * 0.03,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Game Category',
                                style: TextStyles.category,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/games.png',
                                height: Get.height * 0.03,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Console Type',
                                style: TextStyles.category,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/trophy@3x.png',
                                height: Get.height * 0.03,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Participated Tournament Name',
                                style: TextStyles.category,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/chat-room.png',
                                height: Get.height * 0.03,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Joined Rooms',
                                style: TextStyles.category,
                              ),
                            ],
                          ),
                        ],
                      ),

///////////////////////////////////////////////////    ONE  SIDE COLUMN    ////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 45, bottom: 45 ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 25,
                                width: 65,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'ADD',
                                      style: TextStyles.buttontext,
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                TextFieldColor),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                        )))),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Stack(
                                children: [
                                  Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset(
                                          'assets/images/aliquam.png'),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: TextFieldColor, // Border color
                                          width: 2.6, // Border width
                                        ),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 23),
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.asset(
                                              'assets/images/aliquam.png'),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  TextFieldColor, // Border color
                                              width: 2.6, // Border width
                                            ),
                                          ))),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 46),
                                      child: Container(
                                          width: 30,
                                          height: 30,
                                          child: Image.asset(
                                              'assets/images/aliquam.png'),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  TextFieldColor, // Border color
                                              width: 2.6, // Border width
                                            ),
                                          ))),
                                ],
                              ),
                            ),
                            Text(
                              '12 Friends',
                              style: TextStyles.TextButton,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
        ));
  }
}
