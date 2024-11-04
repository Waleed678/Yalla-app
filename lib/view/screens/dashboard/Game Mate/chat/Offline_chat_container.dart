import 'package:flutter/material.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';

class offlinechatcontainer extends StatefulWidget {
  const offlinechatcontainer({super.key});

  @override
  State<offlinechatcontainer> createState() => _offlinechatcontainerState();
}

class _offlinechatcontainerState extends State<offlinechatcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 90,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Stack(children: [
            Image.asset(
              'assets/images/chat-pic1.png',
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(color: WhiteColor, shape: BoxShape.circle),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'waleed',
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
          padding: const EdgeInsets.only(top: 30, left: 1),
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
    );
  }
}
