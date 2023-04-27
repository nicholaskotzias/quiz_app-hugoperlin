import './repositorio_questoes.dart';
import 'questao.dart';

class ControladorQuiz {
  final repositorio = RepositorioQuestoes();
  String _alternartivaSelecionada = "";

  int _indiceQuestaoAtual = 0;

  int get indiceQuestaoAtual => _indiceQuestaoAtual + 1;
  Questao get questaoAtual => repositorio.listar()[_indiceQuestaoAtual];
  int get quantidadeTotalQuestoes => repositorio.listar().length;

  String get alternativaSelecionada => _alternartivaSelecionada;
  bool get selecionouAlternativa => _alternartivaSelecionada != "";

  void selecionarAlternativa(String alternativa) {
    _alternartivaSelecionada = alternativa;
    print("Clicou na ${alternativa}");
  }
}
