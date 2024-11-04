import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/gaming_information.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

String countryName = "Select Country Name";

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  String displayNameNoCountryCode = '';

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
            title: Text('Sign Up'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 170, top: 20),
                  child: Text(
                    'Personal Information',
                    style: TextStyles.personalInformation,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 7),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/profilepic.png'),
                      child: Image.asset(
                        'assets/images/camera@3x.png',
                        height: Get.height * 0.05,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyles.h3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          obscureText: false,
                          hintText: 'Lorem Ipsum',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                              left: Get.width * 0.03,
                              top: 15,
                              bottom: 12,
                              right: 10,
                            ),
                            child: Image.asset(
                              'assets/images/user@3x.png',
                              height: Get.height * 0.01,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Email',
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
                          'Password',
                          style: TextStyles.h3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          obscureText: true,
                          hintText: '*****',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: Get.width * 0.03,
                                top: 12,
                                bottom: 12,
                                right: 10),
                            child: Image.asset('assets/images/padlock@3x.png',
                                height: Get.height * 0.01),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Country',
                          style: TextStyles.h3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                                  showCountryPicker(
                                    context: context,
                                    showPhoneCode: false,
                                    countryListTheme: CountryListThemeData(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10)),
                                      inputDecoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        hintText: 'Search country',
                                      ),
                                    ),
                                    onSelect: (Country value) {
                                      setState(() {
                                        displayNameNoCountryCode = value
                                            .displayNameNoCountryCode
                                            .toString();
                                      });
                                    },
                                  );
                                },
                          child: Container(
                            width: Get.width,
                            height: 52,
                            decoration: BoxDecoration(
                              color: TextFieldColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    displayNameNoCountryCode.isNotEmpty
                                        ? displayNameNoCountryCode
                                        : 'Select your country',
                                    style: TextStyles.h3,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: WhiteColor,
                                  size: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 110,
                        ),
                        Button(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Get.to(
                                  gaminginformation(),
                                );
                              }
                            },
                            title: 'Next'),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
