import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

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

  Widget buildOTPField(int index) {
    return Container(
      height: 48,
      width: 65,
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
        style: GoogleFonts.roboto(fontSize: 24),
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
          size: 20,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: CustomText(
                label: 'We just sent 5-digit code to',
                size: 16,
                weight: FontWeight.w400,
                fontType: GoogleFonts.roboto,
              ),
            ),
            CustomText(
              label: 'alexalexander@gmail.com, enter it below:',
              size: 16,
              weight: FontWeight.w400,
              fontType: GoogleFonts.roboto,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Code',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) => buildOTPField(index)),
            ),
            const SizedBox(height: 20),
            BlueButtonWidget(
              onPressed: () {
                final code = _controllers.map((c) => c.text).join();
                print("Entered code: $code");
              },
              text: 'Verify email',
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  label: 'Wrong email?',
                  size: 16,
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
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 285),
            CustomText(
              label: 'By using Solvbox, you agree to the',
              size: 14,
              weight: FontWeight.w600,
              fontType: GoogleFonts.roboto,
            ),
            CustomText(
              label: 'Terms and Privacy Policy.',
              size: 14,
              weight: FontWeight.w600,
              fontType: GoogleFonts.roboto,
            ),
          ],
        ),
      ),
    );
  }
}
