import 'package:flutter/material.dart';
import 'package:quiz_app/botao_alternativa.dart';
import 'package:quiz_app/controlador_quiz.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ControladorQuiz controladorQuiz = ControladorQuiz();

  void _selecionarAlternativa(String alternativa) {
    setState(() {
      controladorQuiz.selecionarAlternativa(alternativa);
    });
  }

  @override
  Widget build(BuildContext context) {
    final questao = controladorQuiz.questaoAtual;

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Questão ${controladorQuiz.indiceQuestaoAtual}/${controladorQuiz.quantidadeTotalQuestoes}"),
              Divider(thickness: 5),
              Text(questao.enunciado),
              Divider(thickness: 5),
              SizedBox(height: 10),
              ...controladorQuiz.questaoAtual.alternativas.map(
                (alternativa) {
                  return BotaoAlternativa(
                    alternativa: alternativa,
                    acao: _selecionarAlternativa,
                    selecionada:
                        controladorQuiz.alternativaSelecionada == alternativa,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
