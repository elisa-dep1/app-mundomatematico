import 'package:app_videojuego/components/button.dart';
import 'package:app_videojuego/components/buttonOpcions.dart';
import 'package:app_videojuego/components/modal_configuration.dart';

import 'package:app_videojuego/components/modal_information.dart';
import 'package:app_videojuego/presentation/screens/mainScreens/login.dart';
import 'package:flutter/material.dart';

class UserConfig extends StatefulWidget {
  const UserConfig({super.key});

  @override
  State<UserConfig> createState() => _UserState();
}

class _UserState extends State<UserConfig> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo_dos.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                ButtonOpcions(
                  title: 'Información alumno',
                  icono: Icons.contact_page_outlined,
                  onpressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const ModalInformation();
                      },
                    );
                  },
                ),
                const SizedBox(height: 10),
                ButtonOpcions(
                  title: 'Configuración',
                  icono: Icons.settings,
                  onpressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const ModalConfiguration();
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    title: 'Cerrar sesión',
                    color: const Color.fromARGB(255, 254, 100, 213))
              ],
            ),
          ],
        ));
  }
}

class Config extends StatelessWidget {
  const Config({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Información alumno')),
    );
  }
}
