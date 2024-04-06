import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final String buttontext;
  const CreateButton({super.key, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.06,
      width: widht * 0.9,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue),
      child: Center(
        child: Text(
          buttontext,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
