import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final String rotulo;
  final String dica;
  final TextEditingController controlador;
  final IconData icon;

  Editor({this.rotulo, this.dica, this.controlador, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
        controller: controlador,
      ),
    );
  }
}