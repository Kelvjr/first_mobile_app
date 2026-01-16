import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:first_ecommerce/core/widgets/button_styling.dart';
import 'package:first_ecommerce/features/onboarding_1/data/onboarding_pages.dart';
import 'package:flutter/material.dart';

class OnboardingUi extends StatelessWidget {
  final OnboardingPages page;
  final VoidCallback onSkip;
  final VoidCallback onContinue;
  final String buttonText;
  final bool isLastPage;

  const OnboardingUi({
    super.key,
    required this.page,
    required this.onSkip,
    required this.onContinue,
    required this.buttonText,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(page.imagePath, fit: BoxFit.cover),
        Container(color: AppColors.headingColor.withAlpha(191)),

        //top right skip
        if (!isLastPage)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            right: AppSpacing.hPadding(context),
            child: SafeArea(
              child: GestureDetector(
                onTap: onSkip,
                child: Text('Skip', style: AppTextStyles.smText),
              ),
            ),
          ),

        // bottom content
        Positioned(
          left: AppSpacing.hPadding(context),
          right: AppSpacing.hPadding(context),
          bottom: MediaQuery.of(context).size.height * 0.1,
          child: Column(
            children: [
              Text(
                page.title,
                style: AppTextStyles.onboardingTitle,
                textAlign: TextAlign.center,
              ),
              AppSpacing.verticalLarge,
              Text(
                page.description,
                style: AppTextStyles.bodylight,
                textAlign: TextAlign.center,
              ),
              AppSpacing.vXXL,

              LargeButton(text: buttonText, onPressed: onContinue),
            ],
          ),
        ),
      ],
    );
  }
}
