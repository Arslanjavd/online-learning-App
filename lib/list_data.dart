import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/course_list.dart';
import 'package:oline_learning_app/utils/image_url.dart';
import 'package:oline_learning_app/utils/test_data.dart';

List<ListCourse> listcourse = [
  ListCourse(
      leading: TextData.leading1,
      titleheading: TextData.welcome,
      subtitle: TextData.subtitle,
      image: ImageUrl.traling,
      icon: Icons.check_circle,
      iconcolor: Colors.blue),
  ListCourse(
      leading: TextData.leading2,
      titleheading: TextData.process,
      subtitle: TextData.subtitle2,
      image: ImageUrl.traling),
  ListCourse(
      leading: TextData.leading3,
      titleheading: TextData.discovery,
      subtitle: TextData.subtitle3,
      image: ImageUrl.traling1),
];
