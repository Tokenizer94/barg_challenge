import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// This class contains usefull functions that uses globally

/// This function makes creating TextStyles easier
/// use it for any style that [Text] widgets need
TextStyle styleGenerator({
  double fontSize = 16,
  Color fontColor = Colors.white,
  FontWeight fontWeight = FontWeight.normal,
  double? lineHeight,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize.sp,
    color: fontColor,
    fontWeight: fontWeight,
    height: lineHeight,
  );
}
