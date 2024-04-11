import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/buttomnavigatorbar/buttom_navigator_bar.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/container_button.dart';

class Verfiaction extends StatelessWidget {
  const Verfiaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image(image: AssetImage(ImageUrl.verfiaction)),
              ),
              Text(
                TextData.successfull,
                style: Style.heading,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: ConatinerButton(
                  screen: ButttonNavigator_bar(),
                  colorbutton: Colors.blue,
                  textbutton: "Start Learning",
                  colortext: Colors.white,
                  wi: 0.9,
                  hei: 0.065,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
