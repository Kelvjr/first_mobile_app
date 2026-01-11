import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/features/onboarding_1/data/onboarding_pages.dart';
import 'package:first_ecommerce/features/onboarding_1/presentation/onboarding_ui.dart';
import 'package:first_ecommerce/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  //controller keeps track of what page we are on
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: onboardingView.length,
            itemBuilder: (context, index) {
              final bool isLastPage = index == onboardingView.length - 1;
              return OnboardingUi(
                page: onboardingView[index],
                isLastPage: isLastPage,
                buttonText: isLastPage ? 'Get Started' : 'Continue',
                onSkip: () {
                  _controller.animateToPage(
                    onboardingView.length - 1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                onContinue: () {
                  if (!isLastPage) {
                    // move to next page
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const WelcomeScreen()),
                    );
                  }
                },
              );
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: AppSpacing.paddingAllLarge,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                    dotWidth: MediaQuery.of(context).size.width * 0.3,
                    dotHeight: 2.5,
                    spacing: 8,
                    dotColor: AppColors.borderColor.withAlpha(26),
                    activeDotColor: AppColors.bgColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
