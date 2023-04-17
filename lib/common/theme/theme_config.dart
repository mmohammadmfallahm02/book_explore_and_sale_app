import 'package:book_explore_and_sale_app/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppThemeConfig {
  MyAppThemeConfig._();

  static ThemeData themeConfig() {
    return ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          extendedTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white),
          backgroundColor: MyColors.primaryColor,
          foregroundColor: Colors.white),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: MyColors.primaryColor,
          unselectedItemColor: MyColors.secondaryColor,
          unselectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: MyColors.secondaryTextColor,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: MyColors.primaryTextColor,
          )),
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.urbanistTextTheme(TextTheme(
          headline6: const TextStyle(
              fontWeight: FontWeight.w800,
              color: MyColors.primaryTextColor,
              fontSize: 20),
          headline5: const TextStyle(
              fontWeight: FontWeight.w800,
              color: MyColors.primaryColor,
              fontSize: 20),
          subtitle1: const TextStyle(
              fontWeight: FontWeight.w600,
              color: MyColors.primaryTextColor,
              fontSize: 10),
          caption: const TextStyle(
              fontWeight: FontWeight.w600,
              color: MyColors.secondaryTextColor,
              fontSize: 8),
          subtitle2: const TextStyle(
              fontWeight: FontWeight.w600,
              color: MyColors.secondaryTextColor,
              fontSize: 10),
          headlineMedium: const TextStyle(
              fontWeight: FontWeight.w500,
              color: MyColors.primaryTextColor,
              fontSize: 14),
          bodyText2: const TextStyle(
              fontWeight: FontWeight.w400,
              color: MyColors.secondaryTextColor,
              fontSize: 12),
          button: const TextStyle(
              fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white),
          headlineSmall: const TextStyle(
              fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black))),
    );
  }
}
