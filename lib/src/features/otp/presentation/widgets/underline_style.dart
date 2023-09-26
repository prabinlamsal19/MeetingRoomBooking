import 'dart:ui';
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meeting_room/src/core/themes/app_colors.dart';

TextStyle text16pxUnderlinedPurple = GoogleFonts.roboto(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  height: calculateHeight(19, 16),
  decoration: TextDecoration.underline,
  decorationColor: AppColors.purpleAppColor,
  decorationThickness: 2.0,
  color: AppColors.purpleAppColor,
);

calculateHeight(int i, int j) {
  return i.h / j.sp;
}

TextStyle text30PxSemiBold = GoogleFonts.roboto(
  fontSize: 30.sp,
  fontWeight: FontWeight.w500,
  height: calculateHeight(35, 30),
  fontStyle: FontStyle.normal,
);
