import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Icon? icon;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.hintText,
      this.errorMessage,
      this.onChanged,
      this.validator,
      this.obscureText = false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
        // borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(15));
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border.copyWith(
            borderSide: BorderSide(color: colors.primary),
          ),
          errorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          focusedErrorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          label: label != null ? Text(label!) : null,
          hintText: hintText,
          suffixIcon: icon,
          suffixIconColor: colors.primary,
          errorText: errorMessage,
          focusColor: colors.primary),
    );
  }
}
