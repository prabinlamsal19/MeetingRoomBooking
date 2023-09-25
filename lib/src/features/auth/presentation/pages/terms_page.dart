/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/features/auth/presentation/widgets/point.dart';

@RoutePage()
class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        shadowColor: Colors.black,
        title: Text(
          l10n.termsAndConditions,
          style: AppStyles.text14PxBold,
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    l10n.termsTitle,
                    style: AppStyles.text18PxBold,
                  ),
                  18.verticalSpace,
                  Text(
                    textAlign: TextAlign.left,
                    l10n.termsDesc,
                    style: AppStyles.text12Px,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 96, left: 174),
              child: Text(
                'https://ebpearls.com.au',
                style: TextStyle(
                    fontSize: 12.sp,
                    height: (14.h / 12.sp),
                    fontStyle: FontStyle.normal,
                    color: const Color.fromARGB(255, 150, 33, 239)),
              ),
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    textAlign: TextAlign.start,
                    l10n.mainPointTitle,
                    style: AppStyles.text18PxBold,
                  ),
                ),
                18.verticalSpace,
                Point(pointText: l10n.mainPointOne, number: "1."),
                18.verticalSpace,
                Point(pointText: l10n.mainPointTwo, number: "2."),
                18.verticalSpace,
                Point(pointText: l10n.mainPointThree, number: "3."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
