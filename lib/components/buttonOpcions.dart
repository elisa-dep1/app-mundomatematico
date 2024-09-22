import 'package:flutter/material.dart';

class ButtonOpcions extends StatelessWidget {
  final String title;
  final VoidCallback onpressed;
  final IconData icono;
  const ButtonOpcions(
      {super.key,
      required this.title,
      required this.onpressed,
      required this.icono});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: double.maxFinite,
        height: 60,
        child: MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            color: Colors.white,
            onPressed: onpressed,
            child: Row(children: [
              const SizedBox(width: 5),
              Icon(icono),
              const SizedBox(width: 10),
              Text(title)
            ])));
  }
}
