import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  const Button(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 140,
        height: 40,
        child: MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            color: color,
            onPressed: onPressed,
            child: Text(title)));
  }
}
