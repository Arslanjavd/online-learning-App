import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiltterButton extends StatelessWidget {
  final Color? colorbutton;
  final String textbutton;
  final Color? colortext;
  void Function()? ontap;
  final double widt;
  FiltterButton(
      {super.key,
      required this.colorbutton,
      required this.textbutton,
      required this.colortext,
      required this.ontap,
      required this.widt});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ontap,
      child: Container(
        height: height * 0.065,
        width: width * widt,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: colorbutton,
            border: Border.all(color: Colors.blue)),
        child: Center(
          child: Text(
            textbutton,
            style: TextStyle(fontSize: 22, color: colortext),
          ),
        ),
      ),
    );
  }
}
