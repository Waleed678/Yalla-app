

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/core/utils/assets_constants.dart';
import 'package:yalla_app/core/utils/style.dart';

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String subText;
  const OnboardingContent({Key? key,required this.title,required this.subText, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,height: Get.height * 0.30,),
        SizedBox(height: Get.height * 0.03,),
        Text(title, style: TextStyles.h1),
        SizedBox(height: Get.height * 0.05,),
        Text(subText, style: TextStyles.subtitle, textAlign: TextAlign.center, maxLines: 4, overflow: TextOverflow.ellipsis,),
      ],
    );
  }
}