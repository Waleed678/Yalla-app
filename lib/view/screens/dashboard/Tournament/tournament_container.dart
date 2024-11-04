import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/widgets/Button.dart';

import '../../../../core/utils/style.dart';

class tournamentcontainer extends StatefulWidget {
  const tournamentcontainer({super.key});

  @override
  State<tournamentcontainer> createState() => _tournamentcontainerState();
}

class _tournamentcontainerState extends State<tournamentcontainer> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: Get.width,
      decoration: BoxDecoration(
        color: TextFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
              height: 102,
              width: Get.width * 0.9,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/elitespecial@3x.png',
                    fit: BoxFit.cover,
                  ))),
        ),

        Row(
          children: [
         SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Tournament Title',
                  style: TextStyles.ConsoleType,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Organizer',
                  style: TextStyles.ConsoleType,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Name',
                  style: TextStyles.smalltext,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Game Category',
                  style: TextStyles.ConsoleType,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Name',
                  style: TextStyles.smalltext,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Date',
                  style: TextStyles.ConsoleType,
                ),
                Text(
                  '1-Loream-2023',
                  style: TextStyles.smalltext,
                ),
              ],
            ),
        
        //////////////////////////////////////
           SizedBox(width: 15),
           
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Participation Fee',
                    style: TextStyles.ConsoleType,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Name',
                    style: TextStyles.smalltext,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Total Participation',
                    style: TextStyles.ConsoleType,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Members',
                    style: TextStyles.smalltext,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Time',
                    style: TextStyles.ConsoleType,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '11:00 AM',
                    style: TextStyles.smalltext,
                  ),
                ],
              ),
            ),
        ///////////////////////////////////////
           
          // SizedBox(width: 55),
           
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40, top: 10),
                    child: Row( 
                      children: [
                        Stack(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/aliquam.png'),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: TextFieldColor, // Border color
                                    width: 2.6, // Border width
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(left: 21),
                                child: Container(
                                    width: 28,
                                    height: 28,
                                    child:
                                        Image.asset('assets/images/aliquam.png'),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: TextFieldColor, // Border color
                                        width: 2.6, // Border width
                                      ),
                                    ))),
                            Padding(
                                padding: const EdgeInsets.only(left: 43),
                                child: Container(
                                    width: 28,
                                    height: 28,
                                    child:
                                        Image.asset('assets/images/aliquam.png'),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: TextFieldColor, // Border color
                                        width: 2.6, // Border width
                                      ),
                                    ))),
                          ],
                        ),
                        Text(
                          '88 Members',
                          style: TextStyles.smalltext,
                        ),
                      ],
                    ),
                  ),
                  shortbutton(onTap: () {}, title: 'Register')
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
