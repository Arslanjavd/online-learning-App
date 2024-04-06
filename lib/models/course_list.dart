import 'package:flutter/material.dart';

class ListCourse {
  final String leading;
  final String titleheading;
  final String subtitle;
  final String image;
  final IconData? icon;
  final Color? iconcolor;

  ListCourse(
      {required this.leading,
      required this.titleheading,
      required this.subtitle,
      required this.image,
      this.icon,
      this.iconcolor});
}
