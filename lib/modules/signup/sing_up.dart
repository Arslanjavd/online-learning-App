import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/login2.dart/log_in_2.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/create_button.dart';
import 'package:oline_learning_app/widges/text_foam_field.dart';
import 'package:oline_learning_app/widges/text_login_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

var formkey = GlobalKey<FormState>();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _SignUpState extends State<SignUp> {
  bool isSelected = true;
  bool? chexkbox = false;
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign up",
                          style: Style.signlogin,
                        ),
                        Text(
                          TextData.detailsigup,
                          style: Style.signtext,
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
                            "Yours Email",
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
                              hidfun: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelected = !isSelected;
                                    });
                                  },
                                  icon: isSelected
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
                              },
                              bol: isSelected,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 25),
                          child: SizedBox(
                            width: Width * 0.85,
                            child: InkWell(
                                onTap: () {
                                  if (!formkey.currentState!.validate()) return;
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LogIn2(),
                                      ));
                                },
                                child: const CreateButton(
                                    buttontext: "Create account")),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: Checkbox(
                                  activeColor: Colors.blue,
                                  value: chexkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      chexkbox = value;
                                    });
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: SizedBox(
                                width: Width * 0.7,
                                child: Text(
                                  TextData.bycreating,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 10),
                          child: Row(
                            children: [
                              Text(TextData.already),
                              const TextLoginButton()
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
