import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: kPaletteColors[3],
      highlightColor: kPaletteColors[1].withOpacity(0.6),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: kPaletteColors[3],
      ),
      colorScheme: ColorScheme.light(
        primary: kPaletteColors[0],
        secondary: kPaletteColors[1],
        background: kPaletteColors[3],
        surface: kPaletteColors[2],
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: kPaletteColors[2],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius),
            ),
          ),
          side: BorderSide(width: 3, color: kPaletteColors[2]),
          elevation: 0,
        ),
      ),
    );
  }
}