import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthButtons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          padding: AppSpacing.paddingVerticalLarge,
        ),
        onPressed: onPressed,
        child: Text(text, style: AppTextStyles.bodylight),
      ),
    );
  }
}

//------ Social Icons ----------

class AuthSocialIcons extends StatelessWidget {
  final String text;
  final String assetPath;
  final VoidCallback onPressed;

  const AuthSocialIcons({
    super.key,
    required this.text,
    required this.assetPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width * 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.headingColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: const Color(0xFFD1D1D1)),
          ),
          padding: AppSpacing.paddingVerticalLarge,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(assetPath, height: 20),
            AppSpacing.horizontalMedium,
            Text(text, style: AppTextStyles.meddark),
          ],
        ),
      ),
    );
  }
}

/// ------------------ Auth Text Button ------------------
class AuthTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AuthTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
      child: Text(text, style: AppTextStyles.authOptions),
    );
  }
}
