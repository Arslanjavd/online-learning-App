import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class OtpFoam extends StatelessWidget {
  const OtpFoam(
      {required this.validator,
      super.key,
      this.otp,
      this.onChanged,
      this.a = 5});
  final String? Function(String?)? validator;
  final TextEditingController? otp;
  final void Function(String)? onChanged;
  final int? a;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.1,
      width: width * 0.12,
      child: TextFormField(
        onChanged: onChanged ??
            (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
        controller: otp,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        validator: validator,
      ),
    );
  }
}
