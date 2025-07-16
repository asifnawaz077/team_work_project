import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:team_work_project/Controller/app-router/app-router-configuration.dart';
import 'package:team_work_project/View/Auth_View/Splash_View/Splash_View.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter
    );
  }
}
