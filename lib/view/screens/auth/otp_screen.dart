import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/reset_password.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({Key? key, required String verificationId}) : super(key: key);

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
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
                  'assets/lottie_files/otp.json',
                  height: 350,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: TextStyles.h2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter OTP Code',
                    style: TextStyles.ConsoleType,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 43,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: TextFieldColor,
                              hintText: "-",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          style: Theme.of(context).textTheme.displayMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Button(
                      onTap: () {
                        Get.to(resetpassword());
                      },
                      title: 'Submit')
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
