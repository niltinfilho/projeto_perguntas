import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  String texto = '';

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(texto),
    );
  }
}