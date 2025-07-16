import 'package:flutter/material.dart';
import 'package:team_work_project/View/Auth_View/Splash_View/Splash_View.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
