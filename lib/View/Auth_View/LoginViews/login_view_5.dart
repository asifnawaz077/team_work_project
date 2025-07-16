import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';

import '../../../Controller/text_comp/text_component.dart';

class LoginView5 extends StatefulWidget {
  const LoginView5({super.key});

  @override
  State<LoginView5> createState() => _LoginView5State();
}

class _LoginView5State extends State<LoginView5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          label: 'Reset password',
          size: TextSize.extralarge,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
          color: Color(0xff000000),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/reset.png'),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(
                label:
                    '                    We have sent an email\nto alexalexander@gmail.com with instruction\n                    to reset your password',
                size: TextSize.medium,
                weight: FontWeight.w400,
                fontType: GoogleFonts.roboto,
                color: Color(0xff27252E),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            BlueButtonWidget(onPressed: () {}, text: 'Back to login'),
            SizedBox(
              height: 290,
            ),
            CustomText(
                label: 'By using Solvbox, you agree to the',
                size: TextSize.small,
                weight: FontWeight.w600,
                fontType: GoogleFonts.roboto),
            CustomText(
                label: 'Terms and Privacy Policy.',
                size: TextSize.small,
                weight: FontWeight.w600,
                fontType: GoogleFonts.roboto),
          ],
        ),
      ),
    );
  }
}
