import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/themes/app_styles.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        Stack(
          children: [
            SvgImage('assets/icons/ellipse.svg'),
            Positioned(
                top: 18,
                left: 20,
                child: SvgImage('assets/icons/empty_state_image.svg')),
            Positioned(
                top: 40,
                left: 45,
                child: SvgImage('assets/icons/curvy_arrow.svg'))
          ],
        ),
        5.verticalSpace,
        Text(
          l10n.noUpcomingEvent,
          style: AppStyles.text18PxSemiBold,
        ),
        5.verticalSpace,
        Text(
          l10n.addEventsDesc,
          style: AppStyles.text12Px,
        ),
        10.verticalSpace,
        SizedBox(
          width: 204,
          height: 44,
          child: CustomButton(
            label: l10n.addEvent,
            onPressed: () {},
            fullWidth: true,
          ),
        ),
      ],
    );
  }
}
