import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/payment/payment.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';
import 'package:oline_learning_app/utils/text_style.dart';
import 'package:oline_learning_app/widges/otp_text_foam.dart';

class Payment1 extends StatelessWidget {
  Payment1({super.key});
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ars() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Payment(),
          ));
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: formkey,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                    width: width,
                    child: Image(image: AssetImage(ImageUrl.card))),
                Text(
                  TextData.my,
                  style: Style.coursedetailheading,
                ),
              ],
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 30),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Payment(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 30),
                        child: Text(
                          TextData.payment,
                          style: Style.coursedetailheading,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      TextData.pricecourse,
                      style: Style.number,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.75,
                width: width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child:
                          Text(TextData.paymentpassword, style: Style.number),
                    ),
                    Text(
                      TextData.Please,
                      style: Style.please,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return;
                              }
                              return null;
                            },
                            otp: otp6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return;
                              }
                              return null;
                            },
                            otp: otp1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return;
                              }
                              return null;
                            },
                            otp: otp2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return;
                              }
                              return null;
                            },
                            otp: otp3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return;
                              }
                              return null;
                            },
                            otp: otp4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OtpFoam(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                ars();
                              }
                            },
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return "";
                              }
                              if (formkey.currentState!.validate()) {
                                return ars();
                              }
                              return null;
                            },
                            otp: otp5,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
