import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:first_ecommerce/core/theme/button_styling.dart';
import 'package:first_ecommerce/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/welcome screen/pexels-ficky-1243617-2364580.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: AppColors.headingColor.withAlpha(191)),

          // logo
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            right: AppSpacing.hPadding(context),
            left: AppSpacing.hPadding(context),
            child: SafeArea(
              child: Image.asset(
                "assets/images/welcome screen/586-Designs-logo-png.png",
                height: MediaQuery.of(context).size.height * 0.12,
              ),
            ),
          ),

          //content
          Positioned(
            left: AppSpacing.hPadding(context),
            right: AppSpacing.hPadding(context),
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                LargeButton(text: "Create an Account", onPressed: () {}),
                AppSpacing.verticalXLarge,
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: AppColors.bgColor,
                      ),
                    ),
                    AppSpacing.horizontalLarge,
                    Text('OR', style: AppTextStyles.bodylight),
                    AppSpacing.horizontalLarge,
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: AppColors.bgColor,
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalLarge,
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Continue as Guest', style: AppTextStyles.guest),
                ),
                AppSpacing.vXXL,
                Text(
                  'By registering you agree to our Terms of Use and Privacy Policy',
                  style: AppTextStyles.normallight,
                  textAlign: TextAlign.center,
                ),
                AppSpacing.verticalLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppTextStyles.normallight,
                    ),
                    AppSpacing.horizontalMedium,
                    Text('Sign In', style: AppTextStyles.signin),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
