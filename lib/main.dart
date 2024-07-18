import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';
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

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  // a funcao "build" recebe um parametro e retorna um widget
  Widget build(BuildContext context) {
    
    List<String> respostas = temPerguntaSelecionada
      ? _perguntas[_perguntaSelecionada].cast()['respostas']
      : [];

    // esta retornando uma nova instancia da classe "MaterialApp"
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
          ? Column(
            children: [
              Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
              ...respostas.map((t) => Resposta(t, _responder)),
            ],
          ) 
          : Center(
            child: Resultado()
          )
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