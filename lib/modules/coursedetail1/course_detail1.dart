import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/list_data.dart';
import 'package:oline_learning_app/modules/buttomnavigatorbar/buttom_navigator_bar.dart';
import 'package:oline_learning_app/modules/payment/payment.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/container_button.dart';
import 'package:oline_learning_app/widges/containerbutton.dart';
import 'package:oline_learning_app/widges/list_title_course.dart';

class CourseDetail1 extends StatefulWidget {
  const CourseDetail1({super.key});

  @override
  State<CourseDetail1> createState() => _CourseDetail1State();
}

class _CourseDetail1State extends State<CourseDetail1> {
  bool list = true;
  bool color = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          Get.to(() => const ButttonNavigator_bar());
        },
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: height,
                width: width,
                color: Colors.pink.shade200,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(ImageUrl.mobilephone)),
                      ),
                      Image(image: AssetImage(ImageUrl.coursdetai1)),
                      Container(
                        height: height * 0.607,
                        width: width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          TextData.product,
                                          style: Style.coursedetailheading,
                                        ),
                                        Text(
                                          TextData.lesson,
                                          style: Style.signtext,
                                        )
                                      ],
                                    ),
                                    Text(
                                      TextData.pricecourse,
                                      style: Style.pricecourse,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    TextData.about,
                                    style: Style.coursedetailheading,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    TextData.sedlu,
                                    style: Style.signtext1,
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          list = !list;
                                        });
                                      },
                                      icon: Image.asset(ImageUrl.iconcours)),
                                ),
                                if (list)
                                  SizedBox(
                                    height: height * 0.280,
                                    child: ListView.builder(
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListTitalCourse(
                                            listCourse: listcourse[index]);
                                      },
                                    ),
                                  ),
                                Row(
                                  children: [
                                    ContainerButton(
                                        borderradious: const BorderRadius.all(
                                            Radius.circular(10)),
                                        buttontext: "",
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: color
                                                ? Colors.white
                                                : Colors.red,
                                            shape: const StarBorder()),
                                        ontap: () {
                                          setState(() {
                                            color = !color;
                                          });
                                        }),
                                    SizedBox(
                                      width: width * 0.06,
                                    ),
                                    const ConatinerButton(
                                      colorbutton: Colors.blue,
                                      colortext: Colors.white,
                                      hei: 0.07,
                                      textbutton: "Buy Now",
                                      screen: Payment(),
                                      wi: 0.65,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
