import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_1.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignupView1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/splash.img.png",
                height: height * 0.3,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: CustomText(
                  label: 'Protect your Legacy',
                  size: height * 0.025,
                  weight: FontWeight.w800,
                  fontType: GoogleFonts.jost,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
