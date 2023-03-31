import './repositorio_questoes.dart';
import 'questao.dart';

class ControladorQuiz {
  final repositorio = RepositorioQuestoes();

  int _indiceQuestaoAtual = 0;

  int get indiceQuestaoAtual => _indiceQuestaoAtual + 1;
  Questao get questaoAtual => repositorio.listar()[_indiceQuestaoAtual];
  int get quantidadeTotalQuestoes => repositorio.listar().length;
}
