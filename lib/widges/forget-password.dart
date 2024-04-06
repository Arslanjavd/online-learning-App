import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  final String forgetpasswordname;
  final void Function()? onpress;
  const ForgetPassword(
      {super.key, required this.forgetpasswordname, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpress,
        child: Text(
          forgetpasswordname,
          selectionColor: Colors.black.withOpacity(0.2),
          style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 18),
        ));
  }
}
