import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

class SignupView1 extends StatelessWidget {
  const SignupView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CustomText(
                  label: 'Create new account',
                  size: 20,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost),
            ),
            SizedBox(
              height: 90,
            ),
            CustomText(
                label: 'Begin with creating new free account.',
                size: 16,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost),
            SizedBox(
              height: 30,
            ),
            BlueButtonWidget(onPressed: () {}, text: 'Confirm with email'),
            SizedBox(
              height: 20,
            ),
            CustomText(
                label: 'or',
                size: 16,
                weight: FontWeight.w600,
                fontType: GoogleFonts.roboto),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Apple.png'),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                          label: 'Continue with Apple',
                          size: 14,
                          weight: FontWeight.w500,
                          fontType: GoogleFonts.jost)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Facebook.png'),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                          label: 'Continue with Facebook',
                          size: 14,
                          weight: FontWeight.w500,
                          fontType: GoogleFonts.jost)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 343,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all()),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Google.png'),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                          label: 'Continue with Google',
                          size: 14,
                          weight: FontWeight.w500,
                          fontType: GoogleFonts.jost)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            CustomText(
                label: 'By using Solvbox, you agree to the',
                size: 14,
                weight: FontWeight.w600,
                fontType: GoogleFonts.roboto),
            CustomText(
                label: 'Terms and Privacy Policy.',
                size: 14,
                weight: FontWeight.w600,
                fontType: GoogleFonts.roboto),
          ],
        ),
      ),
    );
  }
}
