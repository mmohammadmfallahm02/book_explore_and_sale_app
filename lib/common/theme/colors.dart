import 'package:flutter/material.dart';

abstract class MyColors {
  static const Color primaryColor = Color(0xffE49527);
  static const Color primaryVariantColor = Color(0xff165C73);
  static const Color secondaryColor = Color(0xff979797);
  static const Color primaryTextColor = Color(0xff165C73);
  static const Color secondaryTextColor = Color(0xff979797);
}

abstract class MyExclusiveColors {
  static const iconColor = Colors.black;
  static const searchBarColor = Color(0xffF6F5FA);
  static const inActiveDotIndicatorColor = Color(0xffD9D9D9);
  static const posterButtonTextColor = Color(0xffF89182);
}

abstract class MyGradient {
  static const List<Color> bookPageDetailsGradient = [
    Color(0xffffffff),
    Color.fromARGB(120, 255, 255, 255),
  ];
}
