import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_5.dart';

import '../../../Controller/text_comp/text_component.dart';

class LoginView4 extends StatefulWidget {
  const LoginView4({super.key});

  @override
  State<LoginView4> createState() => _LoginView4State();
}

class _LoginView4State extends State<LoginView4> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          label: 'Reset password',
          size: 20.0,
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
              CustomText(
                label: 'We will email you',
                size: 16,
                weight: FontWeight.w400,
                fontType: GoogleFonts.roboto,
                color: Color(0xff27252E),
              ),
              CustomText(
                  label: 'a link to reset your passsword',
                  size: 16,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.roboto),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  CustomText(label: 'Email', size: 16, weight: FontWeight.w400, fontType: GoogleFonts.jost),
                ],
              ),
              SizedBox(height: 5,),
              CustomTextField(
                hintText: 'alexalexander@gmail.com',
                controller: emailController,
              ),
              SizedBox(
                height: 25,
              ),
              BlueButtonWidget(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView5()));}, text: 'Send'),
              SizedBox(
                height: 350,
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
      ),
    );
  }
}
