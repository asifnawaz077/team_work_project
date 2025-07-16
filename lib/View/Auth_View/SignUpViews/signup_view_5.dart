import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_6.dart';

class SignupView5 extends StatelessWidget {
  const SignupView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Image.asset(
                'assets/Vector.png',
                height: 85,
                width: 85,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            CustomText(
                label: 'Your account ',
                size: TextSize.extralarge,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost),
            CustomText(
                label: 'was successfully created! ',
                size: TextSize.extralarge,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost),
            SizedBox(
              height: 30,
            ),
            BlueButtonWidget(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupView6()));
                },
                text: 'Login'),
            SizedBox(
              height: 150,
            ),
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
