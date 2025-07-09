import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double size;               // 👈 for fontSize
  final FontWeight weight;         // 👈 for fontWeight
  final Color? color;
  final TextStyle Function({ // 👈 ye important hai
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  }) fontType;
  CustomText({super.key, required this.label,required this.size,this.color,required this.weight,required this.fontType});

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
