import 'package:activityplan/MVVM/views/auth/Sign_In_screen.dart';
import 'package:flutter/material.dart';
import '../MVVM/views/IntroductionScreen/Intro_screen.dart';
import '../MVVM/views/SplashScreen/splash_screen.dart';



  class RouterHelper {
  static const initial = "/";
  static const introductionScreen = "/introductionscreen";
  static const signIn = "/signInscreen";



   static Map<String, Widget Function(BuildContext context)> routes  =  {
   initial: (context) => const SplashScreen(),
   introductionScreen: (context) => const IndroductionScreen(),
   signIn: (context) => const SignIn(),

   };



}