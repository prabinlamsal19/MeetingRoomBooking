import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';

class PlaneBox extends StatelessWidget {
  PlaneBox({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 120,
        width: 165,
        child: PhysicalModel(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          elevation: 3,
          child: Center(
            child: Text(
              text,
              style: AppStyles.text16PxMedium,
            ),
          ),
        ),
      ),
    );
  }
}
