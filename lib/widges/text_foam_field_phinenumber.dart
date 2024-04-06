import 'package:flutter/material.dart';

class TextFoamFieldPhonenumber extends StatelessWidget {
  final TextEditingController controller;
  final String name;

  final String? Function(String?)? validator;
  const TextFoamFieldPhonenumber({
    super.key,
    required this.controller,
    required this.name,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            errorBorder: const OutlineInputBorder(),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: name));
  }
}
