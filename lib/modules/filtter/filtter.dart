import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/containerbutton.dart';
import 'package:oline_learning_app/widges/filtter_button.dart';

class Filtter extends StatefulWidget {
  const Filtter({super.key});

  @override
  State<Filtter> createState() => _FiltterState();
}

bool color = true;
bool color2 = true;
bool color3 = true;
bool color4 = true;
bool color5 = true;
bool color6 = true;
bool color7 = true;
bool color8 = true;
bool color9 = true;
bool color10 = true;
bool color11 = true;
RangeValues rangevalue = const RangeValues(0, 1000);

class _FiltterState extends State<Filtter> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.8,
      width: width,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                      )),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  Text(
                    TextData.serch,
                    style: Style.heading,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                TextData.categories,
                style: Style.textcontainer,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "Desigin",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color = !color;
                      });
                    }),
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "painting",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color2 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color2 = !color2;
                      });
                    }),
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "coding",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color3 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color3 = !color3;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "Music",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color4 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color4 = !color4;
                      });
                    }),
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "Visual identiy",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color5 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color5 = !color5;
                      });
                    }),
                ContainerButton(
                    borderradious: const BorderRadius.all(Radius.circular(15)),
                    buttontext: "mathmatics",
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color6 ? Colors.white : Colors.blue),
                    ontap: () {
                      setState(() {
                        color6 = !color6;
                      });
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(TextData.price, style: Style.textcontainer),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: RangeSlider(
                  overlayColor:
                      MaterialStatePropertyAll(Colors.blue.withOpacity(0.5)),
                  activeColor: Colors.blue,
                  inactiveColor: Colors.black12,
                  divisions: 100,
                  max: 1000,
                  labels: RangeLabels(rangevalue.start.round().toString(),
                      rangevalue.end.round().toString()),
                  values: rangevalue,
                  onChanged: (RangeValues newvalue) {
                    print("Range value Start ${newvalue.start}");
                    print("Range vakue End ${newvalue.end}");
                    setState(() {
                      rangevalue = newvalue;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.black)),
                  child:
                      Center(child: Text("\$ ${rangevalue.start.toString()}")),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                const Text("To"),
                SizedBox(
                  width: width * 0.04,
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: Colors.black)),
                  child: Center(child: Text("\$ ${rangevalue.end.toString()}")),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(TextData.duration, style: Style.textcontainer),
            ),
            Column(
              children: [
                Row(
                  children: [
                    ContainerButton(
                        borderradious:
                            const BorderRadius.all(Radius.circular(15)),
                        buttontext: "3-8 Hours",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color7 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color7 = !color7;
                          });
                        }),
                    ContainerButton(
                        borderradious:
                            const BorderRadius.all(Radius.circular(15)),
                        buttontext: "8-14Hourse",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color8 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color8 = !color8;
                          });
                        }),
                    ContainerButton(
                        borderradious:
                            const BorderRadius.all(Radius.circular(15)),
                        buttontext: "14-20Houre",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color9 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color9 = !color9;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    ContainerButton(
                        borderradious:
                            const BorderRadius.all(Radius.circular(15)),
                        buttontext: "24-30 Hours",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color10 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color10 = !color10;
                          });
                        }),
                    ContainerButton(
                        borderradious:
                            const BorderRadius.all(Radius.circular(15)),
                        buttontext: "24-20 Hours",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color11 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color11 = !color11;
                          });
                        }),
                  ],
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              FiltterButton(
                  colorbutton: Colors.transparent,
                  textbutton: "Clear",
                  colortext: Colors.blue,
                  ontap: () {},
                  widt: 0.3),
              FiltterButton(
                  colorbutton: Colors.blue,
                  textbutton: "Apply Filter",
                  colortext: Colors.white,
                  ontap: () {},
                  widt: 0.6),
            ]),
          ],
        ),
      ),
    );
  }
}
