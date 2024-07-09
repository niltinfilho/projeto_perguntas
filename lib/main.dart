import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

// a classe "PerguntaApp" herda a classe "StatelessWidget", ou seja, possui essas caracteristicas
class PerguntaApp extends StatelessWidget {
  // a funcao "build" recebe um parametro e retorna um widget
  Widget build(BuildContext context) {
    // esta retornando uma nova instancia da classe "MaterialApp"
    return MaterialApp(
      // a classe "MaterialApp" recebe varios parametros, dentre eles o "Text"
      home: Text('Ola, Flutter!'),
    );
  }
}