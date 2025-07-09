import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

import '../../../Controller/text_comp/text_component.dart';

class LoginView4 extends StatefulWidget {
  const LoginView4({super.key});

  @override
  State<LoginView4> createState() => _LoginView4State();
}

class _LoginView4State extends State<LoginView4> {
  TextEditingController emailController=TextEditingController();
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
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomText(
              label: 'We will email you',
              size: 16,
              weight: FontWeight.w400,
              fontType: GoogleFonts.roboto,
              color: Color(0xff27252E),
            ),
            CustomText(label: 'a link to reset your passsword', size: 16, weight: FontWeight.w400, fontType: GoogleFonts.roboto),
            SizedBox(height: 40,),
            CustomTextField(hintText: 'alexalexander@gmail.com', controller:emailController,labelText: 'Email', ),
            SizedBox(height: 25,),
            BlueButtonWidget(onPressed: (){}, text: 'Send'),
            SizedBox(
              height: 238,
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
