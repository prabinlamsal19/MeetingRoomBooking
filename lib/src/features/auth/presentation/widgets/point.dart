import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';

class Point extends StatelessWidget {
  Point({super.key, required this.pointText, required this.number});
  String pointText;
  String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            textAlign: TextAlign.left,
            '$number',
            style: AppStyles.text12Px,
          ),
        ),
        2.horizontalSpace,
        Container(
          width: 340,
          child: Text(
            textAlign: TextAlign.left,
            pointText,
            style: AppStyles.text12Px,
          ),
        ),
      ],
    );
  }
}
