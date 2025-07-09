import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String label;
  final headingStyle = GoogleFonts.jost();

  final subheadingStyle = GoogleFonts.roboto();
  CustomText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,);
  }
}
