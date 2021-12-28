import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xff121517),
  primaryColor: const Color(0xff055AA3),
  backgroundColor: const Color(0xff172026),
  shadowColor: const Color(0xff121517),
  highlightColor: const Color(0xFFEDF4F8),
  textTheme: TextTheme(
    button: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      color: const Color(0xFFEDF4F8),
    ),
    headline1: TextStyle(
      fontSize: 20,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFEDF4F8),
    ),
    headline2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.poppins().fontFamily,
      color: const Color(0xFFEDF4F8),
    ),
    bodyText1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      color: const Color(0xFFEDF4F8),
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      color: const Color(0xFf51565A),
    ),
  ),
);
