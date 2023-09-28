/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';

class OnboardingPageBase extends StatelessWidget {
  const OnboardingPageBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 500,
      color: AppColors.primary,
      child: Stack(
        children: [
          Positioned(
              left: 265,
              top: -15,
              child: SvgImage('assets/icons/ob_ellipse_large.svg')),
          Positioned(
              top: 300.h, child: SvgImage('assets/icons/ob_ellipse_small.svg')),
          Positioned(
              right: -10,
              bottom: -42,
              child: Transform.rotate(
                  angle: -90 * 3.14159265 / 180,
                  child: SvgImage('assets/icons/ob_ellipse_small.svg'))),
        ],
      ),
    );
  }
}
