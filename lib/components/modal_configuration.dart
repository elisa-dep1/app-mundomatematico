import 'package:app_videojuego/components/buttonOpcions.dart';
import 'package:flutter/material.dart';

class ModalConfiguration extends StatefulWidget {
  const ModalConfiguration({super.key});

  @override
  ModalConfigurationState createState() => ModalConfigurationState();
}

class ModalConfigurationState extends State<ModalConfiguration> {
  String? selectedView;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 150,
      ),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 235, 235),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (selectedView == null) ...[
                ButtonOpcions(
                  icono: Icons.account_circle_outlined,
                  title: 'Configuración de usuario',
                  onpressed: () {
                    setState(() {
                      selectedView = 'Configuración de usuario';
                    });
                  },
                ),
                const SizedBox(height: 10),
                ButtonOpcions(
                    icono: Icons.nightlight_round_rounded,
                    title: 'Modo oscuro / claro',
                    onpressed: () {
                      setState(() {
                        selectedView = 'Modo oscuro / claro';
                      });
                    }),
              ] else ...[
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        setState(() {
                          selectedView = null;
                        });
                      },
                    ),
                    Text(
                      selectedView!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildContent(),
              ]
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (selectedView == 'Configuración de usuario') {
      return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: const Text(
          'Aquí va la configuración de usuario.',
          textAlign: TextAlign.center,
        ),
      );
    } else if (selectedView == 'Modo oscuro / claro') {
      return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: const Text(
          'Aquí se configura el modo oscuro.',
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return const Text('Selecciona una opción.');
    }
  }
}
