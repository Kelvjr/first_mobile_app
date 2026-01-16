import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/features/auth/presentation/signup/signup_view.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_buttons.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_dividers.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_layout.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_social_options.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_switch.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_text_fields.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  // controllers for text fields
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final String? emailError;
  final String? passwordError;

  final VoidCallback onLoginPressed;

  const LoginUi({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.emailError,
    this.passwordError,
    required this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Welcome Back',
      subtitle:
          'Step back in and catch all the latest drops, iconic Jordans, and sneakers made just for you.',
      imagePath: "assets/icons/586logo.png",
      bottomWidget: AuthSwitch(
        questionText: "Don't have an account?",
        actionText: "Sign up",
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => SignupView()),
          );
        },
      ),
      children: [
        // Placeholder for text fields
        AuthTextFields(
          hint: "Email",
          controller: emailController,
          errorText: emailError,
        ),
        AppSpacing.vAXL,
        AuthTextFields(
          hint: "Password",
          controller: passwordController,
          isPassword: true,
          errorText: passwordError,
        ),
        AppSpacing.verticalXLarge,
        AuthButtons(text: "Log in", onPressed: onLoginPressed),
        AppSpacing.verticalLarge,
        AuthDividers(),
        AppSpacing.verticalLarge,
        const AuthSocialOptions(),
      ],
    );
  }
}
