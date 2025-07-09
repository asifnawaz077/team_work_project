import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

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
          size: 20.0,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
          color: Color(0xff000000),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomText(
            label: 'Welcome back!',
            size: 16,
            weight: FontWeight.w400,
            fontType: GoogleFonts.roboto,
            color: Color(0xff27252E),
          ),
          SizedBox(height: 40,),
          BlueButtonWidget(onPressed: (){}, text: 'Continue with email'),
          SizedBox(height: 50,),
          CustomText(label: 'or', size: 16, weight: FontWeight.w500, fontType: GoogleFonts.roboto,color: Color(0xff605D67),)
        ],
      ),
    );
  }
}
