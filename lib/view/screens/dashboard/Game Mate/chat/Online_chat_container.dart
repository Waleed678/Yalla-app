import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Game%20Mate/chat/chat.dart';

class onlinechatcontainer extends StatefulWidget {
  const onlinechatcontainer({super.key});

  @override
  State<onlinechatcontainer> createState() => _onlinechatcontainerState();
}

class _onlinechatcontainerState extends State<onlinechatcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 90,
      child: Padding(
         padding: EdgeInsets.symmetric(vertical: Get.width * 0.020),
        child: Row(children: [
          Stack(children: [
            InkWell(
                onTap: () {
                  Get.to(chat());
                },
                child: Image.asset(
                  'assets/images/chat-pic1.png',
                  height: 70,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: WhiteColor, width: 2.2),
                    shape: BoxShape.circle),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Valentine',
                  style: TextStyles.TextButton,
                ),
                SizedBox(height: 5),
                Text(
                  'Class aptent taciti sociosqu...',
                  style: TextStyles.category,
                )
              ],
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '10.00 AM',
                  style: TextStyle(
                      fontSize: 10,
                      color: Color(0xffC8CDDC),
                      fontFamily: 'Montserrat-Regular'),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      color: TextFieldColor, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 9,
                        color: WhiteColor,
                        fontFamily: 'Montserrat-SemiBold'),
                  )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
