import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_3.dart';

class SignupView2 extends StatelessWidget {
  SignupView2({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_rounded,
        ),
        title: CustomText(
          label: 'Add your email 1 / 3',
          size: TextSize.extralarge,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  CustomText(
                    label: 'Email',
                    size: TextSize.medium,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              CustomTextField(
                hintText: 'alexalexander@gmail.com',
                controller: emailController,
              ),
              SizedBox(height: height * 0.03),
              Center(
                child: BlueButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupView3()),
                    );
                  },
                  text: 'Create an account',
                ),
              ),
              SizedBox(height: height * 0.45),
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
      ),
    );
  }
}
