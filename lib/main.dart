import 'package:flutter/material.dart';

// main() {
//   runApp(new PerguntaApp());
// }

// esse eh o topo da arvore de componentes no flutter, todos os widgets estao abaixo do "PerguntaApp"
main() => runApp(PerguntaApp());

// a classe "PerguntaApp" herda a classe "StatelessWidget", ou seja, possui essas caracteristicas
class PerguntaApp extends StatelessWidget {

  void responder() {
    print('Pergunta respondida!');
  }

  @override
  // a funcao "build" recebe um parametro e retorna um widget
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual eh a sua cor favorita?',
      'Qual eh o seu animal favorito?',
    ];

    // esta retornando uma nova instancia da classe "MaterialApp"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}