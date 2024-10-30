import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});
  static const String routeName = 'practice';

  @override
  PracticeState createState() => PracticeState();
}

class PracticeState extends State<Practice> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Inicializa el controlador del WebView
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('assets/juego_prueba/index.html'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Juego en HTML'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
