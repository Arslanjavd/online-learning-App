import 'package:flutter/material.dart';

class SignLoginButton extends StatelessWidget {
  final dynamic colorbutton;
  final String textbutton;
  final dynamic colortext;
  final dynamic screen;
  const SignLoginButton(
      {super.key,
      required this.colorbutton,
      required this.textbutton,
      required this.colortext,
      this.screen});

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
        height: height * 0.065,
        width: width * 0.45,
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
