import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oline_learning_app/modules/login2.dart/log_in_2.dart';
import 'package:oline_learning_app/modules/signup/sing_up.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/create_button.dart';
import 'package:oline_learning_app/widges/forget-password.dart';
import 'package:oline_learning_app/widges/icon_button.dart';
import 'package:oline_learning_app/widges/text_foam_field.dart';
import 'package:oline_learning_app/widges/text_signup_button.dart';

// ignore: must_be_immutable
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool hideicon = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formkey,
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  height: height,
                  width: Width,
                  color: Colors.black.withOpacity(0.2),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 110, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log In",
                          style: Style.signlogin,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
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
                          padding: const EdgeInsets.only(top: 50, left: 25),
                          child: Text(
                            "Your Email",
                            style: Style.signfoamtext,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 5),
                          child: SizedBox(
                            width: Width * 0.85,
                            child: TextFoamField2(
                              controller: email,
                              name: "Email",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter the Email First";
                                }
                                if (!RegExp(
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                    .hasMatch(value)) {
                                  return "Please Enter Correct Email";
                                }
                                return null;
                              },
                              bol: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            "Password",
                            style: Style.signfoamtext,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 5),
                          child: SizedBox(
                            width: Width * 0.85,
                            child: TextFoamField2(
                                bol: hideicon,
                                hidfun: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hideicon = !hideicon;
                                      });
                                    },
                                    icon: hideicon
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility)),
                                controller: password,
                                name: "Password",
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter the Password";
                                  }

                                  if (value.length < 7) {
                                    return "Please Enter Atlest 7 Digits Passowrd";
                                  }
                                  return null;
                                }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 40),
                              child: ForgetPassword(
                                forgetpasswordname: "Forget Password?",
                                onpress: () {
                                  Get.off(() => const SignUp());
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 25),
                          child: SizedBox(
                            width: Width * 0.85,
                            child: InkWell(
                                onTap: () {
                                  if (!formkey.currentState!.validate()) {
                                    return;
                                  }
                                  if (formkey.currentState!.validate()) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const LogIn2(),
                                        ));
                                  }
                                },
                                child:
                                    const CreateButton(buttontext: "Log In")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 10),
                          child: Row(
                            children: [
                              Text(TextData.donthave),
                              const TextSignupButton()
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: Width * 0.3,
                                height: height * 0.002,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              const Text("Or login with"),
                              Container(
                                  width: Width * 0.3,
                                  height: height * 0.002,
                                  color: Colors.black.withOpacity(0.5))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButtons(
                                imageurl: ImageUrl.facebook,
                                link: "https://www.facebook.com/",
                              ),
                              SizedBox(
                                width: Width * 0.1,
                              ),
                              IconButtons(
                                imageurl: ImageUrl.google,
                                link: "https://www.google.com/",
                              )
                            ],
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

var formkey = GlobalKey<FormState>();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
