import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final IconData? prefixIcon;

  CustomTextField(
      {super.key,
        required this.hintText,
        required this.controller,
        this.isPassword = false,
        this.keyboardType = TextInputType.text,
        this.prefixIcon,});

  @override
  Widget build(BuildContext context) {
    return
        TextFormField(
            controller: controller,
            obscureText: isPassword,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon!=null?Icon(prefixIcon):null,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
            ));
  }
}
