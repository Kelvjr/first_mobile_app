import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_buttons.dart';
import 'package:flutter/material.dart';

class AuthSocialOptions extends StatefulWidget {
  final bool showFacebook;
  final bool showX;
  const AuthSocialOptions({
    super.key,
    this.showFacebook = true,
    this.showX = true,
  });

  @override
  State<AuthSocialOptions> createState() => _AuthSocialOptionsState();
}

class _AuthSocialOptionsState extends State<AuthSocialOptions> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primary buttons
        AuthSocialIcons(
          text: 'Continue with Google',
          assetPath: "assets/auth/google.svg",
          onPressed: () {},
        ),
        AppSpacing.verticalLarge,
        AuthSocialIcons(
          text: 'Continue with Phone Number',
          assetPath: "assets/auth/phone.svg",
          onPressed: () {},
        ),

        // Expanded options
        if (showMore) ...[
          AppSpacing.verticalLarge,
          if (widget.showFacebook)
            AuthSocialIcons(
              text: 'Continue with Facebook',
              assetPath: "assets/auth/facebook.svg",
              onPressed: () {},
            ),
          if (widget.showX) AppSpacing.verticalLarge,
          if (widget.showX)
            AuthSocialIcons(
              text: 'Continue with X',
              assetPath: "assets/auth/twitter.svg",
              onPressed: () {},
            ),
        ],

        // Toggle button at the very bottom
        AppSpacing.verticalMedium,
        AuthTextButton(
          text: showMore ? 'Hide signup options' : 'View more signup options',
          onPressed: () {
            setState(() {
              showMore = !showMore;
            });
          },
        ),
      ],
    );
  }
}
/*
Column(
      children: [
        AuthSocialIcons(
          text: 'Continue with Google',
          assetPath: "assets/auth/google.svg",
          onPressed: () {},
        ),
        AppSpacing.verticalLarge,
        AuthSocialIcons(
          text: 'Continue with Phone Number',
          assetPath: "assets/auth/phone.svg",
          onPressed: () {},
        ),
        AppSpacing.verticalSmall,
        AuthTextButton(
          text: showMore ? 'Hide sign in options' : 'View more signup options',
          onPressed: () {
            setState(() {
              showMore = !showMore;
            });
          },
        ),

        if (showMore) ...[
          AppSpacing.verticalSmall,
          if (widget.showFacebook)
            AuthSocialIcons(
              text: 'Continue with Facebook',
              assetPath: "assets/auth/facebook.svg",
              onPressed: () {},
            ),
          AppSpacing.verticalLarge,
          if (widget.showFacebook)
            AuthSocialIcons(
              text: 'Continue with X',
              assetPath: "assets/auth/twitter.svg",
              onPressed: () {},
            ),
          AppSpacing.verticalMedium,
        ],
      ],
    );
    */