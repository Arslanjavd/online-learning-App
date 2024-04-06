import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/onboarding03/onboarding_03.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class OnBoarding02 extends StatelessWidget {
  const OnBoarding02({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 290),
          child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoarding03(),
                    ));
              },
              child: const Text("Skip", style: Style.skipbutton)),
        ),
        Container(
            height: height * 0.4,
            width: widht * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageUrl.onboarding02),
              ),
            )),
        SizedBox(
          height: height * 0.1,
          width: widht * 0.6,
          child: Center(
              child: Text(
            TextData.qucikly,
            style: Style.numerous,
            maxLines: 2,
            textAlign: TextAlign.center,
          )),
        ),
        SizedBox(
          height: height * 0.1,
          width: widht * 0.5,
          child: Text(
            TextData.easyandfast,
            style: Style.freecourse,
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
      ]),
    );
  }
}
