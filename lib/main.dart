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
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
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