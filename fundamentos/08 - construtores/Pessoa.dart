class Pessoa {
  String nome;
  int idade;
  late String cor;
  double altura;

  Pessoa(this.nome, this.idade, {String cor = 'Roxo', this.altura = 0.50}) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido com parametros nomeados! ${this.toString()}\n');
  }
}
