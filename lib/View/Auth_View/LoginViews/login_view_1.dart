import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

class LoginView1 extends StatefulWidget {
  const LoginView1({super.key});

  @override
  State<LoginView1> createState() => _LoginView1State();
}

class _LoginView1State extends State<LoginView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
              child: Image.asset(
            'assets/splash.img.png',
          )),
          CustomText(
            label: 'Protect your legacy',
            size: 17.0,
            weight: FontWeight.bold,
            fontType: GoogleFonts.jost,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
