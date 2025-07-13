import 'package:flutter/material.dart';
import 'package:team_work_project/View/Auth_View/Splash_View/Splash_View.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_2.dart';
<<<<<<< Updated upstream
import 'package:team_work_project/View/Home_View/BottomNavigationBar/bottom_nav_bar.dart';
=======
import 'package:team_work_project/View/Home_View/BottomNavigationBar/Home_pages/home_view_1.dart';
>>>>>>> Stashed changes

import 'package:team_work_project/View/chat_screen/chat-screen-1.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-2.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_1.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_2.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_3.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_4.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart ' as types;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNav(),
    );
  }
}
