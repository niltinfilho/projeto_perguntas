import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  String texto = '';
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.black, // Background color
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}