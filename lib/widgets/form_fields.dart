import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final bool? readonly;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final Widget? icon;

  const FormFields({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
    required this.obscureText,
    this.keyboardType,
    this.icon,
    this.readonly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: readonly,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(30),
        labelText: labelText,
        fillColor: const Color(0xFFFFFFFF),
        filled: true,
        suffixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
