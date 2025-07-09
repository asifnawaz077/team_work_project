import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class SignupView2 extends StatelessWidget {
  SignupView2({super.key});
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back_rounded),
        title: CustomText(
            label: 'Add your email 1 / 3',
            size: 20,
            weight: FontWeight.w400,
            fontType: GoogleFonts.jost),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: CustomTextField(
                  hintText: 'alexalexander@gmail.com',
                  controller: emailController),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: BlueButtonWidget(
                    onPressed: () {}, text: 'Create an account')),
            SizedBox(
              height: 410,
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
