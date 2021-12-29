class Animal {
  late String nome;
  late String raca;
  late int idade;

  Animal(String nome, [raca = 'Whyskas Sache', int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parametros default! ${this.toString()}\n');
  }
}
