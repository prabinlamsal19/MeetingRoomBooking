/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:flutter/material.dart';

abstract class AppColors {
//theme primary color
  static const Color primary = const Color(0xFF00274B);

  //text colors
  static const Color textDark = const Color(0xFF222222);
  static const Color textLight = const Color(0xFFCFCFCF);
  static const Color textGrey = const Color(0xFF999999);
  static const Color shadow = const Color(0xFFF4F6F9);
  static const Color textBlue = const Color(0xFF3E64D2);

  //status color
  static const Color statusRed = const Color(0xFFD23E3E);
  static const Color statusLightRed = const Color(0xFFF9E3E3);
  static const Color statusGreen = const Color(0xFF4CD964);
  static const Color statusOrange = const Color(0xFFFF9212);

  // background colors
  static const Color scaffoldBackground = const Color(0xFFF5F5F7);
  static const Color fabRedBackground = const Color(0xFFFD6464);
  static const Color brandBackground = const Color(0xFFEBEFF9);
  static const Color brandBackgroundLight = const Color(0xFFABC4F1);
  static const Color secondaryButtonBackground = const Color(0xFFEBEBEB);

  //default
  static const Color border = const Color(0xFFD6D6D6);
  static const Color dashBorder = const Color(0xFFABC4F1);
  static const Color white = const Color(0xFFFFFFFF);
  static const Color black = const Color(0xFF000000);
  static const Color transparent = Colors.transparent;
}
