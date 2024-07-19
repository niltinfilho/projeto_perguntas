import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  int pontuacao = 0;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if(pontuacao < 8) {
      return 'Parabens!';
    } else if(pontuacao < 12) {
      return 'Voce eh bom!';
    } else if(pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),

    );
  }
}