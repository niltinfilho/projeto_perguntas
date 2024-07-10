import 'package:flutter/material.dart';

// main() {
//   runApp(new PerguntaApp());
// }

// esse eh o topo da arvore de componentes no flutter, todos os widgets estao abaixo do "PerguntaApp"
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

// a classe "PerguntaApp" herda a classe "StatelessWidget", ou seja, possui essas caracteristicas
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}