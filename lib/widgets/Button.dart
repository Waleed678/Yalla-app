import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:yalla_app/core/utils/colors.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const Button({
    Key? key,
    required this.onTap,
    required this.title,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: 52,
        decoration: BoxDecoration(
            color: Color(0xff7028AC), borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 17),
                  )),
      ),
    );
  }
}

class shortbutton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const shortbutton({
    Key? key,
    required this.onTap,
    required this.title,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 21,
        width: 63,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: border,
            spreadRadius: 6,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ], color: Color(0xff7028AC), borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 9),
                  )),
      ),
    );
  }
}
