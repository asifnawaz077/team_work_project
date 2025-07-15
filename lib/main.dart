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
<<<<<<< Updated upstream
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart ' as types;
import 'package:team_work_project/View/profile_solvers_view/profile_solver_1.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_2.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_3.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_4.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_5.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_6.dart';

=======
>>>>>>> Stashed changes


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< Updated upstream

      debugShowCheckedModeBanner: false,
      home: ProfileSolver1()//ChatSplash()//HomeView2()//SplashView(),
    );
=======
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: ProfileSeeker1()//ProfileSeeker2()//LoginView1()//LoginView4()//LoginView3()//LoginView2()//SplashView()
     );
>>>>>>> Stashed changes
  }
}
