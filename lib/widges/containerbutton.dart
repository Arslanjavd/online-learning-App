import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final BorderRadiusGeometry? borderradious;
  // final double bheight;
  // final double bwidth;
  // final Color? buttoncolor;
  final String buttontext;
  final double? textsize;
  final ButtonStyle? style;
  final Color? textcolor;
  final void Function() ontap;
  const ContainerButton(
      {super.key,
      required this.borderradious,
      // required this.bheight,
      // required this.bwidth,
      // required this.buttoncolor,
      required this.buttontext,
      required this.style,
      this.textsize,
      this.textcolor,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: ontap,
      style: style,
      child: Text(
        buttontext,
        style: TextStyle(fontSize: textsize, color: textcolor),
      ),
    );
  }
}
