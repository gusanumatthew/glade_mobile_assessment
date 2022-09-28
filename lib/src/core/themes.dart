import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static _themeData(ColorScheme colorScheme) => ThemeData(
        iconTheme: _iconThemeData(colorScheme),
        colorScheme: colorScheme,
        textTheme: GoogleFonts.overpassTextTheme(
          _textTheme(colorScheme),
        ),
      );

  static final ColorScheme _lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: AppColors.lightBlue,
    onPrimary: AppColors.light,
    secondary: AppColors.deep,
    onBackground: AppColors.dark,
    onSurface: AppColors.icon,
  );
  static IconThemeData _iconThemeData(ColorScheme colorScheme) =>
      IconThemeData(color: colorScheme.onPrimary);

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        headline1: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.w400,
          color: colorScheme.onPrimary,
        ),
        headline2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
          color: colorScheme.onBackground,
        ),
        headline3: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: colorScheme.onPrimary,
        ),
        headline4: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: colorScheme.onPrimary),
        headline5: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground,
        ),
        headline6: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colorScheme.onPrimary,
        ),
        overline: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: colorScheme.onPrimary,
        ),
        subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: colorScheme.onBackground),
        subtitle2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground,
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.primary,
        ),
        button: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
      );
}
