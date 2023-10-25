import 'package:activityplan/helper/router_helper.dart';
import 'package:activityplan/utils/widgets/size.configration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';


void main() {
    runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (BuildContext context) {
    return  const MyApp();
     },  
  )
  );    
//const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder: (context,  orientation){
             SizeConfig().init(constraints, orientation);
             return   MaterialApp(
               // ignore: deprecated_member_use
                useInheritedMediaQuery: true,
                locale: DevicePreview.locale(context),
                builder: DevicePreview.appBuilder,
                 debugShowCheckedModeBanner: false,
                 title: 'Flutter Demo',
                 theme: ThemeData(
                 colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.deepPurple),
                  ),
                 initialRoute: RouterHelper.initial, 
                  routes:RouterHelper.routes,
                 );
                  }
                 );
                }
                 );
                }
              }