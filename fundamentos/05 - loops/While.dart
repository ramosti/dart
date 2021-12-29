void main() {
  print('(05.1) Loops (While doWhile)');

  // While faz o teste antes da execução
  var numero = 5;
  while (numero > 0) {
    print('While: $numero');
    numero--;
  }

  print('');

  // O doWhile faz a execução e testa depois
  var contagem = 1;
  do {
    print('doWhile $contagem');
    contagem++;
  } while (contagem <= 3);

  print('');

  int multiplo = 7;
  int min = 10;
  int max = 20;
  int resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é: $resultado');
      break; // Ao achar o primeiro multiplo interrrompe o loop
    }
    resultado++;
  }
}
