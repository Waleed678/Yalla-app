import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/HomeScreen/join_screen.dart';
import 'package:yalla_app/bottomBar/HomeScreen/see_all.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/bottombar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/battle_ground_games_room.dart';
import 'package:yalla_app/view/screens/dashboard/fps_game_room.dart';
import 'package:yalla_app/view/screens/dashboard/mootm_games_room.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class homescreen extends GetView<BottomNavigationController> {
   homescreen({Key? key}) : super(key: key);

  final BottomNavigationController controller = Get.put(BottomNavigationController());

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
              child: 
              appbarWidget(
                title: 'Home',
              )),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
            child: SingleChildScrollView(
              child: Column(children: [
                CustomTextField(
                  validator: (p0) {},
                  obscureText: true,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search, size: 30, color: bordercolor),
                ),
                
                   SizedBox(height: Get.height * 0.02,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FPS Games Room',
                      style: TextStyles.personalInformation,
                    ),
                    SizedBox(
                      width: 85,
                      height: 23,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(seeall());
                        },
                        child: Text(
                          'SEEALL',
                          style: TextStyles.buttontext,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: TextFieldColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                height: 3,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
///////////  FPS GAME ROOM /////////////////                            
                          child: fpsgameroom(),
                        );
                      }),
                ),

               SizedBox(height: Get.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MOOTM Games Room',
                      style: TextStyles.personalInformation,
                    ),
                    SizedBox(
                       width: 85,
                      height: 23,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(seeall());
                        },
                        child: Text(
                          'SEEALL',
                          style: TextStyles.buttontext,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: TextFieldColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),

///////////  MOOTM GAME GAME ROOM /////////////////  
///
                          child: mootmgameroom(),
                        );
                      }),
                ),

            SizedBox(height: Get.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BATTLE GROUND Games Room',
                      style: TextStyles.personalInformation,
                    ),
                    SizedBox(
                      width: 85,
                      height: 23,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(seeall());
                        },
                        child: Text(
                          'SEEALL',
                          style: TextStyles.buttontext,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: TextFieldColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
///////////  BATTLEGROUND GROUND GAME ROOM /////////////////                          
                          child: battlegroundgameroom(),
                        );
                      }),
                ),
                SizedBox(
                  height: 250,
                ),
              ]),
            ),
          ),
        ));
  }
}
