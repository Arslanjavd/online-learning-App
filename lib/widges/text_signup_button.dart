import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/signup/sing_up.dart';

class TextSignupButton extends StatelessWidget {
  const TextSignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUp(),
            ));
      },
      child: const Text(
        "Sign Up",
        style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decorationColor: Colors.blue),
      ),
    );
  }
}
