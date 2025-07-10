import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class SignupView4 extends StatelessWidget {
  SignupView4({super.key});
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_rounded,
        ),
        title: CustomText(
          label: 'Create your password 3 / 3',
          size: 20,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CustomText(
                    label: 'Password',
                    size: 16,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost),
              ],
            ),
            CustomTextField(
              hintText: 'password',
              controller: passwordController,
              isPassword: true,
            )
          ],
        ),
      ),
    );
  }
}
