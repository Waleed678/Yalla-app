import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/bottomBar/HomeScreen/join_screen.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';

class mootmgameroom extends StatefulWidget {
  const mootmgameroom({super.key});

  @override
  State<mootmgameroom> createState() => _mootmgameroomState();
}

class _mootmgameroomState extends State<mootmgameroom> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: 250,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/pexelsgame@3x.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 0),
            child: Container(
              width: 249.9,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: TextFieldColor),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                      radius: 28,
                      backgroundImage:
                          AssetImage('assets/images/profilepic.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Room title', style: TextStyles.RoomTitle),
                      Text(
                        '120+Joined',
                        style: TextStyles.h3,
                      ),
                    ],
                  ),
                ),
        SizedBox(width: Get.width * 0.05,),
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
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
