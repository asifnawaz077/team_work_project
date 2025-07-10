import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_5.dart';

class SignupView4 extends StatefulWidget {
  SignupView4({super.key});

  @override
  State<SignupView4> createState() => _SignupView4State();
}

class _SignupView4State extends State<SignupView4> {
  TextEditingController passwordController = TextEditingController();
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasSymbol = false;
  bool isObscure = true;

  void _validatePassword(String password) {
    setState(() {
      hasMinLength = password.length >= 8;
      hasNumber = RegExp(r'[0-9]').hasMatch(password);
      hasSymbol = RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
            SizedBox(height: screenWidth * 0.12),
            Row(
              children: [
                SizedBox(width: screenWidth * 0.04),
                CustomText(
                  label: 'Password',
                  size: 16,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                ),
              ],
            ),
            Center(
              child: Container(
                height: 48,
                width: screenWidth * 0.9,
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black26),
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: isObscure,
                  onChanged: _validatePassword,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 8,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: hasMinLength && hasNumber && hasSymbol
                    ? Color(0xFF498200)
                    : Colors.grey.shade300,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRuleTile("8 characters minimum", hasMinLength),
                SizedBox(height: 5),
                _buildRuleTile("a number", hasNumber),
                SizedBox(height: 5),
                _buildRuleTile("one symbol minimum", hasSymbol),
              ],
            ),
            SizedBox(height: 20),
            BlueButtonWidget(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupView5()));
                },
                text: 'Continue'),
            SizedBox(height: screenWidth * 0.5),
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

  Widget _buildRuleTile(String text, bool conditionMet) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.radio_button_checked,
            color: conditionMet ? Color(0xFF498200) : Colors.grey,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
