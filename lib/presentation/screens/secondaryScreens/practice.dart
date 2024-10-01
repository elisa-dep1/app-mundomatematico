import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  static const String routeName = 'practice';
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice'),
      ),
    );
  }
}
