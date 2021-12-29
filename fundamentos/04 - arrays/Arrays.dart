///
/// Array é uma lista dinamica e ordenada de elementos entre chaves
///
void main() {
  print('(04.0) Arrays\n');
  var textos = ['Ricardo', 'Keity'];
  print(textos);

  var numero = [1, 2.5, 5, 31, 36];
  print(numero);

  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]}');

  // print('condicoes[3] == null: ${condicoes[3] ?? (condicoes[0] ? condicoes[1] : condicoes[2])}');
  var arrayDinamico = ['Texto', 3, true, 2.5];

  print('\n(04.1)Arrays Funcoes');
  arrayDinamico.add('Adicionando via ADD');
  arrayDinamico.insert(0, 'Keity');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 3);
  print(arrayDinamico);
  arrayDinamico.remove('Keity');
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();
  print('$arrayDinamico == null : ${arrayDinamico == null}');
  print('$arrayDinamico == empty : ${arrayDinamico.isEmpty}');
  // arrayDinamico.length = 1;
  print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  var numbers = [10, 2.5, 1, 7, 10, 2];
// Sort from shortest to longest.
  numbers.sort();
  print(numbers); // [1, 2, 2.5, 7, 10, 10]
  var nomes = ['Ricardo', 'Keity', 'B', 'Gustavo', 'Sara'];
  nomes.sort();
  print(nomes);
  nomes.sort((a, b) => a.length.compareTo(b.length));
  print(nomes);
  nomes.sort((a, b) => b.compareTo(a)); // Decrescente
  print(nomes);
}
