import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/buttomnavigatorbar/buttom_navigator_bar.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class VerficationPage extends StatelessWidget {
  const VerficationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.black.withOpacity(0.4),
          ),
          Center(
            child: Container(
              height: height * 0.5,
              width: width * 0.9,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.check_circle,
                    size: 100,
                    color: Colors.blue,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Success",
                      style: Style.skipbutton,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 35),
                    child: Center(
                      child: SizedBox(
                        height: height * 0.1,
                        width: width * 0.9,
                        child: Text(
                          TextData.congratulations,
                          style: Style.signfoamtext,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ButttonNavigator_bar(),
                            ));
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.8,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blue),
                        child: const Center(
                            child: Text(
                          "Done",
                          style: Style.numberbutton,
                        )),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
