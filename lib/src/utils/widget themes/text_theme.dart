import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_apk/src/constants/colors.dart';

class TAppTextTheme {
  TAppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 34,
      color: tWhiteColor,
    ),
    titleSmall: GoogleFonts.poppins(fontSize: 18, color: tWhiteColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 34,
      color: tWhiteColor,
    ),
    titleSmall: GoogleFonts.poppins(fontSize: 18, color: tWhiteColor),
  );
}
