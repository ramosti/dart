void main() {
  print('(03.1) Ternario ()\n');

  int ano = 2024;
  print('Ano $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'é bissexto' : 'não é bisexto'}');
}
