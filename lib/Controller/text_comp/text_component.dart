import 'package:flutter/material.dart';

enum TextSize { small, medium, large }

class CustomText extends StatelessWidget {
  final String label;
  final TextSize size;
  final FontWeight weight;
  final Color? color;

  final TextStyle Function({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  }) fontType;

  const CustomText({
    super.key,
    required this.label,
    required this.size,
    this.color,
    required this.weight,
    required this.fontType,
  });

  double _getFontSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isDesktop = screenWidth >= 1024;

    if (isMobile) {
      switch (size) {
        case TextSize.small:
          return 12;
        case TextSize.medium:
          return 16;
        case TextSize.large:
          return 20;
      }
    } else if (isTablet) {
      switch (size) {
        case TextSize.small:
          return 14;
        case TextSize.medium:
          return 18;
        case TextSize.large:
          return 24;
      }
    } else if (isDesktop) {
      switch (size) {
        case TextSize.small:
          return 16;
        case TextSize.medium:
          return 22;
        case TextSize.large:
          return 28;
      }
    }

    return 16; // fallback
  }

  @override
  Widget build(BuildContext context) {
    double fontSize = _getFontSize(context);

    return Text(
      label,
      style: fontType(
        fontSize: fontSize,
        fontWeight: weight,
        color: color ?? Colors.black,
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CustomText extends StatelessWidget {
//   final String label;
//   final double size;               // 👈 for fontSize
//   final FontWeight weight;         // 👈 for fontWeight
//   final Color? color;
//   final TextStyle Function({
//   double? fontSize,
//   FontWeight? fontWeight,
//   Color? color,
//   }) fontType;
//   CustomText({super.key, required this.label,required this.size,this.color,required this.weight,required this.fontType});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(label, style: fontType(
//       fontSize: size,
//       fontWeight: weight,
//       color: color ?? Colors.black,
//     ),);
//   }
// }
