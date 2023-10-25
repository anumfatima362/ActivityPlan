import 'package:flutter/material.dart';



// ignore: non_constant_identifier_names
Widget HeightSizedBox(BuildContext context, double height) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * height,
  );
}


// ignore: non_constant_identifier_names
Widget WidthSizedBox(BuildContext context, double width) {
  return SizedBox(
    width: MediaQuery.of(context).size.height * width,
  );
}
