/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:io';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/extensions.dart';
import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    textTheme: GoogleFonts.robotoTextTheme(),
    useMaterial3: true,
    fontFamily: GoogleFonts.roboto().fontFamily,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary, primary: AppColors.primary),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.scaffoldBackground,
      surfaceTintColor: AppColors.scaffoldBackground,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: AppColors.white,
        borderRadius: 24.rounded,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      labelStyle: AppStyles.text14PxBold.textDark,
      labelColor: AppColors.textDark,
      unselectedLabelColor: AppColors.textLight,
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      unselectedLabelStyle: AppStyles.text14PxBold.textLight,
    ),
    splashColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      filled: true,
      hintStyle: AppStyles.text16Px.textGrey,
      fillColor: AppColors.white,
      constraints: BoxConstraints(
        minHeight: 44.h,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
