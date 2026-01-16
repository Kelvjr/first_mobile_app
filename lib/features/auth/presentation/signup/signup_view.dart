import 'package:first_ecommerce/features/auth/presentation/signup/signup_ui.dart';
import 'package:first_ecommerce/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // errors
  String? nameError;
  String? emailError;
  String? passwordError;

  bool _submitted = false;

  void validateAndSubmit() {
    setState(() {
      _submitted = true;

      // name validation not empty, also more than 1 word
      if (nameController.text.trim().isEmpty) {
        nameError = "Please enter your full name";
      } else if (nameController.text.trim().split(' ').length < 2) {
        nameError = "Please enter your full name";
      } else {
        nameError = null;
      }

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
    if (nameError == null && emailError == null && passwordError == null) {
      //firebase logic will go here but for now let's go to the homepage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SignupUi(
      nameController: nameController,
      emailController: emailController,
      passwordController: passwordController,
      nameError: _submitted ? nameError : null,
      emailError: _submitted ? emailError : null,
      passwordError: _submitted ? passwordError : null,
      onSignupPressed: validateAndSubmit,
    );
  }
}
