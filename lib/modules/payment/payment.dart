import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/modules/coursedetail1/course_detail1.dart';
import 'package:oline_learning_app/modules/payment1/payment_1.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/container_button.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Get.to(() => const CourseDetail1());
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                    width: width,
                    child: Image(image: AssetImage(ImageUrl.card))),
                Text(
                  TextData.my,
                  style: Style.coursedetailheading,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.34,
            ),
            ConatinerButton(
              colorbutton: Colors.blue,
              colortext: Colors.white,
              hei: 0.07,
              textbutton: "Pay Now",
              screen: Payment1(),
              wi: 0.9,
            )
          ],
        ),
      ),
    );
  }
}
