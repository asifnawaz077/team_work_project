import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/app_color/app_color.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_4.dart';

class SignupView3 extends StatefulWidget {
  const SignupView3({super.key});

  @override
  State<SignupView3> createState() => _SignupView3State();
}

class _SignupView3State extends State<SignupView3> {
  final List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(5, (_) => TextEditingController());

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget buildOTPField(int index, double height, double width) {
    return Container(
      height: height * 0.06,
      width: width * 0.15,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(),
      ),
      child: TextFormField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: GoogleFonts.roboto(fontSize: height * 0.03),
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 4) {
            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
          }
          if (value.isEmpty && index > 0) {
            FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
          }
        },
      ),
    );
  }

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
          label: 'Verify your email 2 / 3',
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
              SizedBox(height: height * 0.035),
              Center(
                child: CustomText(
                  label: 'We just sent 5-digit code to',
                  size: TextSize.medium,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.roboto,
                ),
              ),
              CustomText(
                label: 'alexalexander@gmail.com, enter it below:',
                size: TextSize.medium,
                weight: FontWeight.w400,
                fontType: GoogleFonts.roboto,
              ),
              SizedBox(height: height * 0.025),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: Text(
                    'Code',
                    style: TextStyle(fontSize: height * 0.022),
                  ),
                ),
              ),
              SizedBox(height: height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    5, (index) => buildOTPField(index, height, width)),
              ),
              SizedBox(height: height * 0.03),
              BlueButtonWidget(
                onPressed: () {
                  context.go('/suv4');
                },
                text: 'Verify email',
              ),
              SizedBox(height: height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    label: 'Wrong email?',
                    size: TextSize.medium,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send to different email',
                      style: GoogleFonts.jost(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.btnColorBlack),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.28),
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
