import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/FriendRequest/detail_screen.dart';

class friendrequestcontainer extends StatefulWidget {
  const friendrequestcontainer({super.key});

  @override
  State<friendrequestcontainer> createState() => _friendrequestcontainerState();
}

class _friendrequestcontainerState extends State<friendrequestcontainer> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(detailscreen());
      },
      child: Container(
        height: 175,
        width: 340,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: TextFieldColor),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 40),
            child: Container(
              color: TextFieldColor,
              width: 280,
              height: 110,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/friend-image.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Player Name',
                        style: TextStyles.TextButton,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Game Category', style: TextStyles.ConsoleType),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Name', style: TextStyles.buttontext),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Console Type', style: TextStyles.ConsoleType),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Name', style: TextStyles.buttontext),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                SizedBox(
                  height: 31,
                  width: Get.width * 0.23,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Decline',
                      style: TextStyles.TextButton,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          TextFieldColor), // Change color as needed
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 31,
                   width: Get.width * 0.23,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Accept',
                      style: TextStyles.TextButton,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          TextFieldColor), // Change color as needed
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
