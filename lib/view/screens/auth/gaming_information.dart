import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/auth/sign_in.dart';
import 'package:yalla_app/widgets/Button.dart';
import 'package:yalla_app/widgets/textFormField.dart';

class gaminginformation extends StatefulWidget {
  const gaminginformation({super.key});

  @override
  State<gaminginformation> createState() => _gaminginformationState();
}

class _gaminginformationState extends State<gaminginformation> {
  bool computer = false;
  bool XBOX = false;
  bool playstation = false;
  bool FPSGAME = false;
  bool MOTMGAME = false;
  bool STRATEGYGAME = false;
  bool RACINGGAME = false;
  bool BATTLEGROUND = false;
  bool HORRORGAME = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
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
          title: Text('Sign Up'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.075),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Gaming Information',
                style: TextStyles.personalInformation,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Player Name',
                style: TextStyles.h3,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                validator: (p0) {},
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
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Choose Console Type',
                style: TextStyles.h3,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Row(children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            computer = !computer;
                          });
                        },
                        child: Container(
                          height: 105,
                          width: 106,
                          decoration: BoxDecoration(
                            color: TextFieldColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 1),
                              child: Container(
                                child: Checkbox(
                                  checkColor:
                                      TextFieldColor, // Color of the check icon
                                  fillColor: MaterialStateProperty.all(
                                      Colors.white), // Background color
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent), // No overlay color
                                  side: BorderSide(
                                      color: Colors.white), // Border color
                                  value: computer,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      computer = value ?? false;
                                    });
                                  },
                                ),
                                width: 21,
                                height: 21,
                                decoration: BoxDecoration(
                                    color: WhiteColor,
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                            ),
                            Image.asset(
                              'assets/images/computer@3x.png',
                              height: Get.height * 0.06,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Computer',
                              style: TextStyles.ConsoleType,
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 23,
                      ),

                      /////////////////////////////////

                      InkWell(
                        onTap: () {
                          setState(() {
                            XBOX = !XBOX;
                          });
                        },
                        child: Container(
                          height: 105,
                          width: 106,
                          decoration: BoxDecoration(
                            color: TextFieldColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 1),
                              child: Container(
                                width: 21,
                                height: 21,
                                decoration: BoxDecoration(
                                    color: WhiteColor,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Checkbox(
                                  checkColor:
                                      TextFieldColor, // Color of the check icon
                                  fillColor: MaterialStateProperty.all(
                                      Colors.white), // Background color
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent), // No overlay color
                                  side: BorderSide(
                                      color: Colors.white), // Border color
                                  value: XBOX,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      XBOX = value ?? false;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/xbox@3x.png',
                              height: Get.height * 0.06,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'XBOX',
                              style: TextStyles.ConsoleType,
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      //////////////////////////

                      InkWell(
                        onTap: () {
                          setState(() {
                            playstation = !playstation;
                          });
                        },
                        child: Container(
                          height: 105,
                          width: 106,
                          decoration: BoxDecoration(
                            color: TextFieldColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 1),
                              child: Container(
                                child: Checkbox(
                                  checkColor:
                                      TextFieldColor, // Color of the check icon
                                  fillColor: MaterialStateProperty.all(
                                      Colors.white), // Background color
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent), // No overlay color
                                  side: BorderSide(
                                      color: Colors.white), // Border color
                                  value: playstation,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      playstation = value ?? false;
                                    });
                                  },
                                ),
                                width: 21,
                                height: 21,
                                decoration: BoxDecoration(
                                    color: WhiteColor,
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                            ),
                            Image.asset(
                              'assets/images/playstation.png',
                              height: Get.height * 0.06,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Play Station',
                              style: TextStyles.ConsoleType,
                            )
                          ]),
                        ),
                      ),
                    ]);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Games you are Interested In',
                style: TextStyles.h3,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 290,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16.0, // Set the horizontal spacing
                      mainAxisSpacing: 2,
                      crossAxisCount: 3),
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          FPSGAME = !FPSGAME;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/elitespecial@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 74, top: 9),
                            child: Container(
                              width: 21,
                              height: 21,
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: FPSGAME,
                                onChanged: (bool? value) {
                                  setState(() {
                                    FPSGAME = value ?? false;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FPS GAME',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),

                    ///////////////////////

                    InkWell(
                      onTap: () {
                        setState(() {
                          MOTMGAME = !MOTMGAME;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/sideviewpeople@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 74, top: 10),
                            child: Container(
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: MOTMGAME,
                                onChanged: (bool? value) {
                                  setState(() {
                                    MOTMGAME = value ?? false;
                                  });
                                },
                              ),
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  color: WhiteColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'MOTM GAME',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),

                    ///////////////////////////

                    InkWell(
                      onTap: () {
                        setState(() {
                          STRATEGYGAME = !STRATEGYGAME;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/greenpink@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 74, top: 10),
                            child: Container(
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: STRATEGYGAME,
                                onChanged: (bool? value) {
                                  setState(() {
                                    STRATEGYGAME = value ?? false;
                                  });
                                },
                              ),
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  color: WhiteColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Strategy GAME',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),

                    ///////////////////////////

                    InkWell(
                      onTap: () {
                        setState(() {
                          RACINGGAME = !RACINGGAME;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/motocrossrider@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 74, top: 10),
                            child: Container(
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: RACINGGAME,
                                onChanged: (bool? value) {
                                  setState(() {
                                    RACINGGAME = value ?? false;
                                  });
                                },
                              ),
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  color: WhiteColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Racing GAME',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),

                    ///////////////////

                    InkWell(
                      onTap: () {
                        setState(() {
                          BATTLEGROUND = !BATTLEGROUND;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/cruelwar@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 74, top: 10),
                            child: Container(
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: BATTLEGROUND,
                                onChanged: (bool? value) {
                                  setState(() {
                                    BATTLEGROUND = value ?? false;
                                  });
                                },
                              ),
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  color: WhiteColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Battle Ground',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),

                    //////////////////////

                    InkWell(
                      onTap: () {
                        setState(() {
                          HORRORGAME = !HORRORGAME;
                        });
                      },
                      child: Container(
                        width: 89,
                        height: 77,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/halloween@3x.png')),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 78, top: 10),
                            child: Container(
                              child: Checkbox(
                                checkColor:
                                    TextFieldColor, // Color of the check icon
                                fillColor: MaterialStateProperty.all(
                                    Colors.white), // Background color
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent), // No overlay color
                                side: BorderSide(
                                    color: Colors.white), // Border color
                                value: HORRORGAME,
                                onChanged: (bool? value) {
                                  setState(() {
                                    HORRORGAME = value ?? false;
                                  });
                                },
                              ),
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  color: WhiteColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Horror Game',
                                  style: TextStyles.ConsoleType,
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Button(
                  onTap: () {
                    Get.to(signin());
                  },
                  title: 'Done')
            ]),
          ),
        ),
      ),
    );
  }
}
