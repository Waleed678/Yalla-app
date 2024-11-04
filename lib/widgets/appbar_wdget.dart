
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';
import 'package:yalla_app/view/screens/dashboard/Account/account_screen.dart';
import 'package:yalla_app/view/screens/dashboard/notification/notification.dart';

class appbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? leadingCallback;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  

  const appbarWidget({
    Key? key,
    required this.title,
    this.leadingCallback,
    this.leadingIcon,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingIcon,  
      automaticallyImplyLeading: false,
      leadingWidth: 70,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:  Text(title,),titleTextStyle: TextStyles.appbartext,centerTitle: true,
      actions: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: (){
                           Get.to(notification());
                        },
                        child: CircleAvatar(
                          radius: Get.width * 0.041,
                          backgroundColor: TextFieldColor,
                          child: Image.asset('assets/images/Icon.png',
                              height: 20),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: InkWell(
                        onTap: (){
                          Get.to(accountscreen());
                        },
                        child: CircleAvatar(
                          radius: Get.width * 0.041,
                          backgroundImage:
                              AssetImage('assets/images/profilepic.png'),
                        ),
                      ),
                    ),
                  ),
                ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

