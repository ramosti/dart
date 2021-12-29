import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String sexo, {String idade = '0', bool docil = false}) : super(sexo, idade, docil) {
    // this.idade = (idade == null) ? 'Idade indefinida' : idade; Null-Safety
    // this.sexo = (sexo == null) ? 'Sexo indefinido' : sexo; Null-Safety
  }

  void acao() {
    print('Late como um cao!');
  }
}
