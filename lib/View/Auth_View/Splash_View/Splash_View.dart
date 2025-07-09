import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

import 'package:team_work_project/View/Auth_View/SignUpViews/signUp_view_1.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignupView1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/splash.img.png"),
            SizedBox(
              height: 20,
            ),
            CustomText(
                label: 'Protect your Legacy',
                size: 17,
                weight: FontWeight.w800,
                fontType: GoogleFonts.jost)
          ],
        ),
      ),
    );
  }
}
