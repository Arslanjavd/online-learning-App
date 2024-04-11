import 'package:flutter/material.dart';
import 'package:oline_learning_app/models/notifiactionm.dart';
import 'package:oline_learning_app/utils/test_data.dart';

List<Notificationm> notificationlist = [
  Notificationm(
      boxcolor: Colors.red.withOpacity(0.3),
      icon: Icons.credit_card_outlined,
      online12: TextData.online12,
      heading: TextData.notifheading,
      iconcolor: Colors.red),
  Notificationm(
      boxcolor: Colors.blue.withOpacity(0.3),
      icon: Icons.message,
      online12: TextData.online12,
      heading: TextData.notifheading2,
      iconcolor: Colors.blue),
  Notificationm(
      boxcolor: Colors.blue.withOpacity(0.3),
      icon: Icons.message,
      online12: TextData.online12,
      heading: TextData.notifheading3,
      iconcolor: Colors.blue),
  Notificationm(
      boxcolor: Colors.blue.withOpacity(0.3),
      icon: Icons.message,
      online12: TextData.online12,
      heading: TextData.notifheading4,
      iconcolor: Colors.blue)
];
