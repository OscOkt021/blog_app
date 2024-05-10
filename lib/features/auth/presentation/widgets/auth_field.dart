import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
    this.isPassword = false,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: isPassword
            ? isObscureText
                ? const Icon(Icons.remove_red_eye)
                : const Icon(Icons.emergency_rounded)
            : null,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}
