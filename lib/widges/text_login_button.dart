import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/login/log_in.dart';

class TextLoginButton extends StatelessWidget {
  const TextLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LogIn(),
            ));
      },
      child: const Text(
        "Login",
        style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue),
      ),
    );
  }
}
