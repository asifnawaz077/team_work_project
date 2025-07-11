import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';
import 'package:team_work_project/View/Home_View/top_experts.dart';

class SignupView7 extends StatelessWidget {
  SignupView7({super.key});
  final TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth * 0.04; // similar to 15 on 375 width

    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackIcon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_rounded,
        ),
        title: CustomText(
          label: 'Problem Solver',
          size: 20,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              _buildLabel('Full Name'),
              CustomTextField(
                  hintText: 'Alex Alexander', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('User Name'),
              CustomTextField(
                  hintText: '@alex Alexander', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('Postal Code'),
              CustomTextField(
                  hintText: '00124', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('Industry'),
              CustomTextField(
                  hintText: 'Designing', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('Company Name'),
              CustomTextField(
                  hintText: 'Solvbox', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('Phone number'),
              CustomTextField(
                  hintText: '001 123 456', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('Website'),
              CustomTextField(
                  hintText: 'www.website.com', controller: fullNameController),
              const SizedBox(height: 15),
              _buildLabel('How do you help your clients?'),
              CustomTextField(
                  hintText: 'Answer', controller: fullNameController),
              const SizedBox(height: 50),
              BlueButtonWidget(onPressed: () {}, text: 'Apply now'),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: CustomText(
        label: label,
        size: 16,
        weight: FontWeight.w400,
        fontType: GoogleFonts.jost,
      ),
    );
  }
}
