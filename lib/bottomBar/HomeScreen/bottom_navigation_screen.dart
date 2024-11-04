import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/bottomBar/HomeScreen/homescreen.dart';
import 'package:yalla_app/bottomBar/bottom_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/game_mate_dashboard.dart';
import 'package:yalla_app/view/screens/dashboard/Tournament/tournament_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';

import '../bottom_navigation_controller.dart';

class BottomNavigationScreen extends GetView<BottomNavigationController> {
  BottomNavigationScreen({Key? key}) : super(key: key);

  BottomNavigationController controller = Get.put(BottomNavigationController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        bottomNavigationBar:  BottomNavigation(),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.changePage(val);
        },
        children: [
        
        homescreen(),
          
        gamematedashboard(), 
        
        tournamentscreen(),
        
        accountscreen()
         
        ],
      ),
    );
  }
}


