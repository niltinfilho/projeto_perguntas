import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

// esse eh o topo da arvore de componentes no flutter, todos os widgets estao abaixo do "PerguntaApp"
// main() {
//   runApp(new PerguntaApp());
// }
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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual eh a sua cor favorita?',
        'respostas': ['Preto', 'Vermelhoo', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual eh o seu animal favorito?',
        'respostas': ['Zebra', 'Canguru', 'Pantera', 'Macaco'],
      },
      {
        'texto': 'Qual eh o seu instrutor favorito?',
        'respostas': ['Maria', 'Pedro', 'Leo', 'DudinhaMeuAmor'],
      }
    ];

    final respostas = [
      'Azul',
      'Vermelho',
      'Preto',
    ];

    // esta retornando uma nova instancia da classe "MaterialApp"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
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