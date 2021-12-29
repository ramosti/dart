class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  // em metodos estaticos deve usar variaveis estaticas da classe
  static double areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
