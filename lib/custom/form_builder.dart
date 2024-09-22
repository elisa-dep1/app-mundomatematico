import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCustom extends StatelessWidget {
  final String name;
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final IconData icon;
  final TextInputType keytype;

  const FormBuilderCustom(
      {super.key,
      required this.name,
      required this.obscureText,
      required this.hintText,
      this.validator,
      required this.icon,
      required this.keytype});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        name: name,
        obscureText: obscureText,
        style: const TextStyle(color: Color(0xFFAB087D)),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xFFAB087D)),
            errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFF2B2B2B)),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFF2B2B2B))),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: Icon(
              icon,
              color: const Color(0xFFAB087D),
            )),
        validator: validator,
        keyboardType: keytype);
  }
}
