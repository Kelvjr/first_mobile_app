import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const body = TextStyle(
    fontSize: 16,
    fontFamily: 'Helvetica',
    color: AppColors.textColor,
  );

  static const smText = TextStyle(
    fontSize: 12,
    fontFamily: 'Helvetica',
    color: AppColors.borderColor,
  );

  static const bodylight = TextStyle(
    fontSize: 16,
    fontFamily: 'Helvetica',
    color: AppColors.borderColor,
  );

  static const normallight = TextStyle(
    fontSize: 16,
    fontFamily: 'Helvetica',
    color: AppColors.borderColor,
  );

  static const headings = TextStyle(
    fontSize: 18,
    fontFamily: 'Helvetica',
    color: AppColors.headingColor,
  );

  static const onboardingTitle = TextStyle(
    fontSize: 32,
    fontFamily: 'Helvetica',
    color: AppColors.bgColor,
  );
}
