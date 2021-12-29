void main() {
  print('(03.0) Condicionais (if else)');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('False');
  }

  print(double.parse('359.133478').toStringAsFixed(3));
  print('ParseString: ${10.10.toString() is String}');

  double peso = 68;
  double altura = 1.75;
  var temp = peso / (altura * altura); // Peso é dividido por altura ao quadrado
  print(temp);
  double imc = double.parse(temp.toStringAsFixed(2));
  print(imc);

  if (imc < 18.5) {
    print('IMC $imc Abaixo do peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc Peso normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc Obesidade grau 2');
  } else {
    print('IMC $imc Obesidade grau 3');
  }
}
