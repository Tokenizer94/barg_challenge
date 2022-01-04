import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: kPaletteColors[3],
      highlightColor: kPaletteColors[1].withOpacity(0.6),
      appBarTheme: AppBarTheme(
        elevation: 6.0,
        backgroundColor: kPaletteColors[3],
      ),
      colorScheme: ColorScheme.light(
        primary: kPaletteColors[0],
        secondary: kPaletteColors[1],
        background: kPaletteColors[3],
        surface: kPaletteColors[2],
      ),
      cardTheme: CardTheme(
        color: kPaletteColors[1],
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadius.r),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: kPaletteColors[2],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius.r),
            ),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kBorderRadius.r),
            ),
          ),
          side: BorderSide(width: 3, color: kPaletteColors[2]),
          elevation: 0,
        ),
      ),
    );
  }
}
