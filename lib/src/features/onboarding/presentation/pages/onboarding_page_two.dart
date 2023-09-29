import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/localization/l10n.dart';
import 'package:meeting_room/src/core/extensions/extensions.dart';
import 'package:meeting_room/src/core/themes/theme.dart';
import 'package:meeting_room/src/features/onboarding/presentation/widgets/onboarding_page_base.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_three.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

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
                        top: 60,
                        left: -95,
                        child: Transform.scale(
                          scale: 0.9,
                          child:
                              Image.asset('assets/images/back_tint_image.png'),
                        ),
                      ),
                      Positioned(
                        left: -30,
                        top: -65,
                        child: Transform.scale(
                          scale: 0.9,
                          child:
                              Image.asset('assets/images/right_tint_image.png'),
                        ),
                      ),
                      Positioned(
                        left: -180,
                        top: -60,
                        child: Transform.scale(
                          scale: 0.9,
                          child:
                              Image.asset('assets/images/left_tint_image.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 228,
                      ),
                    ],
                  ),
                  55.h.verticalSpace,
                  Text(
                    l10n.availableRoom,
                    style: AppStyles.text24PxSemiBold,
                  ),
                  10.verticalSpace,
                  SizedBox(
                    height: 60.h,
                    width: 250.w,
                    child: Text(
                      l10n.onboardingTwo,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const OnboardingPageThree(),
                              ),
                            );
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
        ],
      ),
    );
  }
}
