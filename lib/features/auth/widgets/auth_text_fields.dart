import 'package:first_ecommerce/core/theme/app_colors.dart';
import 'package:first_ecommerce/core/theme/app_spacing.dart';
import 'package:first_ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextFields extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final String? errorText;
  final TextEditingController controller;

  const AuthTextFields({
    super.key,
    required this.hint,
    this.isPassword = false,
    required this.controller,
    required this.errorText,
  });

  @override
  State<AuthTextFields> createState() => _AuthTextFieldsState();
}

class _AuthTextFieldsState extends State<AuthTextFields> {
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    if (!widget.isPassword) _obscure = false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: TextField(
        controller: widget.controller,
        obscureText: _obscure,
        style: AppTextStyles.meddark,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppTextStyles.authHint,
          errorText: widget.errorText,
          contentPadding: AppSpacing.paddingHorizontalLarge,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: AppColors.primaryLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
              width: 1.5,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),

          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.textColor,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
