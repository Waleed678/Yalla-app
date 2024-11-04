import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/bottomBar/HomeScreen/homescreen.dart';
import 'package:yalla_app/bottomBar/HomeScreen/join_screen.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class seeall extends StatefulWidget {
  const seeall({super.key});

  @override
  State<seeall> createState() => _seeallState();
}

class _seeallState extends State<seeall> {
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
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045, vertical:  Get.height * 0.02),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomTextField(
                validator: (p0) {},
                obscureText: false,
                hintText: 'search',
                prefixIcon: Icon(Icons.search, size: 30, color: bordercolor),
              ),

              SizedBox(
                height: 10,
              ),

              Text(
                'FPS Games Room',
                style: TextStyles.personalInformation,
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 160,
                width: Get.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/gaming.png',
                          width: Get.width,
                          height: Get.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: TextFieldColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          const  Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      'assets/images/elitespecial@3x.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Room title',
                                      style: TextStyles.RoomTitle),
                                  Text(
                                    '120+Joined',
                                    style: TextStyles.h3,
                                  ),
                                ],
                              ),
                            ),
          SizedBox(width: Get.width * 0.3,),                       
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 29,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(joinscreen());
                                    },
                                    child: Text(
                                      'JOIN',
                                      style: TextStyles.buttontext,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: TextFieldColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                  ],
                ),
              ),
              ///////////////////////////////////////////////////

              SizedBox(
                height: 15,
              ),

              Container(
                height: 160,
                width: Get.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/gaming.png',
                          width: Get.width,
                          height: Get.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: TextFieldColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      'assets/images/elitespecial@3x.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Room title',
                                      style: TextStyles.RoomTitle),
                                  Text(
                                    '120+Joined',
                                    style: TextStyles.h3,
                                  ),
                                ],
                              ),
                            ),
              SizedBox(width: Get.width * 0.3,),                   
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 29,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(joinscreen());
                                    },
                                    child: Text(
                                      'JOIN',
                                      style: TextStyles.buttontext,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: TextFieldColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                  ],
                ),
              ),

              ///////////////////////////////////////////////////

              SizedBox(
                height: 15,
              ),

              Container(
                height: 160,
                width: Get.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          'assets/images/gaming.png',
                          width: Get.width,
                          height: Get.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: TextFieldColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                         const   Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      'assets/images/elitespecial@3x.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Room title',
                                      style: TextStyles.RoomTitle),
                                  Text(
                                    '120+Joined',
                                    style: TextStyles.h3,
                                  ),
                                ],
                              ),
                            ),
                   SizedBox(width: Get.width * 0.3,),         
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 29,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(joinscreen());
                                    },
                                    child: Text(
                                      'JOIN',
                                      style: TextStyles.buttontext,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: TextFieldColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
