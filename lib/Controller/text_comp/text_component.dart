import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String label;
  final headingStyle = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff27252E)
  );

  final subheadingStyle = GoogleFonts.jost(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff000000),
  );
  CustomText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,);
  }
}
