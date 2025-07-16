import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_1.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_2.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_3.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_4.dart';
import 'package:team_work_project/View/Auth_View/LoginViews/login_view_5.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signUp_view_1.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_2.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_3.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_4.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_5.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_6.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_7.dart';
import 'package:team_work_project/View/Auth_View/SignUpViews/signup_view_8.dart';
import 'package:team_work_project/View/Auth_View/Splash_View/Splash_View.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/Home_pages/home_view_1.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/Home_pages/top_experts.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-1.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-2.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-3.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_1.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_2.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_3.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_4.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_1.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_2.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_3.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_4.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_5.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_6.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProfileSolver1(),
    ),
    GoRoute(
      path: '/pf2',
      builder: (context, state) => const ProfileSolver2(),
    ),
    GoRoute(
      path: '/pf3',
      builder: (context, state) => const ProfileSolver3(),
    ),
    GoRoute(
      path: '/pf4',
      builder: (context, state) => const ProfileSolver4(),
    ),
    GoRoute(
      path: '/pf5',
      builder: (context, state) => const ProfileSolver5(),
    ),
    GoRoute(
      path: '/pf6',
      builder: (context, state) => const ProfileSolver6(),
    ),
    GoRoute(
      path: '/ps1',
      builder: (context, state) => const ProfileSeeker1(),
    ),
    GoRoute(
      path: '/ps2',
      builder: (context, state) => const ProfileSeeker2(),
    ),
    GoRoute(
      path: '/ps3',
      builder: (context, state) => const ProfileSeeker3(),
    ),
    GoRoute(
      path: '/ps4',
      builder: (context, state) => const ProfileSeeker4(),
    ),
    GoRoute(
      path: '/cs1',
      builder: (context, state) => const ChatScreen1(),
    ),
    GoRoute(
      path: '/cs2',
      builder: (context, state) => const ChatScreen2(),
    ),
    GoRoute(
      path: '/cs3',
      builder: (context, state) => const ChatScreen3(),
    ),
    GoRoute(
      path: '/lv1',
      builder: (context, state) => const LoginView1(),
    ),
    GoRoute(
      path: '/lv2',
      builder: (context, state) => const LoginView2(),
    ),
    GoRoute(
      path: '/lv3',
      builder: (context, state) => const LoginView3(),
    ),
    GoRoute(
      path: '/lv4',
      builder: (context, state) => const LoginView4(),
    ),
    GoRoute(
      path: '/lv5',
      builder: (context, state) => const LoginView5(),
    ),
    GoRoute(
      path: '/suv1',
      builder: (context, state) => const SignupView1(),
    ),
    GoRoute(
      path: '/suv2',
      builder: (context, state) =>  SignupView2(),
    ),
    GoRoute(
      path: '/suv3',
      builder: (context, state) => const SignupView3(),
    ),
    GoRoute(
      path: '/suv4',
      builder: (context, state) => SignupView4(),
    ),
    GoRoute(
      path: '/suv5',
      builder: (context, state) => const SignupView5(),
    ),
    GoRoute(
      path: '/suv6',
      builder: (context, state) => const SignupView6(),
    ),
    GoRoute(
      path: '/suv7',
      builder: (context, state) => SignupView7(),
    ),
    GoRoute(
      path: '/suv8',
      builder: (context, state) => SignupView8(),
    ),
    GoRoute(
      path: '/sv',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/hv1',
      builder: (context, state) => const HomeView1(),
    ),
    GoRoute(
      path: '/Te',
      builder: (context, state) => const TopExperts(),
    ),
  ],
);