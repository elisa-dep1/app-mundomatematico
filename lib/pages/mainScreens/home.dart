import 'package:app_videojuego/components/buttonOpcions.dart';
import 'package:app_videojuego/pages/secondaryScreens/learning.dart';
import 'package:app_videojuego/pages/secondaryScreens/practice.dart';
import 'package:app_videojuego/pages/secondaryScreens/quizzes.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _UserState();
}

class _UserState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            ButtonOpcions(
                title: 'Sección de aprendizaje',
                icono: Icons.play_circle_outline,
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Learning()));
                }),
            const SizedBox(height: 10),
            ButtonOpcions(
                title: 'Sección de practica',
                icono: Icons.sports_esports_outlined,
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Practice()));
                }),
            const SizedBox(height: 10),
            ButtonOpcions(
                title: 'Sección de pruebas',
                icono: Icons.description_outlined,
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Quizzes()));
                }),
          ],
        ));
  }
}
