import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/bottom_navigation.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Tournament/tournament_container.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class tournamentscreen extends StatefulWidget {
  const tournamentscreen({super.key});

  @override
  State<tournamentscreen> createState() => _tournamentscreenState();
}

class _tournamentscreenState extends State<tournamentscreen> {
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
          bottomNavigationBar: BottomNavigation(),
          backgroundColor: Colors.transparent,
          extendBody: true,
          appBar: PreferredSize(
              preferredSize: Size(Get.width * 0.02, Get.height * 0.07),
              child: appbarWidget(
                title: 'Tournament',
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
                      child: InkWell(
                         onTap: (){
                          Get.to(accountscreen());
                        },
                        child: CircleAvatar(
                          radius: Get.width * 0.041,
                          backgroundImage:
                              AssetImage('assets/images/profilepic.png'),
                        ),
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
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      tournamentcontainer(),
                      SizedBox(
                        height: 20,
                      ),
                      tournamentcontainer(),
                      SizedBox(
                        height: 20,
                      ),
                      tournamentcontainer(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
