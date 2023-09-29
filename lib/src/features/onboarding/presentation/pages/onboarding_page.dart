import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meeting_room/src/features/onboarding/onboarding.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_four.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_three.dart';
import 'package:meeting_room/src/features/onboarding/presentation/pages/onboarding_page_two.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(initialPage: 1);

    void _goToPreviousPage() {
      if (_pageController.page != null && _pageController.page! > 0) {
        _pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    }
    void _goToNextPage() {
      if (_pageController.page != null && _pageController.page! < 3) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    }

    return PageView(
      controller: _pageController,
      children: [
        const OnboardingPageOne(),
        const OnboardingPageTwo(),
        const OnboardingPageThree(),
        const OnboardingPageFour(),
      ],
    );
  }
}
