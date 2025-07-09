import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

class SignupView1 extends StatelessWidget {
  const SignupView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
                label: 'Create new account',
                size: 20,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost),
            SizedBox(
              height: 50,
            ),
            CustomText(
                label: 'Begin with creating new free account.',
                size: 16,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost)
          ],
        ),
      ),
    );
  }
}
