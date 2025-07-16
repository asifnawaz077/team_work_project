import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

import 'package:team_work_project/View/Auth_View/LoginViews/login_view_3.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({super.key});

  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          label: 'Log into account',
          size: TextSize.extralarge,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
          color: Color(0xff000000),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              CustomText(
                label: 'Welcome back!',
                size: TextSize.medium,
                weight: FontWeight.w400,
                fontType: GoogleFonts.roboto,
                color: Color(0xff27252E),
              ),
              CustomText(
                  label: ' Lets continue',
                  size: TextSize.medium,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.roboto),
              SizedBox(
                height: 40,
              ),
              BlueButtonWidget(
                  onPressed: () {
                    context.go('/lv3');
                  },
                  text: 'Continue with email'),
              SizedBox(
                height: 30,
              ),
              CustomText(
                label: 'or',
                size: TextSize.medium,
                weight: FontWeight.w500,
                fontType: GoogleFonts.roboto,
                color: Color(0xff605D67),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 343,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffC7C5CC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Apple.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with apple',
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff3A383F)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 343,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffC7C5CC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Facebook.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with facebook',
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff3A383F)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 343,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffC7C5CC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Google.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue with google',
                        style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff3A383F)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 175,
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
      ),
    );
  }
}
