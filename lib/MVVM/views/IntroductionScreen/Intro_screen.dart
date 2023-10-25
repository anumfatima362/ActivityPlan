
import 'package:activityplan/helper/router_helper.dart';
import 'package:activityplan/utils/constants/Colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/widgets/size.configration.dart';


class IndroductionScreen  extends StatelessWidget {
  const IndroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 5*SizeConfig.heightMultiplier,),  

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
             Container(
                 height: MediaQuery.of(context).size.height/10,
                 width:  MediaQuery.of(context).size.width/1.1,
            
               // color: Colors.black45,
                child: AutoSizeText.rich(
                  TextSpan(
                    text: 'Set Your ', 
                    style: TextStyle(
                    fontSize: 5* SizeConfig.textMultiplier,
                    fontWeight:  FontWeight.w400,
                    fontFamily: "aristotelica-light",
                    color: AppColors.black,
                    ),
                  children: <TextSpan>[
                    TextSpan(
                      text:'Daily Task \n',
                      style: TextStyle(
                      fontSize: 5* SizeConfig.textMultiplier,
                       fontWeight: FontWeight.w600,
                        fontFamily: "aristotelica",
                        color: AppColors.green,
                      ),
                     ),
                    TextSpan(
                    text:'Track Your',
                    style: TextStyle(
                    fontSize: 5* SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w400,
                    fontFamily: "aristotelica-light",
                    color: AppColors.black, 
                   ),
                  ),
                  TextSpan(
                    text:' Goals',
                    style: TextStyle(
                    fontSize: 5* SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w600,
                    fontFamily: "aristotelica",
                    color: AppColors.green, 
                   ),
                  ),
                 ],
                      ),
                   maxLines: 2,
                  //overflow: TextOverflow.ellipsis,
                  
                  ),
              ),
            ],
          ),

          SizedBox(
          height: 3*SizeConfig.heightMultiplier,
          ),

           Container(
              height: MediaQuery.of(context).size.height/10,
              width:  MediaQuery.of(context).size.width/1.1,
              //color: Colors.black12,
              child: AutoSizeText(
                       'Set, track, and conquer your daily goals. Maximize productivity, stay focused, and achieve greatness.',
                       //textAlign: TextAlign.center,
                       style: TextStyle(
                       fontSize: 2.3*SizeConfig.textMultiplier,
                       color: AppColors.black,
                       ),
                     ),
            ),
           Container(
            height: MediaQuery.of(context).size.height/2 ,
            width: MediaQuery.of(context).size.width/1.1,
            color: Colors.black12,
            child: Stack(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height/2.5 ,
                  //width: 352,
                  decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage("assets/images/playlist.png")
                    )
                  ),
                ),
                 Positioned(
                  top: 200,
                  left: 120,
                   child: Container(
                    height: MediaQuery.of(context).size.height/3.5,
                    width: 230,
                     //color: Colors.blue,
                    child: Align(
                   alignment: Alignment.bottomRight,
                             child: SvgPicture.asset('assets/images/deliveryperson.svg')),
                                 ),
                 ),
              ],
            ),
           ),
           
             const SizedBox(height: 20,),

                 Align(
                 alignment: Alignment.bottomRight,
                 child: GestureDetector(
                 onDoubleTap: (){
                 Navigator.pushNamed(context, RouterHelper.signIn);
                },           
                 child: SvgPicture.asset('assets/images/Button(2).svg'))),      
          ]
        )
    ),
    );
  }
}