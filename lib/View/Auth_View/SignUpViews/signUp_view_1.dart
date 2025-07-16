import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_2.dart';

class SignupView1 extends StatelessWidget {
  const SignupView1({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          label: 'Create new account',
          size: TextSize.extralarge,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.08),
            Center(
              child: CustomText(
                label: 'Begin with creating new free account.',
                size: TextSize.medium,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: height * 0.04),
            BlueButtonWidget(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupView2()));
              },
              text: 'Continue with email',
            ),
            SizedBox(height: height * 0.025),
            CustomText(
              label: 'or',
              size: TextSize.medium,
              weight: FontWeight.w600,
              fontType: GoogleFonts.roboto,
            ),
            SizedBox(height: height * 0.025),

            // Apple Button
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.075,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Apple.png'),
                      SizedBox(width: width * 0.03),
                      CustomText(
                        label: 'Continue with Apple',
                        size: TextSize.small,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            // Facebook Button
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.075,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Facebook.png'),
                      SizedBox(width: width * 0.03),
                      CustomText(
                        label: 'Continue with Facebook',
                        size: TextSize.small,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.015),

            // Google Button
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.075,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Google.png'),
                      SizedBox(width: width * 0.03),
                      CustomText(
                        label: 'Continue with Google',
                        size: TextSize.small,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.15),
            CustomText(
              label: 'By using Solvbox, you agree to the',
              size: TextSize.small,
              weight: FontWeight.w600,
              fontType: GoogleFonts.roboto,
            ),
            CustomText(
              label: 'Terms and Privacy Policy.',
              size: TextSize.small,
              weight: FontWeight.w600,
              fontType: GoogleFonts.roboto,
            ),
          ],
        ),
      ),
    );
  }
}
