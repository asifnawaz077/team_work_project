import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final IconData? prefixIcon;

  CustomTextField(
      {super.key,
        required this.label,
        required this.hintText,
        required this.controller,
        this.isPassword = false,
        this.keyboardType = TextInputType.text,
        this.prefixIcon,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.jost(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xff121A2C),
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 8,
        ),
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
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
            )),
        SizedBox(height: 16,),
      ],
    );
  }
}
