import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/onboarding/presentation/widgets/onboarding_page_base.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_two.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const OnboardingPageBase(),
        Positioned(
          top: 132.54.h,
          left: 25.32.w,
          child: Container(
            // color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 234.w, // Diameter of the circle
                  height: 234.h, // Diameter of the circle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      70.verticalSpace,
                      SizedBox(
                        height: 80.3653.h,
                        child: SvgImage(
                          'assets/icons/eblogo.svg',
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        l10n.pearlSpace,
                        style: AppStyles.text18PxMedium,
                      )
                    ],
                  ),
                ),
                55.h.verticalSpace,
                Text(
                  l10n.bookMeetings,
                  style: AppStyles.text24PxSemiBold,
                ),
                10.verticalSpace,
                SizedBox(
                  height: 60.h,
                  width: 250.w,
                  child: Text(
                    l10n.onboardingOne,
                    style: AppStyles.text12PxMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                80.verticalSpace,
                Container(
                  width: 310.w,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          l10n.skip,
                          style: AppStyles.text16PxSemiBold.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const OnboardingPageTwo()));
                        },
                        child: Text(
                          l10n.next,
                          style: AppStyles.text16PxSemiBold.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
