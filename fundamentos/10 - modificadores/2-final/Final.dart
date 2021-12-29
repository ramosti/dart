import 'Pessoa.dart';

/**
 * 
 * * Final
 * Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
 * Em coleções final nem todo o conteudo sera final
 * 
*/
void main() {
  print('(10.2) Modificadores final\n');

  //? O objeto e  queda livre leva 5s para chegar ao solo. Qual a velocidade maxima do objeto?

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade maxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print('Contagem: $indice');
  }

  var pessoa = Pessoa('Ricardo', ['Keity', 'Sarah', 'Gustavo']);
  pessoa.nome = 'Ricardo Santos';
  // pessoa.familiares = []; // !Erro atributo final
  print('Nome: ${pessoa.nome} familiares: ${pessoa.familiares}');
}
