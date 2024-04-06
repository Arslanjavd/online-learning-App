import 'package:flutter/material.dart';

class ConatinerButton extends StatelessWidget {
  final dynamic colorbutton;
  final String textbutton;
  final dynamic colortext;
  final dynamic screen;
  final double hei;
  final double wi;
  const ConatinerButton(
      {super.key,
      required this.colorbutton,
      required this.textbutton,
      required this.colortext,
      this.screen,
      required this.hei,
      required this.wi});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ));
      },
      child: Container(
        height: height * hei,
        width: width * wi,
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
