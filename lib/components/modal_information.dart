import 'package:app_videojuego/components/buttonOpcions.dart';
import 'package:flutter/material.dart';

class ModalInformation extends StatefulWidget {
  const ModalInformation({super.key});

  @override
  ModalInformationState createState() => ModalInformationState();
}

class ModalInformationState extends State<ModalInformation> {
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
                  icono: Icons.person,
                  title: 'Datos del alumno',
                  onpressed: () {
                    setState(() {
                      selectedView = 'Datos del alumno';
                    });
                  },
                ),
                const SizedBox(height: 10),
                ButtonOpcions(
                    icono: Icons.menu_book_rounded,
                    title: 'Progreso Académico',
                    onpressed: () {
                      setState(() {
                        selectedView = 'Progreso Académico';
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
    if (selectedView == 'Datos del alumno') {
      return SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: const Text(
          'Aquí van los datos del alumno.',
          textAlign: TextAlign.center,
        ),
      );
    } else if (selectedView == 'Progreso Académico') {
      return const SizedBox(
        height: 150,
        child: Text(
          'Aquí va el progreso académico.',
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return const Text('Selecciona una opción.');
    }
  }
}
