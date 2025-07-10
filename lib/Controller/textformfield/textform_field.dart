import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final double? width;
  final String? labelText;

  CustomTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      this.width,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 343,
      child: TextFormField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hintText,
            labelText: labelText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
          )),
    );
  }
}
