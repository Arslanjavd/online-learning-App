import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/onboarding02/onboaeding_02.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';

class OnBoarding01 extends StatelessWidget {
  const OnBoarding01({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 290),
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBoarding02(),
                      ));
                },
                child: const Text("Skip", style: Style.skipbutton)),
          ),
          Container(
              height: height * 0.4,
              width: widht * 0.3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                image: DecorationImage(
                  image: AssetImage(ImageUrl.onboarding01),
                ),
              )),
          SizedBox(
            height: height * 0.1,
            width: widht * 0.28,
            child: Center(
                child: Text(
              TextData.numerous,
              style: Style.numerous,
              maxLines: 2,
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: height * 0.1,
            width: widht * 0.28,
            child: Text(
              TextData.FreeCourse,
              style: Style.freecourse,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
