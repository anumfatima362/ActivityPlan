import 'dart:ui';

import 'package:activityplan/utils/constants/Colors.dart';
import 'package:activityplan/utils/widgets/Text/custom_text.dart';
import 'package:activityplan/utils/widgets/Textfield_Widget/Textfield.dart';
import 'package:activityplan/utils/widgets/size.configration.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 8*SizeConfig.heightMultiplier,),
         Center(
           child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5*SizeConfig.widthMultiplier),
           // color: Colors.black12,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               SvgPicture.asset('assets/images/my_car.svg',height: 80,),  
                 SizedBox(width: 3.5*SizeConfig.widthMultiplier,),
               Column(
                 children: [
                   SizedBox(height: 3.5*SizeConfig.heightMultiplier,),
                   Center(
                     child: CustomText(
                      text: "Activity Plan",
                      fontsize: 35,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'aristotelica',
                      colors: AppColors.green,
                      ),
                   ),
                 ],
               )
              ],
                   ),
           ),
         ) ,
        SizedBox(height:10*SizeConfig.heightMultiplier ,),
       
         Row(
           children: [
             SizedBox(width:2.5*SizeConfig.heightMultiplier ,),
             Align(
              alignment: Alignment.centerLeft,
              child: AutoSizeText.rich(
               TextSpan(
                children: <TextSpan> [
                TextSpan(
                  text: 'Welcome To\n ',
                  style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'aristotelica-light',
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  )
                ),
                 TextSpan(
                  text: 'Activity Plan ',
                  style: TextStyle(
                  fontSize: 40,
                  fontFamily: ' aristotelica',
                  fontWeight: FontWeight.w600,
                  color: AppColors.green,
                  ),
                ), 

                 TextSpan(
                  text: 'App',
                  style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'aristotelica-light',
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  ),
                ), 
                ]
                ),
                ),
              ),
              ],
              ),
         SizedBox(height: 4*SizeConfig.heightMultiplier,),

        //  Container(
        //  height: 7*SizeConfig.heightMultiplier, 
        //  width: 89*SizeConfig.widthMultiplier,
        //  decoration:  BoxDecoration(
        //  color: AppColors.green,
        //  borderRadius: const BorderRadius.all(
        //   Radius.circular(25)),
        //  ),
        //  child: const TextField(
        //  decoration:  InputDecoration(
        //   hintText: 'Email',
        // ),
        //  ),
        //  )  ,
      
      const CustomtextField()
        ],
      ),
    ),
    );
  }
}