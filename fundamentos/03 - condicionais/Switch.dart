void main() {
  print('(03.2) Switch\n');

  String operacao = '%'; // + - * /
  double a = 12, b = 3;

  switch (operacao) {
    case '+':
      print('Resultado ${a + b}');
      break;
    case '-':
      print('Resultado ${a - b}');
      break;
    case '*':
      print('Resultado ${a * b}');
      break;
    case '/':
      print('Resultado ${a / b}');
      break;
    default:
      print('Operacao invalida');
  }
}
