import 'package:flutter/material.dart';
import 'package:oline_learning_app/dumydata.dart';
import 'package:oline_learning_app/modules/buttomnavigatorbar/buttom_navigator_bar.dart';
import 'package:oline_learning_app/modules/filtter/filtter.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/container_corse.dart';
import 'package:oline_learning_app/widges/containerbutton.dart';

// ignore: must_be_immutable
class ScreachFliter extends StatefulWidget {
  const ScreachFliter({super.key});

  @override
  State<ScreachFliter> createState() => _ScreachFliterState();
}

class _ScreachFliterState extends State<ScreachFliter> {
  TextEditingController serch = TextEditingController();
  bool color1 = true;
  bool color2 = true;
  bool color3 = true;
  bool color4 = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButttonNavigator_bar(),
                ));
          },
          icon: Image(image: AssetImage(ImageUrl.mobilephone)),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: serch,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      suffix: IconButton(
                          onPressed: () {
                            serch.clear();
                          },
                          icon: const Icon(Icons.close)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Search Here",
                      suffixIcon: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const Filtter(),
                          );
                        },
                        icon: const Icon(
                          Icons.view_quilt_outlined,
                          size: 30,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ContainerButton(
                        textcolor: Colors.black.withOpacity(0.5),
                        borderradious:
                            const BorderRadius.all(Radius.circular(0)),
                        buttontext: "Visual identity",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color1 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color1 = !color1;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ContainerButton(
                        textcolor: Colors.black.withOpacity(0.5),
                        borderradious:
                            const BorderRadius.all(Radius.circular(0)),
                        buttontext: "Painting",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color2 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color2 = !color2;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ContainerButton(
                        textcolor: Colors.black.withOpacity(0.5),
                        borderradious:
                            const BorderRadius.all(Radius.circular(0)),
                        buttontext: "Coding",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color3 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color3 = !color3;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ContainerButton(
                        textcolor: Colors.black.withOpacity(0.5),
                        borderradious:
                            const BorderRadius.all(Radius.circular(0)),
                        buttontext: "Writing",
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                color1 ? Colors.white : Colors.blue),
                        ontap: () {
                          setState(() {
                            color4 = !color4;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                TextData.result,
                style: Style.heading,
              ),
            ),
            SizedBox(
              height: height * 0.57,
              child: ListView.builder(
                itemCount: 18,
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
    );
  }
}
