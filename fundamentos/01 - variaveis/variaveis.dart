// Doc comment (///)

void main() {
  print("(01.0) Variaveis");

  var valorA = 10; // E dinamica ate ser atribuida
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');

  print("concatenar "
      "Strings "
      "é simples assim "
      "treinando para ter "
      "certeza, de que "
      "aprendi a concatenar "
      "Strings");

  var texto1 = '\nRicardo';
  var texto2 = "Ramos";
  var texto3 = '''\n e
  Keity Ranielly\n
      Vai Curintia\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

  // * $ variaveis
  // * ${} operacoes
  print('verdadeiro = ${verdadeiro}'); // * interpolação
  print('falso = ' + '$falso'); // concatenacao
  print(''.runtimeType); // descobre o tipo de variavel em tempo de execucao
  const pi = 3.14; // variavel constante é atribuida em tempo de compilação
  nome = 'Ricardo'; // !errada
  String sobrenome = 'Santos';
  int idade = 32;
  double altura = 1.72;
  bool adulto = true;

  print('\nnome: ' + "$nome \nQtd letras: ${nome.length} " + """\nSobrenome: $sobrenome \nQtd letras: ${sobrenome.length}\n""");
  print(''' idade $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');
  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);

  /**
   * Backspace: \b
   * Formfeed: \f
   * Newline: \n
   * return: \r
   * tab: \t
  */
  print('''\f HELLO WORLD! (titulo)\n
  Acredito que irei conseguir trabalhar a minha maneira.
  Começando desde o início, sem dar saltos buscando a 
  excelencia e a autenticidade.

  Montarei a empresa Meta Web Brasil (MWB) com o propósito de ajudar
  as pessoas com conteúdo autentico.

  Junto vira outas formas de renda.

  Nada disso faz sentido se eu não tiver minha familia ao meu lado.
  Sem minha familia, o que foi escrito acima não tem valor em nenhum plano.

  \r\f EMPRESAS
  \t - Meta Web Brasil
  \t\t - Seu Astro
  \t\t - Sinastria no tinder
  \t\t - Aplicativo para ambiente virtual de imoveis e moveis 
  ''');
}
