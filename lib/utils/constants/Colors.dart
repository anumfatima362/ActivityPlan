import 'package:flutter/material.dart';


class AppColors{
    AppColors._(); 
   static Color transparent = const Color(0x00000000);
   static Color white = const Color(0xFFFFFFFF);
   static Color green = const Color(0xFF31AEB6);
   static Color black = const Color(0xFF343434);
   static Color lightgrey = const Color(0xFFF1F1F1);



   







   // Define gradient colors
  static const Gradient blueGradient = LinearGradient(
    colors: [
        Color(0xFF0774AB),
        Color(0xFF31AEB6),
       ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );




}