import 'package:app_videojuego/components/button.dart';
import 'package:app_videojuego/presentation/screens/mainScreens/menu.dart';
import 'package:app_videojuego/presentation/screens/secondaryScreens/register_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  final String correo = 'mate@gmail.com';
  final String contrasena = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
                    child: FormBuilder(
                        key: _formKey,
                        child: Center(
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: Image.asset('assets/logo.png'),
                                      ),
                                      Button(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const RegisterScreen()),
                                            );
                                          },
                                          title: 'Hola',
                                          color: const Color.fromARGB(
                                              159, 9, 220, 220)),
                                      Button(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Menu()),
                                            );
                                          },
                                          title: 'entrar',
                                          color: const Color.fromARGB(
                                              159, 9, 220, 220))
                                    ]))))))));
  }
}
