import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, color: blackColor, fontWeight: FontWeight.bold),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w100),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, color: blackColor, fontWeight: FontWeight.w700)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: primary,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData();
}
