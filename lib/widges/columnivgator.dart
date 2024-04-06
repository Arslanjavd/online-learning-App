import 'package:flutter/material.dart';

class ColumNavigator extends StatelessWidget {
  final double wi;
  final double hi;
  final dynamic color;
  const ColumNavigator(
      {super.key, required this.wi, required this.hi, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hi,
      width: wi,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: color),
    );
  }
}
