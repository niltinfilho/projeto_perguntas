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
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
      {
        'texto': 'Qual eh a sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'pontuacao': 10}, 
          {'texto': 'Vermelho', 'pontuacao': 5}, 
          {'texto': 'Verde', 'pontuacao': 3}, 
          {'texto': 'Branco', 'pontuacao': 6},
        ],
      },
      {
        'texto': 'Qual eh o seu animal favorito?',
        'respostas': [
          {'texto': 'Zebra', 'pontuacao': 1}, 
          {'texto': 'Canguru', 'pontuacao': 5}, 
          {'texto': 'Pantera', 'pontuacao': 7}, 
          {'texto': 'Macaco', 'pontuacao': 10},
        ],
      },
      {
        'texto': 'Qual eh o seu instrutor favorito?',
        'respostas': [
          {'texto': 'Maria', 'pontuacao': 8}, 
          {'texto': 'Pedro', 'pontuacao': 7}, 
          {'texto': 'Leo', 'pontuacao': 1}, 
          {'texto': 'DudinhaMeuAmor', 'pontuacao': 10},
        ],
      }
    ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
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