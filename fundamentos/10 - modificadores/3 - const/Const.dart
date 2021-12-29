import 'Brasil.dart';

/**
 * * Const
 *  - Iniciada em tempo de compilacao, deve ser declarada com valor constante
 *  - Ao nivel de classes deve ser statica para ficar disponivel na classe
 *  - Em coleções const todo o conteudo deve ser constante
 * * Objeto imutavel
 *  - O construtor deve ser constante
 *  - As variaveis devem ser final ou static const
*/
void main() {
  print('(10.3.0) Modificadores Constante');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);

  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado); // Em uma variavel final, podemos alterar
  print(numeros);

  final listaFinal = const [0, 1];
  // listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1, 2, pi]; // Se adicionar o raio, a listaConst nao aceita porque raio nao é constante
  // listaConst.add(pi);
  print(listaConst);

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('Constante: ${constante + indiceFinal}');
  }

  var pais = new Brasil(-15.792371, -47.882326);
  print('\n Objeto: $pais capital: ${Brasil.capital} Latitude: ${pais.latitude}, Longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
