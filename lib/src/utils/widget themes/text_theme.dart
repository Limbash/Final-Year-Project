import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTextTheme {
  TAppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 34,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 18,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 34,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 18,
    ),
  );
}
