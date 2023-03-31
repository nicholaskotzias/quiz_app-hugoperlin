import 'package:flutter/material.dart';
import 'package:quiz_app/controlador_quiz.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ControladorQuiz controladorQuiz = ControladorQuiz();

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
              ElevatedButton(
                onPressed: () {},
                child: Text(questao.alternativas[0]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(questao.alternativas[1]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(questao.alternativas[2]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(questao.alternativas[3]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
