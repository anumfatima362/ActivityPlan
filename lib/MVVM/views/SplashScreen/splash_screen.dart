import 'dart:async';
import 'package:activityplan/utils/constants/images.dart';

import '../IntroductionScreen/Intro_screen.dart';
import 'package:activityplan/utils/constants/Colors.dart';
import 'package:activityplan/utils/widgets/size.configration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/widgets/Text/custom_text.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


 @override
 void initState() {
   super.initState();
   Timer(const Duration(seconds: 3), () {
    Navigator.pushReplacement( context, MaterialPageRoute(builder: (BuildContext context) => const IndroductionScreen()));
   }
   );
   }
    
    
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.blueGradient,
           ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.logo,height: 100,),
                ],
              ),
              SizedBox(
                height: 5*SizeConfig.widthMultiplier,
              ),
              CustomText(
              text: 'Activity Plan',
              colors: AppColors.white,
              fontFamily: "aristotelica",
              fontWeight: FontWeight.w600,
              fontsize: 40,
              ),
            ],
          )),
    );
  }
}
