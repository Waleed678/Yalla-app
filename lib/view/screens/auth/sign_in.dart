import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/bottomBar/HomeScreen/bottom_navigation_screen.dart';
import 'package:yalla_app/bottomBar/HomeScreen/homescreen.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/forgot_password.dart';
import 'package:yalla_app/view/screens/auth/signup.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final _formKey = GlobalKey<FormState>();

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('YALLA GAME'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
          child: SingleChildScrollView(
            child: Column(children: [
              Lottie.asset(
                'assets/lottie_files/lottie.json',
                height: 290,
                width: 370,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Login to Continue',
                style: TextStyles.h2,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter Email',
                      style: TextStyles.h3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obscureText: false,
                      hintText: 'Lorem@gmail.com',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: Get.width * 0.03,
                          top: 15,
                          bottom: 12,
                          right: 10,
                        ),
                        child: Image.asset(
                          'assets/images/mail@3x.png',
                          height: Get.height * 0.01,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Enter Password',
                      style: TextStyles.h3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      obscureText: true,
                      hintText: '************',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: Get.width * 0.03,
                          top: 15,
                          bottom: 12,
                          right: 10,
                        ),
                        child: Image.asset(
                          'assets/images/padlock@3x.png',
                          height: Get.height * 0.01,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(forgotpassword());
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyles.TextButton,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform actions when the form is valid
                    Get.to(BottomNavigationScreen());
                  }
                },
                title: 'Login',
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Don't have an account?",
                  style: TextStyles.Donthaveaccount,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(signup());
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyles.Donthaveaccount,
                    )),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
