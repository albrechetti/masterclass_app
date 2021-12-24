import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFD6DFE4),
  primaryColor: const Color(0xff055AA3),
  backgroundColor: const Color(0xFFEDF4F8),
  shadowColor: const Color(0xFFEDF4F8),
  highlightColor: const Color(0xff121517),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w600,
      color: const Color(0xff121517),
    ),
    headline2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.poppins().fontFamily,
      color: const Color(0xff121517),
    ),
    bodyText1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      color: const Color(0xff121517),
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      color: const Color(0xFf51565A),
    ),
  ),
);
