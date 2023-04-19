import 'package:book_explore_and_sale_app/common/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppThemeConfig {
  static ThemeData themeConfig() {
    return ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          extendedTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white),
          backgroundColor: MyColors.primaryColor,
          foregroundColor: Colors.white),
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.urbanistTextTheme(
        const TextTheme(
            headline4: TextStyle(
                fontWeight: FontWeight.w800,
                color: MyColors.primaryTextColor,
                fontSize: 20),
            subtitle1: TextStyle(
                fontWeight: FontWeight.w600,
                color: MyColors.primaryTextColor,
                fontSize: 10),
            caption: TextStyle(
                fontWeight: FontWeight.w600,
                color: MyColors.secondaryTextColor,
                fontSize: 8),
            subtitle2: TextStyle(
                fontWeight: FontWeight.w600,
                color: MyColors.secondaryTextColor,
                fontSize: 10),
            headline6: TextStyle(
                fontWeight: FontWeight.w500,
                color: MyColors.primaryTextColor,
                fontSize: 14),
            bodyText2: TextStyle(
                fontWeight: FontWeight.w400,
                color: MyColors.secondaryTextColor,
                fontSize: 12),
            button: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: Colors.white,
            ),
            headline5: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.black)),
      ),
    );
  }
}
