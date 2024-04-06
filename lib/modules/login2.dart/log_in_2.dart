import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/login/log_in.dart';
import 'package:oline_learning_app/modules/otp/otp.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/text_foam_field_phinenumber.dart';

class LogIn2 extends StatefulWidget {
  const LogIn2({super.key});

  @override
  State<LogIn2> createState() => _SignUpState();
}

var formkey = GlobalKey<FormState>();
TextEditingController phoneno = TextEditingController();

class _SignUpState extends State<LogIn2> {
  bool? isSelected = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  height: height,
                  width: Width,
                  color: Colors.black.withOpacity(0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LogIn(),
                                      ));
                                },
                                icon: Image.asset(ImageUrl.mobilephone)),
                            SizedBox(
                              width: Width * 0.1,
                            ),
                            Text(
                              TextData.continuephone,
                              style: Style.heading,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.05,
                          ),
                          const Center(
                            child: Image(
                                image: AssetImage(
                                    "assets/images/illustration copy.png")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Container(
                    height: height,
                    width: Width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Center(
                            child: Text(
                              TextData.enteryour,
                              style: Style.signfoamtext,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.20,
                          child: Center(
                            child: SizedBox(
                              height: height * 0.073,
                              width: Width * 0.9,
                              child: Stack(
                                children: [
                                  TextFoamFieldPhonenumber(
                                    controller: phoneno,
                                    name: "Phone No",
                                    validator: (p0) {
                                      if (p0!.isEmpty) {
                                        return "Please enter mobile number";
                                      }
                                      if (p0.length < 11) {
                                        return "Please enter valid mobile number";
                                      }
                                      if (p0.length > 11) {
                                        return "Please enter valid mobile number";
                                      }
                                      return null;
                                    },
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: InkWell(
                                      onTap: () {
                                        if (formkey.currentState!.validate()) {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Otp(
                                                  otpnumber: phoneno.text,
                                                ),
                                              ));
                                        }
                                      },
                                      child: Container(
                                        height: height * 0.073,
                                        width: Width * 0.4,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.blue),
                                        child: const Center(
                                          child: Text(
                                            "Continue",
                                            style: Style.numberbutton,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
