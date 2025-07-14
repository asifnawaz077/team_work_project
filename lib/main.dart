import 'package:flutter/material.dart';
import 'package:team_work_project/View/Auth_View/Splash_View/Splash_View.dart';

import 'package:team_work_project/View/Auth_View/LoginViews/login_view_2.dart';
import 'package:team_work_project/View/Home_View/home_view_1.dart';
import 'package:team_work_project/View/Home_View/home_view_2.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-1.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-2.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-3.dart';
import 'package:team_work_project/View/chat_screen/chat-splash.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_1.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_2.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_3.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_4.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart ' as types;
import 'package:team_work_project/View/profile_solvers_view/profile_solver_1.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_2.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_3.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_4.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_5.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ProfileSolver5()//ChatSplash()//HomeView2()//SplashView(),
    );
  }
}
