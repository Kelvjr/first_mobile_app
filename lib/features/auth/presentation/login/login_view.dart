import 'package:first_ecommerce/features/auth/presentation/login/login_ui.dart';
import 'package:first_ecommerce/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // errors
  String? emailError;
  String? passwordError;

  bool _submitted = false;

  void validateAndSubmit() {
    setState(() {
      _submitted = true;

      // email validation
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (emailController.text.trim().isEmpty) {
        emailError = "Please enter a valid email address";
      } else if (!emailRegex.hasMatch(emailController.text.trim())) {
        emailError = "Please enter a valid email address";
      } else {
        emailError = null;
      }

      //Password validation
      if (passwordController.text.isEmpty) {
        passwordError = "Password must be at least 8 characters";
      } else if (passwordController.text.length < 8) {
        passwordError = "Password must be at least 8 characters";
      } else {
        passwordError = null;
      }
    });

    // only proceed if all fields are valid
    if (emailError == null && passwordError == null) {
      //firebase logic will go here but for now let's go to the homepage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginUi(
      emailController: emailController,
      passwordController: passwordController,
      emailError: _submitted ? emailError : null,
      passwordError: _submitted ? passwordError : null,
      onLoginPressed: validateAndSubmit,
    );
  }
}
