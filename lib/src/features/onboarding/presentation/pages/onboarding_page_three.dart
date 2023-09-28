import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_four.dart';
import 'package:meeting_room/src/features/onboarding/presentation/widgets/onboarding_page_base.dart';

class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const OnboardingPageBase(),
        Positioned(
          top: 100.54.h,
          left: 25.32.w,
          child: Container(
            // color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 280.w, // Diameter of the circle
                      height: 280.h, // Diameter of the circle
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'assets/images/single_tint_image.png',
                      ),
                    )
                  ],
                ),
                45.h.verticalSpace,
                Text(
                  l10n.notifyTeamMembers,
                  style: AppStyles.text24PxSemiBold,
                ),
                10.verticalSpace,
                SizedBox(
                  height: 60.h,
                  width: 250.w,
                  child: Text(
                    l10n.onboardingThree,
                    textAlign: TextAlign.center,
                    style: AppStyles.text12PxMedium,
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
                              builder: (context) =>
                                  const OnboardingPageFour()));
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
