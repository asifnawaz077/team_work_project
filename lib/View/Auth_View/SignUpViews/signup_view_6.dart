import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/app_color/app_color.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_7.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_8.dart';

class SignupView6 extends StatelessWidget {
  const SignupView6({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.12),
            Center(
              child: Image.asset(
                'assets/splash.img.png',
                width: screenWidth * 0.6,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              label: 'Protect your Legacy',
              size: TextSize.large,
              weight: FontWeight.w700,
              fontType: GoogleFonts.jost,
            ),
            SizedBox(height: screenHeight * 0.10),
            CustomText(
              label: 'Welcome to Solvbox',
              size: TextSize.extralarge,
              weight: FontWeight.w400,
              fontType: GoogleFonts.jost,
            ),
            SizedBox(height: screenHeight * 0.04),
            BlueButtonWidget(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupView7()));
                },
                text: 'Apply as Problem Solver'),
            SizedBox(height: screenHeight * 0.015),

            // ✅ Responsive container with approx 343 width
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupView8()));
              },
              child: Container(
                height: 60,
                width: screenWidth * 0.955, // same as 343 / 375
                decoration: BoxDecoration(
                  color: const Color(0xFFC0C0C0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: CustomText(
                    label: 'Continue as Problem Sseeker',
                    color: Colors.white,
                    size: TextSize.medium,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  label: 'Already have an account?',
                  size: TextSize.extralarge,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.btnColorBlack,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
