import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_2.dart';

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
            height: 170,
          ),
          Center(
              child: Image.asset(
            'assets/splash.img.png',
          )),
          SizedBox(height: 35,),
          CustomText(
            label: 'Protect your legacy',
            size: 17.0,
            weight: FontWeight.bold,
            fontType: GoogleFonts.jost,
            color: Colors.black,
          ),
          SizedBox(
            height: 70,
          ),
          CustomText(
            label: 'Welcome to Solvbox',
            size: 28,
            weight: FontWeight.w400,
            fontType: GoogleFonts.jost,
            color: Color(0xff000000),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: BlueButtonWidget(
              onPressed: () {},
              text: 'Continue as problem solver',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: BlueButtonWidget(
              onPressed: () {},
              text: 'Continue as problem seeker',
            ),
          ),
          SizedBox(height: 180,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                label: 'Already have a account?',
                size: 16,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost,
              ),
               InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView2()));},
                 child: CustomText(
                    label: ' Log in',
                    size: 16,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost),
               )
            ],
          )
        ],
      ),
    );
  }
}
