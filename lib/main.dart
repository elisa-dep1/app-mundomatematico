import 'package:app_videojuego/config/theme/app_theme.dart';
import 'package:app_videojuego/presentation/screens/mainScreens/login.dart';
import 'package:app_videojuego/presentation/screens/mainScreens/menu.dart';
import 'package:app_videojuego/presentation/screens/secondaryScreens/learning.dart';
import 'package:app_videojuego/presentation/screens/secondaryScreens/practice.dart';
import 'package:app_videojuego/presentation/screens/secondaryScreens/quizzes.dart';

import 'package:flutter/material.dart';

//import 'package:hello_world_app/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => const Login(),
        Menu.routeName: (context) => const Menu(),
        Learning.routeName: (context) => const Learning(),
        Practice.routeName: (context) => const Practice(),
        Quizzes.routeName: (context) => const Quizzes(),
      },
    );
  }
}
