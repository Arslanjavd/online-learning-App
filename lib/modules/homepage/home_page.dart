// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/course/course.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.4,
                  width: width,
                  color: Colors.white,
                ),
                Container(
                  height: height * 0.29,
                  width: width,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hi,Kristin",
                              style: Style.homepageheading,
                            ),
                            Image(image: AssetImage(ImageUrl.homelogo))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Let's start learning",
                          style: Style.homepage,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 18,
                  child: Container(
                    height: height * 0.15,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 4,
                              spreadRadius: 3)
                        ],
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Learned today"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Course(),
                                        ));
                                  },
                                  child: const Text(
                                    "My Course",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "49min",
                                style: Style.number,
                              ),
                              Text(
                                "/60min",
                                style: Style.signtext,
                              )
                            ],
                          ),

                          Expanded(
                            child: Container(
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(stops: const [
                                0.1,
                                0.5,
                                0.8,
                                0.1
                              ], colors: [
                                Colors.white,
                                Colors.red.shade300,
                                Colors.red.shade600,
                                Colors.white
                              ])),
                            ),
                          )
                          // Slider(value: 10, onChanged: );
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.22,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue.withOpacity(0.1)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  Positioned(
                                    child: SizedBox(
                                      height: height * 0.2,
                                      width: width * 0.3,
                                      child: Image(
                                          image: AssetImage(
                                              ImageUrl.homepagecoulm1)),
                                    ),
                                  ),
                                  Text(
                                    TextData.whatdo,
                                    style: Style.textcontainer,
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: height * 0.05,
                                          width: width * 0.25,
                                          decoration: const BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: const Center(
                                              child: Text(
                                            "Get Started",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white),
                                          )),
                                        )),
                                  )
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.22,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue.withOpacity(0.1)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(children: [
                                    Positioned(
                                      child: SizedBox(
                                        height: height * 0.2,
                                        width: width * 0.3,
                                        child: Image(
                                            image: AssetImage(
                                                ImageUrl.homepagecoulm1)),
                                      ),
                                    ),
                                    Text(
                                      TextData.whatdocourse,
                                      style: Style.textcontainer,
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: -2,
                                      child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: height * 0.05,
                                            width: width * 0.25,
                                            decoration: const BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: const Center(
                                                child: Text(
                                              "Get Started",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            )),
                                          )),
                                    )
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Learning Plan",
                style: Style.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  height: height * 0.2,
                  width: width * 0.9,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * 0.04,
                              width: width * 0.09,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  gradient: SweepGradient(colors: [
                                    Colors.white,
                                    Colors.black.withOpacity(0.5)
                                  ], stops: const [
                                    0.2,
                                    -0.08
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.01,
                                  width: width * 0.1,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "Packing Design",
                            style: Style.freecourse,
                          ),
                          SizedBox(
                            width: width * 0.26,
                          ),
                          const Text(
                            "40",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "/48",
                            style: Style.signtext,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * 0.04,
                              width: width * 0.09,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  gradient: SweepGradient(colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.white,
                                  ], stops: const [
                                    0.2,
                                    -0.08
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.01,
                                  width: width * 0.1,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "Product Design",
                            style: Style.freecourse,
                          ),
                          SizedBox(
                            width: width * 0.29,
                          ),
                          const Text(
                            "6",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "/24",
                            style: Style.signtext,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: height * 0.15,
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.purple.withOpacity(0.3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Meetup",
                            style: Style.meetup,
                          ),
                          SizedBox(
                            height: height * 0.03,
                            width: width * 0.6,
                            child: Text(
                              TextData.off,
                              style: Style.off,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: height * 0.1,
                        child:
                            Image(image: AssetImage(ImageUrl.homepagecoulm1)))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
