import 'PessoaFactory.dart';

/**
 * * Singleton
 * - E um padrao de projeto para que exista apenas uma instancia da classe
 * - O construtor nomeado privado sem o construtor default impede de instanciar a classe
 * * Factory
 * - Construtor factory é usado para retornar/manter a instancia original.
 * - Construtor factory é capaz de retornar valores
*/
singletonFactory() {
  print('(11.3) Singletons Factory');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Ricardo';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Keity';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Gustavo';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, p2));
  print(identical(p1, PessoaFactory.instancia));
  print(p1 == PessoaFactory.instancia);
}

singletonInstancia() {
  print('\n11.4 Singleton Instancia\n');

  var p1 = new PessoaInstancia(nome: 'Ricardo');
  print('nome: ${p1.nome} id: ${p1.identidade}');
}

void main() {
  singletonFactory();
  singletonInstancia();
}
