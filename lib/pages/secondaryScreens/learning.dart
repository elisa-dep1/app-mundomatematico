import 'package:flutter/material.dart';

class Learning extends StatelessWidget {
  static const String routeName = 'learning';
  const Learning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning'),
      ),
    );
  }
}
