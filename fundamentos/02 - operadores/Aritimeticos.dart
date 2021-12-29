void main() {
  print('(02.2) Operadores aritméticos (+ - * / ~/ %) incremento (+= ++), e assignacao ( = ??) \n');

  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso;
  ++peso;

  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // incrementa a antes que b receba o valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print('c: $c');

  d = a ~/ b; // Retorna o valor inteiro da divisao
  print('c: $c\nd:$d');

  var valorA = 9, valorB = 2;
  print('ex: 9 ~/ 2 = ${valorA ~/ valorB}');
  print('ex: 9 / 2 = ${valorA / valorB}');

  e = 1;
  f = e;
  f = null;
  f ??= ++e; // e recebe o incremento e atribui a f, SOMENTE se ela for nula ASSIGNACAO
  print('e: $e\nf: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; // x recebe o valor de y, a menos que y seja nulo, entao x recebe o z
  print(x);

  var nome = null;
  print('nome: ${nome ?? 'Ricardo'}');

  var numero = 12;
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('''\f SOBRE O NUMERO $numero
  numero: $numero
  par: $par
  impar: $impar
  positivo: $positivo
  negativo: $negativo
  ''');
  var multiplo = 3;
  print('numero: $numero é multiplo de $multiplo? ${numero % multiplo == 0}'); //*MULTIPLO

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor; // mostra o resto da divisao
  bool exata = resto == 0;
  print('''\f DIVISAO
  Dividendo: $dividendo
  Divisor: $divisor
  Quociente: $quociente (dividendo / divisor)
  Resto: $resto (dividendo % divisor)
  Exata: $exata (resto == 0)''');
}
