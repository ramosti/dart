import 'dart:math';

///
/// * Conceito:
///   - List é uma coleção dinamica e ordenada de elementos entre colchetes
///   - forEach: Aplica a funcao anonima a cada elemento da nossa colecao
///   - Todo Array é um List<?>
///

listForEach() {
  print('(16.1.0) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((elemento) {
    print('foreach: $elemento');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nImplementação: ${frutas.runtimeType}');
  print(
    '\nBoleanas[3]: ${(boleanas[inteiros.length]) ? 'Verdadeiro' : 'Falso'}\n',
  );

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); //!camelCase

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print('\n$numeros');

  //// Deprecated
  //// List<dynamic> lista2 = List(2);
  List<dynamic> lista = List.empty(growable: true)..length = 2;
  lista = numeros.take(2).skip(1).take(1).toList();
  print('lista: ${lista}');

  print('numero.take(2): ${numeros.take(2)}');
  print('numero.take(2): ${numeros.take(2).runtimeType}');
  print('numero.take(1): ${numeros.take(1).toList()}');

  // Geradores de Lista
  List<String> listaPreenchida = List.filled(2, 'Elemento');
  List<String> listaGerada = List.generate(2, (i) => 'Nome: $i');
  List<double> listaPrecos = List.generate(5, (i) => double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print('ListaPreenchida: $listaPreenchida');
  print('ListaGerada: $listaGerada');
  print('ListaPrecos: $listaPrecos');
  listaPrecos.forEach((e) => print('foreach $e'));
}

///
/// * Expand
/// - Cria uma nova lista expandido ou concatenando os elementos
///
listExpand() {
  print('(61.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  print('listaFlat: $listaFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = List.empty(growable: true).toList();
  print('$listaDinamica');
  print(listaDinamica = [1, 5, 10] + [2, 7]);
  print(listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles));

  print(listaDinamica = [0, ...inteiros, 15]); // Operador SPREAD (espalhar)
  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);
  print(listaDinamica = [...[], for (var numero in numeros) numero]);
}

void main() {
  listForEach();
  listExpand();
}
