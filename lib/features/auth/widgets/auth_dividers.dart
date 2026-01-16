import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthDividers extends StatelessWidget {
  const AuthDividers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.75,
            height: MediaQuery.of(context).size.height * 0.03,
            color: AppColors.headingColor,
          ),
        ),
        AppSpacing.horizontalLarge,
        Text('OR', style: AppTextStyles.bodydark),
        AppSpacing.horizontalLarge,
        Expanded(
          child: Divider(
            thickness: 0.75,
            height: MediaQuery.of(context).size.height * 0.03,
            color: AppColors.headingColor,
          ),
        ),
      ],
    );
  }
}
