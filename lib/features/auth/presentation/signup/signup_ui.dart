import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/features/auth/presentation/login/login_view.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_buttons.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_dividers.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_layout.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_social_options.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_switch.dart';
import 'package:first_ecommerce/features/auth/widgets/auth_text_fields.dart';
import 'package:flutter/material.dart';

class SignupUi extends StatelessWidget {
  // controllers for text fields
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final String? nameError;
  final String? emailError;
  final String? passwordError;

  final VoidCallback onSignupPressed;

  const SignupUi({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    this.nameError,
    this.emailError,
    this.passwordError,
    required this.onSignupPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Create Your Account',
      subtitle:
          'Create your account to dive into the sneaker world and snag the freshest kicks first.',
      imagePath: "assets/icons/586logo.png",
      bottomWidget: AuthSwitch(
        questionText: "Already have an account?",
        actionText: "Sign in",
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => LoginView()),
          );
        },
      ),
      children: [
        // Placeholder for text fields
        AuthTextFields(
          hint: "Full Name",
          controller: nameController,
          errorText: nameError,
        ),
        AppSpacing.vAXL,
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
        AuthButtons(text: "Sign Up", onPressed: onSignupPressed),
        AppSpacing.verticalLarge,
        AuthDividers(),
        AppSpacing.verticalLarge,
        const AuthSocialOptions(),
      ],
    );
  }
}
