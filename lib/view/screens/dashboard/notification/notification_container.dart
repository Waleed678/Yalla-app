// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:yalla_app/core/utils/colors.dart';
// import 'package:yalla_app/core/utils/style.dart';

// class notificationdetail extends StatelessWidget {
//   const notificationdetail({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: TextFieldColor, borderRadius: BorderRadius.circular(10)),
//       width: Get.width * 0.9,
//       height: 95,
//       child: Column(children: [
//         Row(
//           children: [
//             Padding(
//                 padding: const EdgeInsets.only(top: 25, left: 10),
//                 child: CircleAvatar(
//                   radius: 25,
//                   backgroundColor: WhiteColor,
//                   child: Image.asset(
//                     'assets/images/colorcon@3x.png',
//                     height: Get.height * 0.04,
//                   ),
//                 )),
//             Padding(
//               padding: const EdgeInsets.only(top: 25, left: 10),
//               child: Text(
//                 'Lorem ilit, sed eiusmodtempor\nincididunt ut labore etdolore magna',
//                 style: TextStyles.h3,
//               ),
//             ),
//             Row(
//               children: [
//                 Text('Title'),
//                 CircleAvatar(
//                   radius: 13,
//                   backgroundColor: WhiteColor,
//                   child: Icon(
//                     Icons.close,
//                     color: Colors.black,
//                     size: 18,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         )
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';

class notificationcontainer extends StatefulWidget {
  const notificationcontainer({super.key});

  @override
  State<notificationcontainer> createState() => _notificationcontainerState();
}

class _notificationcontainerState extends State<notificationcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 140,
      decoration: BoxDecoration(
          color: TextFieldColor, borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Title',
                  style: TextStyles.category,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: WhiteColor,
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: WhiteColor,
                child: Image.asset(
                  'assets/images/colorcon@3x.png',
                  height: Get.height * 0.04,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    'Lorem ilit, sed eiusmodtempor\nincididunt ut labore etdolore magna',
                    style: TextStyles.h3,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
