import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/app/app.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/core/widgets/widgets.dart';
import 'package:meeting_room/src/features/dashboard/dashboard.dart';
import 'package:meeting_room/src/features/onboarding/presentation/widgets/onboarding_page_base.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_three.dart';

class OnboardingPageFour extends StatelessWidget {
  const OnboardingPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnboardingPageBase(),
          Positioned(
            top: 132.54.h,
            left: 25.32.w,
            child: Container(
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -160,
                        top: 120,
                        child: Transform.scale(
                          scale: 0.9,
                          child:
                              Image.asset('assets/images/bottom_text_box.png'),
                        ),
                      ),
                      Positioned(
                        left: -165,
                        top: 38,
                        child: Transform.scale(
                          scale: 0.9,
                          child:
                              Image.asset('assets/images/middle_text_box.png'),
                        ),
                      ),
                      Positioned(
                        top: -70,
                        left: -170,
                        child: Transform.scale(
                          scale: 0.9,
                          child: Image.asset('assets/images/top_text_box.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 228,
                      ),
                    ],
                  ),
                  55.h.verticalSpace,
                  Text(
                    'Things to do',
                    style: AppStyles.text24PxSemiBold,
                  ),
                  8.verticalSpace,
                  SizedBox(
                    height: 60.h,
                    width: 250.w,
                    child: Text(
                      l10n.onboardingFour,
                      style: AppStyles.text12PxMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  32.verticalSpace,
                  SizedBox(
                    width: 316.w,
                    child: CustomButton(
                        backgroundColor: AppColors.black,
                        disabledColor: AppColors.black,
                        textColor: AppColors.white,
                        fullWidth: true,
                        label: l10n.getStarted,
                        onPressed: () => {
                            }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
