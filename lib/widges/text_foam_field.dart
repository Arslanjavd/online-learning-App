import 'package:flutter/material.dart';

class TextFoamField2 extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final String? Function(String?)? validator;
  final Widget? hidfun;
  final bool bol;
  const TextFoamField2(
      {super.key,
      required this.controller,
      required this.name,
      required this.validator,
      this.hidfun,
      required this.bol});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: bol,
      validator: validator,
      decoration: InputDecoration(
          suffixIcon: hidfun,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: name),
    );
  }
}
