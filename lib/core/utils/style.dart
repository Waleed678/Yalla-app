import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/core/utils/colors.dart';


class TextStyles {
    
    static TextStyle? get h1 => Get.textTheme.displayMedium?.copyWith(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat-SemiBold'
      );



     static TextStyle? get h2 => Get.textTheme.displayMedium?.copyWith(
      fontSize: 17,
      color: Colors.white,
      //fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat-SemiBold'
      );

    static TextStyle? get h3 => Get.textTheme.displayMedium?.copyWith(
      fontSize: 10,
      color: Colors.white,
      fontFamily: 'Montserrat-Regular'
      );

    static TextStyle? get validationtext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 10,
      color: Colors.red,
      fontFamily: 'Montserrat-Regular'
      );  

     static TextStyle? get category => Get.textTheme.displayMedium?.copyWith(
      fontSize: 12,
      color: Colors.white,
      fontFamily: 'Montserrat-Regular'
      );  

    static TextStyle? get TextButton => Get.textTheme.displayMedium?.copyWith(
      fontSize: 12,
      color: Colors.white,
      fontFamily: 'Montserrat-SemiBold'
      ); 

    static TextStyle? get buttontext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 8,
      color: Colors.white,
      fontFamily: 'Montserrat-SemiBold'
      ); 

    static TextStyle? get PlayerName => Get.textTheme.displayMedium?.copyWith(
      fontSize: 19,
      color: Colors.white,
      fontFamily: 'Montserrat-SemiBold'
      );     


    static TextStyle? get TextField => Get.textTheme.displayMedium?.copyWith(
      fontSize: 14,
      color: bordercolor,
      fontFamily: 'Montserrat-Regular'
      );

    static TextStyle? get Donthaveaccount => Get.textTheme.displayMedium?.copyWith(
      fontSize: 14,
      color: Colors.white,
      fontFamily: 'Montserrat-Bold'
      ); 

       static TextStyle? get smalltext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 7,
      color: Colors.white,
      fontFamily: 'Montserrat-Regular'
      );  

     static TextStyle? get appbartext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 19,
      color: Colors.white,
      fontFamily: 'Montserrat-Bold'
      );
  
  
    static TextStyle? get personalInformation => Get.textTheme.displayMedium?.copyWith(
      fontSize: 16,
      color: Color(0xffFFFFFF),
      fontFamily: 'Montserrat-Medium'
      ); 

    static TextStyle? get ConsoleType => Get.textTheme.displayMedium?.copyWith(
      fontSize: 10,
      color: Color(0xffFFFFFF),
      fontFamily: 'Montserrat-Medium'
      );

    static TextStyle? get subtitle => Get.textTheme.displayMedium?.copyWith(
      fontSize: 16,
      color: Color(0xffAAAAAA),
      fontFamily: 'Montserrat-Medium'
      );  


     static TextStyle? get RoomTitle => Get.textTheme.displayMedium?.copyWith(
      fontSize: 15,
      color: Color(0xffFFFFFF),
      fontFamily: 'Montserrat-Medium'
      );  

    static TextStyle? get Online => Get.textTheme.displayMedium?.copyWith(
      fontSize: 7,
      color: Color(0xff00FF08),
      fontFamily: 'Montserrat-Regular'
      );  

    static TextStyle? get hinttext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 8,
      color: hintcolor,
      fontFamily: 'Montserrat-Medium'
      );  

    static TextStyle? get TextFieldText => Get.textTheme.displayMedium?.copyWith(
      fontSize: 12,
      color: WhiteColor,
      fontFamily: 'Montserrat-Regular'
      );     

    static TextStyle? get containertext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 13,
      color: TextFieldColor,
      fontFamily: 'Montserrat-Medium'
      );   
   
    static TextStyle? get accounttext => Get.textTheme.displayMedium?.copyWith(
      fontSize: 13,
      color: accountcolor,
      fontFamily: 'Montserrat-Medium'
      );   


}