/**
 **Tipos de variaveis
 * Num(int, double), String, bool, dynamic
*/

void main() {
  print('(01.1) Variaveis Funções');
  num pi = 3.14;
  print(pi.floor()); // 3 - Arredondar variaveis fracionarias
  print(pi.round()); // 3 - Arredonda para o inteiro mais proximo
  print(pi.ceil()); // 3 - Arredonda para o inteiro mais proximo maior
  print(pi.clamp(3, 3.1)); // 3.1 Independente do valor decimal, sera apresentado 1
  print(pi.compareTo(3)); // -1 se for inferior, 0 igual e 1 se for superior
  print(pi.remainder(3)); // 0.14000000000000012
  print(pi.toInt()); // 3 Transforma em Int
  print(2.toDouble()); // 2.0 Transforma em double
  print(pi.toString()); // '3.14' Transforma em String
  print(pi.toStringAsFixed(1)); // 3.1 Fixa uma casa decima
  print(pi.truncate()); // 3 - Descarta a parte fracionaria
  print(pi.isNegative); // GET que verifica se é negativo
  print(pi.isInfinite); // GET se é infinito
  print((pi / 0).isInfinite); // GET se é infinito
  print(12.gcd(16)); // Maximo divisor comum entre 12 e 16
  print('1'.padLeft(2, '0')); // 01
  print('9'.padLeft(3, '0')); // 009
  print('5'.padRight(5, '6')); // 56666

  print('------- --------- --------');

  String nome = 'Ricardo';
  String NomeCompleto = '\t Ricardo Ramos dos Santos';
  print(nome.toLowerCase()); // ricardo
  print(nome.toUpperCase()); // RICARDO
  print(NomeCompleto); // Sem trim
  print(NomeCompleto.trim()); // Com trim
  print(NomeCompleto.split(' ')); // [	, Ricardo, Ramos, dos, Santos]
  print(nome.split('')); // [R, i, c, a, r, d, o]
  print(nome.substring(3, 6)); // ard
  print(nome.startsWith('R')); // true
  print(nome.startsWith('ard', 2)); // false
  print(nome.startsWith('ard', 3)); // true
  print(nome.replaceAll('a', 'e')); // Ricerdo
  print(nome.replaceFirst('Ric', 'Fic')); // Ficardo
  print(nome.replaceFirst('r', 'f', 4)); // Ricafdo
  print(nome.replaceFirst('R', 't', 0)); // ticatdo
  print(nome.replaceRange(2, 4, '')); // Rirdo
  print(NomeCompleto.trim().split(' ')); // [Ricardo, Ramos, dos, Santos]
  print(nome.contains('d')); // true
  print(nome.contains(RegExp('[A-Z]'))); // true
  print(nome.contains('c', 2)); // true
  print(nome.indexOf('ca')); // 1 retorna o indice de acordo com a referencia
  print(nome.indexOf(RegExp(r'[A-Z][a-z]'))); //
  print(nome.indexOf('kei')); // -1 Nao encontou
  print(nome.length); // 7 cumprimento do array
  print(nome.endsWith('o')); // true Se termina com o valor passado
  print(nome.compareTo('Ricardo')); // 0 se for igual
  print(nome.compareTo('Ric')); // 1 possui parte inicial
  print(nome.compareTo('rdo')); // -1 se nao encontrar
  print(nome.isEmpty); // false Verifica se é uma string vazia
  print(''.isEmpty); // true
  print(double.parse('12.55')); // '12.55'
  print(double.parse('12.55') is String); // false
  print(2.55.toString() is String); // true
  print(int.parse('12') is int); // true
  print(nome.lastIndexOf('a')); // 3 Index que encontou o valor
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf('de');
  print('A sopa é ${sopa.substring(index)}.\nIndex = $index\nsopa.substring = ${sopa.substring(index)}');

  print('');

  num numero = 3.14;
  print(numero is double); // true
  print(numero is! double); // false
}
