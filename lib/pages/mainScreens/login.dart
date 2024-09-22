import 'package:app_videojuego/components/button.dart';
import 'package:app_videojuego/custom/form_builder.dart';
import 'package:app_videojuego/pages/mainscreens/menu.dart';
import 'package:app_videojuego/pages/secondaryScreens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
                          FormBuilderCustom(
                            name: 'email',
                            obscureText: false,
                            hintText: 'Ingrese su correo aquí',
                            icon: Icons.mail,
                            keytype: TextInputType.emailAddress,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'Correo requerido'),
                              FormBuilderValidators.email(
                                  errorText: 'Correo no valido')
                            ]),
                          ),
                          const SizedBox(height: 20),
                          FormBuilderCustom(
                            name: 'password',
                            obscureText: true,
                            hintText: 'Ingrese su contraseña aquí',
                            icon: Icons.lock,
                            keytype: TextInputType.number,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'Contraseña requerido'),
                              FormBuilderValidators.required(
                                  errorText: 'Contraseña no valida')
                            ]),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Button(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen()));
                                },
                                title: 'Registrarse',
                                color: const Color.fromARGB(255, 236, 236, 236),
                              ),
                              const SizedBox(width: 40),
                              Button(
                                onPressed: () {
                                  if (_formKey.currentState
                                          ?.saveAndValidate() ==
                                      true) {
                                    final email =
                                        _formKey.currentState?.value['email'];
                                    final password = _formKey
                                        .currentState?.value['password'];

                                    email == correo && password == contrasena
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Menu()))
                                        : showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text('Error'),
                                                content: const Text(
                                                    'Correo o contraseña incorrectos'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                  }
                                },
                                title: 'Ingresar',
                                color: const Color.fromARGB(255, 241, 197, 227),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ));
  }
}
