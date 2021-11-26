import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static final ThemeData theme = ThemeData(
    primaryColor: const Color(0xFF0000FF),
    primaryColorDark: const Color(0xFFE76901),
    scaffoldBackgroundColor: const Color(0xFFE5E5E5),
    backgroundColor: Colors.white,
    canvasColor: const Color(0xFFCECECE),
    cardColor: const Color(0xFF737375),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF0000FF),
      disabledColor: Color(0xFFE5E5E5),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: const Color(0xFF0000FF),
      selectionColor: const Color(0xFF0000FF).withOpacity(0.5),
      selectionHandleColor: const Color(0xFF0000FF),
    ),
    colorScheme: const ColorScheme(
      primary: Color(0xFF0000FF),
      primaryVariant: Color(0xFFE76901),
      secondary: Color(0xFF0000FF),
      secondaryVariant: Color(0xFFE76901),
      surface: Colors.red,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Color(0xFF0000FF),
      onSecondary: Color(0xFF0000FF),
      onSurface: Color(0xFF0000FF),
      onBackground: Colors.white,
      onError: Colors.red,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      headline1: const TextStyle(
        fontFamily: 'Noah',
        color: Colors.black,
        fontSize: 25,
      ),
      headline2: const TextStyle(
        fontFamily: 'Noah',
        color: Colors.black,
        fontSize: 22,
      ),
      headline3: const TextStyle(
        fontFamily: 'Noah',
        color: Colors.black,
        fontSize: 20,
      ),
      headline4: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
      headline5: GoogleFonts.roboto(color: Colors.black, fontSize: 16),
      headline6: GoogleFonts.roboto(color: Colors.black, fontSize: 14),
    ),
  );
}
