void main() {
  print('(05.1) Loops For\n');

  for (var indice = 1; indice <= 3; indice++) {
    print('indice: $indice');
  }

  print('');

  for (int i = 15; i >= 0; i -= 5) {
    print('Regressiva: $i');
  }

  print('');

  String nome = 'Keity';
  int numero = 0;
  for (int i = numero; i < nome.length; i++) {
    /* if (i % 2 == 0)
      print('$i é par');
    else
      print('$i é impar'); */

    print('$i é ${i % 2 == 0 ? 'par' : 'impar'}');
  }

  print('');
  //* Com o for in temos um controle automatizado crescente!
  dynamic frutas = ['Tomate', 'Manga', 'Melancia', 'Laranja', 'Abacaxi'];
  for (var fruta in frutas) {
    print('forIn: $fruta');
  }
}
