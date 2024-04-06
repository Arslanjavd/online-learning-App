import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/login/log_in.dart';
import 'package:oline_learning_app/modules/signup/sing_up.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/sign_login_button.dart';

class OnBoarding03 extends StatelessWidget {
  const OnBoarding03({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: height * 0.4,
              width: widht * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageUrl.onboarding03),
                ),
              )),
          SizedBox(
            height: height * 0.1,
            width: widht * 0.6,
            child: Center(
                child: Text(
              TextData.create,
              style: Style.numerous,
              maxLines: 2,
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: height * 0.1,
            width: widht * 0.5,
            child: Text(
              TextData.study,
              style: Style.freecourse,
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignLoginButton(
                  screen: SignUp(),
                  textbutton: "Sign up",
                  colorbutton: Colors.blue,
                  colortext: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                SignLoginButton(
                  screen: LogIn(),
                  textbutton: "Log in",
                  colortext: Colors.blue,
                  colorbutton: Colors.transparent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
