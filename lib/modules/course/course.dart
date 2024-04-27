import 'package:flutter/material.dart';
import 'package:oline_learning_app/dumydata.dart';
import 'package:oline_learning_app/modules/filtter/filtter.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/container_corse.dart';
import 'package:oline_learning_app/widges/containerbutton.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  bool colors = true;
  bool colors2 = true;
  bool colors3 = true;
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      TextData.course,
                      style: Style.number,
                    ),
                    // Image(image: AssetImage()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: search,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10, bottom: 5),
                    suffix: IconButton(
                      onPressed: () {
                        search.clear();
                      },
                      icon: const Icon(Icons.close_rounded),
                    ),
                    suffixIconConstraints: const BoxConstraints(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const Filtter();
                            });
                      },
                      icon: const Icon(
                        Icons.view_quilt_outlined,
                        size: 35,
                      ),
                    ),
                    hintText: "Find Cousre",
                    hintStyle: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.4)),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: SizedBox(
                        height: height * 0.143,
                        width: width * 0.5,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: height * 0.13,
                                width: width * 0.5,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    color: Colors.blue.withOpacity(0.5)),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.14,
                              child: Image(
                                image: AssetImage(ImageUrl.courseimage),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                right: 0,
                                child: Container(
                                  height: height * 0.03,
                                  width: width * 0.23,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      TextData.languege,
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: SizedBox(
                        height: height * 0.143,
                        width: width * 0.5,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: height * 0.13,
                                width: width * 0.5,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: Color.fromARGB(255, 250, 208, 238)),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.14,
                              child: Image(
                                image: AssetImage(ImageUrl.courseimage2),
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                right: 0,
                                child: Container(
                                  height: height * 0.03,
                                  width: width * 0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      TextData.painting,
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 126, 87, 114),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  TextData.choice,
                  style: Style.numerous,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(20)),
                    buttontext: "All",
                    ontap: () {
                      setState(() {
                        colors = !colors;
                      });
                    },
                    textcolor: Colors.black.withOpacity(0.5),
                    textsize: 20,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colors ? Colors.white : Colors.blue),
                  ),
                  ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(20)),
                    buttontext: "Poular",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colors2 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        colors2 = !colors2;
                      });
                    },
                    textcolor: Colors.black.withOpacity(0.5),
                    textsize: 20,
                  ),
                  ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(20)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colors3 ? Colors.white : Colors.blue),
                    buttontext: "New",
                    ontap: () {
                      setState(() {
                        colors3 = !colors3;
                      });
                    },
                    textcolor: Colors.black.withOpacity(0.5),
                    textsize: 20,
                  ),
                ],
              ),
              SizedBox(
                height: height,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ContainerCourse(
                          courseContainerModel: courseList[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
