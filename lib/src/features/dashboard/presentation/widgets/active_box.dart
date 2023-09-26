import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';

class ActiveBox extends StatelessWidget {
  ActiveBox(
      {super.key,
      required this.floor,
      required this.host,
      required this.totalTime,
      required this.timeLeft});
  String floor;
  String host;
  int totalTime;
  int timeLeft;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 120,
        width: 165,
        child: Stack(children: [
          PhysicalModel(
            color: AppColors.purpleAppColor,
            borderRadius: BorderRadius.circular(8),
            elevation: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    15.verticalSpace,
                    Text(
                      floor,
                      style: AppStyles.text16PxMedium.white,
                    ),
                    5.verticalSpace,
                    Text(
                      '${l10n.host}:$host',
                      style: AppStyles.text14Px.white,
                    ),
                    25.verticalSpace,
                    Text(
                      '${timeLeft}m left',
                      style: AppStyles.text14Px.white,
                    ),
                    5.verticalSpace,
                    LinearProgressIndicator(
                      backgroundColor: AppColors.white,
                      color: AppColors.primary,
                      value: (timeLeft / totalTime),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: SvgPicture.asset('assets/icons/video_icon.svg')),
        ]),
      ),
    );
  }
}
