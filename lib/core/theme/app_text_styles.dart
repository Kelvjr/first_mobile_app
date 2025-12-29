import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const body = TextStyle(
    fontSize: 16,
    fontFamily: 'Helvetica',
    color: AppColors.textColor,
  );

  static const headings = TextStyle(
    fontSize: 18,
    fontFamily: 'Helvetica',
    color: AppColors.headingColor,
  );
}
