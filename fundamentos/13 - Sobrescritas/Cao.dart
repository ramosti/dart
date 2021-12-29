import 'Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = true}) : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    print('Dorme como um cao!'); // Sobrescreve o metodo da classe herdada (super)
  }

  // @override - é opcional a syntax do override
  void alimentar() {
    super.alimentar(); // implementa o scopo do metodo herdado (super) Adiciona todo o codigo do metodo e executa antes
    print('Cao');
  }

  @override // Metodos sem escopos em classes abstratas devem ser sobrescritos
  void reproduzir() {
    print('Reproduz como um cao!');
  }

  void acao() {
    print('Late como um cao');
  }

  // Toda classe que extends de Object, ao usar a funcao print a funcao toString retorna (Instance of 'Object')
  String toString() {
    return 'Instance of ${this.runtimeType} nome: $nome raca: $raca sexo: $sexo';
  }
}
