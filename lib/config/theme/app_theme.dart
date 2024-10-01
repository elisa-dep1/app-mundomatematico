import 'package:flutter/material.dart';

class AppTheme {
  static const seedColor = Color(0xFFAB087D); // El color que quieres usar

  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true, // Puedes desactivar si prefieres no usar Material 3
      colorScheme: const ColorScheme(
        brightness: Brightness.light, // Asegura que esté en modo claro
        primary: seedColor, // Color principal
        onPrimary: Colors.white, // Texto o íconos en superficies primarias
        secondary: Colors.teal, // Color secundario
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        surface: Colors.white, // Usar surface en lugar de background
        onSurface: Colors.black, // Texto o íconos en superficies
      ),
    );
  }
}
