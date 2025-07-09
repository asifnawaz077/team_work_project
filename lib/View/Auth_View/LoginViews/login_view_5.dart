import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/text_comp/text_component.dart';

class LoginView5 extends StatefulWidget {
  const LoginView5({super.key});

  @override
  State<LoginView5> createState() => _LoginView5State();
}

class _LoginView5State extends State<LoginView5> {
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
            SizedBox(height: 30,),
            Image.asset('assets/reset.png'),
            C
          ],
        ),
      ),
    );
  }
}
