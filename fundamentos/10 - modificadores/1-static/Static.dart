import 'Calculos.dart';

/**
 * 
 * * Static
 *    A variavel estatica fica disponivel na própria classe em vez de suas instancias/objetos
 *    em metodos estaticos deve usar variaveis estaticas da classe
 * 
 *    Variaveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
 * */
void main() {
  print('(10.1) POO Static');
  const double raio = 5;
  var calculos = new Calculos();
  print(calculos.pi);

  print(Calculos.areaCirculoEstatico(raio));

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('\nInstancias consomem ${identical(calculos, calculos2) ? 'MENOS' : 'MAIS'} memoria\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('\nRetornos iguais: ${(Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio)) ? 'SIM' : 'NAO'}\n');
}
