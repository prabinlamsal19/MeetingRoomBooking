import 'package:flutter/material.dart';
import 'package:meeting_room/src/core/themes/theme.dart';

class PlainBox extends StatelessWidget {
  PlainBox({super.key, required this.floor});
  String floor;

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
              floor,
              style: AppStyles.text16PxMedium,
            ),
          ),
        ),
      ),
    );
  }
}
