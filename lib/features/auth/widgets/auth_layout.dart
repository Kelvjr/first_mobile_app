import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final List<Widget> children;
  final Widget? bottomWidget;

  const AuthLayout({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.children,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.borderColor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppSpacing.screenPadding(context),
              child: Column(
                children: [
                  Image.asset(imagePath, height: 72, fit: BoxFit.contain),
                  AppSpacing.verticalXLarge,
                  AppSpacing.verticalSmall,
                  Text(
                    title,
                    style: AppTextStyles.authHeading,
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalMedium,
                  Text(
                    subtitle,
                    style: AppTextStyles.body,
                    textAlign: TextAlign.center,
                  ),
                  AppSpacing.verticalXLarge,
                  ...children,
                  AppSpacing.verticalSmall,

                  //auth switch login/signup
                  if (bottomWidget != null) bottomWidget!,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
