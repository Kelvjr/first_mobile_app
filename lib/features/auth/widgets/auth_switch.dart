import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthSwitch extends StatelessWidget {
  final String questionText;
  final String actionText;
  final VoidCallback onPressed;

  const AuthSwitch({
    super.key,
    required this.questionText,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(questionText, style: AppTextStyles.bodydark),
        AppSpacing.horizontalMedium,
        GestureDetector(
          onTap: onPressed,
          child: Text(
            actionText,
            style: AppTextStyles.authOptions.copyWith(
              decoration: TextDecoration.underline,
              decorationThickness: 1.5,
              decorationColor: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
