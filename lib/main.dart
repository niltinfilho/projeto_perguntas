import 'package:flutter/material.dart';

// main() {
//   runApp(new PerguntaApp());
// }

// esse eh o topo da arvore de componentes no flutter, todos os widgets estao abaixo do "PerguntaApp"
main() => runApp(PerguntaApp());

// a classe "PerguntaApp" herda a classe "StatelessWidget", ou seja, possui essas caracteristicas
class PerguntaApp extends StatelessWidget {

  @override
  // a funcao "build" recebe um parametro e retorna um widget
  Widget build(BuildContext context) {
    // esta retornando uma nova instancia da classe "MaterialApp"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Ola, Flutter!'),
      ),
    );
  }
}