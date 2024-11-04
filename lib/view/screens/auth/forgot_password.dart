import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/otp_screen.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
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
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('YALLA GAME'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Lottie.asset(
                  'assets/lottie_files/forgotpassword.json',
                  height: 350,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Forgot Password',
                  textAlign: TextAlign.center,
                  style: TextStyles.h2,
                ),
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
                      style: TextStyles.ConsoleType,
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
                      height: 145,
                    ),
                    Button(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Get.to(otpscreen(
                              verificationId: '',
                            ));
                          }
                        },
                        title: 'Submit')
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}