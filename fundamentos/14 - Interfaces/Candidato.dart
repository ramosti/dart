import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  late String objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido, required this.postagem}) : super(nome);

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String ideologia;
  String partido;
  String postagem;

  @override
  void escreverPostagem() {
    print('Postagem  de $nome no facebook: $postagem');
  }

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}
