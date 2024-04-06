// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/login2.dart/log_in_2.dart';
import 'package:oline_learning_app/modules/verification_page/verfication_page.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/otp_text_foam.dart';

class Otp extends StatelessWidget {
  Otp({super.key, required this.otpnumber});
  final String otpnumber;
  var formkey = GlobalKey<FormState>();
  TextEditingController otp = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn2(),
                            ));
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 35,
                      )),
                  SizedBox(width: width * 0.2),
                  Text(
                    TextData.verify,
                    style: Style.heading,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TextData.code,
                    style: Style.otptext,
                  ),
                  Text(
                    otpnumber,
                    style: Style.otptext,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpFoam(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      otp: otp,
                    ),
                    OtpFoam(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      otp: otp2,
                    ),
                    OtpFoam(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      otp: otp3,
                    ),
                    OtpFoam(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      otp: otp4,
                    )
                    // SizedBox(
                    //   height: height * 0.1,
                    //   width: width * 0.12,
                    //   child: TextFormField(
                    //     onChanged: (value) {
                    //       if (value.length == 1) {
                    //         FocusScope.of(context).nextFocus();
                    //       }
                    //     },
                    //     controller: otp,
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(10))),
                    //     ),
                    //     inputFormatters: [
                    //       LengthLimitingTextInputFormatter(1),
                    //       FilteringTextInputFormatter.digitsOnly
                    //     ],
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return "";
                    //       }
                    //       return null;
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: height * 0.1,
                    //   width: width * 0.12,
                    //   child: TextFormField(
                    //     onChanged: (value) {
                    //       if (value.length == 1) {
                    //         FocusScope.of(context).nextFocus();
                    //       }
                    //     },
                    //     controller: otp2,
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(10))),
                    //     ),
                    //     inputFormatters: [
                    //       LengthLimitingTextInputFormatter(1),
                    //       FilteringTextInputFormatter.digitsOnly
                    //     ],
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return "";
                    //       }
                    //       return null;
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: height * 0.1,
                    //   width: width * 0.12,
                    //   child: TextFormField(
                    //     onChanged: (value) {
                    //       if (value.length == 1) {
                    //         FocusScope.of(context).nextFocus();
                    //       }
                    //     },
                    //     controller: otp3,
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(10))),
                    //     ),
                    //     inputFormatters: [
                    //       LengthLimitingTextInputFormatter(1),
                    //       FilteringTextInputFormatter.digitsOnly
                    //     ],
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return "";
                    //       }
                    //       return null;
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: height * 0.1,
                    //   width: width * 0.12,
                    //   child: TextFormField(
                    //     onChanged: (value) {
                    //       if (value.length == 1) {
                    //         FocusScope.of(context).nextFocus();
                    //       }
                    //     },
                    //     controller: otp4,
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(10))),
                    //     ),
                    //     inputFormatters: [
                    //       LengthLimitingTextInputFormatter(1),
                    //       FilteringTextInputFormatter.digitsOnly
                    //     ],
                    //     keyboardType: TextInputType.number,
                    //     textAlign: TextAlign.center,
                    //     validator: (value) {
                    //       if (value!.isEmpty) {
                    //         return "";
                    //       }
                    //       return null;
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: InkWell(
                    onTap: () {
                      if (!formkey.currentState!.validate()) {
                        return;
                      }
                      if (formkey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerficationPage(),
                            ));
                      }
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.8,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.blue),
                      child: const Center(
                          child: Text(
                        "Verify and Create Account",
                        style: Style.numberbutton,
                      )),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
