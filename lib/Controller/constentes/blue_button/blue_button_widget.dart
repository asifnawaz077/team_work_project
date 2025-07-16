import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/app_color/app_color.dart';

// ignore: must_be_immutable
class BlueButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  BlueButtonWidget({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 343,
        decoration: BoxDecoration(
          color: AppColor.btnColorBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.jost(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.btnColorWhite,
            ),
          ),
        ),
      ),
    );
  }
}
