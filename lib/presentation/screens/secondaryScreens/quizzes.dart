import 'package:flutter/material.dart';

class Quizzes extends StatelessWidget {
  static const String routeName = 'quizzes';
  const Quizzes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzes'),
      ),
    );
  }
}
