import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/view/screens/auth/switch_controller.dart';

class Notificationscreen extends StatelessWidget {
  Notificationscreen({super.key});

  Switch controller = Get.put(SwitchController() as Switch);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 47,
      decoration: BoxDecoration(
          color: WhiteColor, borderRadius: BorderRadius.circular(5)),
      child: Row(children: [
        SizedBox(
          width: 10,
        ),
        Obx(() => ListTile(
              tileColor: Colors.white,
              leading: Image.asset('assets/images/bell@3x.png'),
              title: Text('Notification'),
              trailing: Switch(
                activeColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                value: Get.find<SwitchController>().isSwitched.value,
                onChanged: (value) {
                  Get.find<SwitchController>().toggleSwitch(value);
                },
              ),
            )),
      ]),
    );
  }
}
