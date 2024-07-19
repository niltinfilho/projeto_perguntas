import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

// esse eh o topo da arvore de componentes no flutter, todos os widgets estao abaixo do "PerguntaApp"
// main() {
//   runApp(new PerguntaApp());
// }
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
      {
        'texto': 'Qual eh a sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'nota': 10}, 
          {'texto': 'Vermelho', 'nota': 5}, 
          {'texto': 'Verde', 'nota': 3}, 
          {'texto': 'Branco', 'nota': 6},
        ],
      },
      {
        'texto': 'Qual eh o seu animal favorito?',
        'respostas': [
          {'texto': 'Zebra', 'nota': 1}, 
          {'texto': 'Canguru', 'nota': 5}, 
          {'texto': 'Pantera', 'nota': 7}, 
          {'texto': 'Macaco', 'nota': 10},
        ],
      },
      {
        'texto': 'Qual eh o seu instrutor favorito?',
        'respostas': [
          {'texto': 'Maria', 'nota': 8}, 
          {'texto': 'Pedro', 'nota': 7}, 
          {'texto': 'Leo', 'nota': 1}, 
          {'texto': 'DudinhaMeuAmor', 'nota': 10},
        ],
      }
    ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
          ? Questionario(
            perguntas: _perguntas,
            perguntaSelecionada: _perguntaSelecionada,
            responder: _responder
          )
          : Center(
            child: Resultado()
          )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}