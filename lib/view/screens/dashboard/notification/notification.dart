import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:yalla_app/bottomBar/bottom_navigation_controller.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification_container.dart';
import 'package:yalla_app/widgets/appbar_wdget.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
          child: appbarWidget(
            title: 'Notification',
            leadingIcon: 
            CircleAvatar(
             radius: Get.width * 0.046,
              backgroundColor: TextFieldColor,
              child: InkWell(
                onTap: (){
                  Get.back();
                },
                child: Image.asset('assets/images/backarrow.png',height: Get.height * 0.02,)),
            ),
           
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Get.width * 0.045, vertical: Get.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           // mainAxisAlignment: MainAxisAlignment.center,
              children: [

              Expanded(
                child: ListView.builder(
                  itemCount:3,
                  itemBuilder: (context, index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: notificationcontainer(),
                   );
                  },
                  ),
              ),



            // notificationcontainer()
            // SizedBox(
            //   height: 20,
            // ),
            // notificationcontainer(),
            // SizedBox(
            //   height: 20,
            // ),
            //   notificationcontainer()
          ]),
        ),
      ),
    );
  }
}
