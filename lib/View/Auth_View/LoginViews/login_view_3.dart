import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_4.dart';

import '../../../Controller/text_comp/text_component.dart';

class LoginView3 extends StatefulWidget {
  const LoginView3({super.key});

  @override
  State<LoginView3> createState() => _LoginView3State();
}

class _LoginView3State extends State<LoginView3> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                height: 80,
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  CustomText(label: 'Email', size: TextSize.medium, weight: FontWeight.w400, fontType: GoogleFonts.jost),
                ],
              ),
              SizedBox(height: 5,),
              CustomTextField(
                hintText: 'alexalexander@gmail.com',
                controller: emailController,
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  CustomText(label: 'Password', size: TextSize.medium, weight: FontWeight.w400, fontType: GoogleFonts.jost),
                ],
              ),
              SizedBox(height: 5,),
              CustomTextField(
                hintText: '********',
                controller: passwordController,
              ),
              SizedBox(
                height: 30,
              ),
              BlueButtonWidget(onPressed: () {}, text: 'Log in'),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView4()));
                },
                child: CustomText(
                    label: 'Forgot password?',
                    size: TextSize.small,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost),
              ),
              SizedBox(
                height: 245,
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
