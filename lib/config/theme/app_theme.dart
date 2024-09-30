import 'package:flutter/material.dart';

class AppTheme {
  static const seedColor = Color(0xFFCB55B6);
  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      //brightness: Brightness.dark
    );
  }
}
