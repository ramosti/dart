import 'PessoaGetter.dart';

/**
 * * Singleton
 * - E um padrao de projeto para que exista apenas uma instancia da classe
 * - O construtor nomeado privado sem o construtor default impede de instanciar a classe
 * * Getter
 * - A _instancia privada é acessada através do get
*/
void main() {
  print('(11.2) Singletons Getter');
  print(PessoaGetter.instancia.nome);
  PessoaGetter.instancia.nome = 'Ricardo';
  print(PessoaGetter.instancia.nome);
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;
  p1.nome = 'Keity';
  print(PessoaGetter.instancia.nome);
  p2.nome = 'Sarah';
  print(PessoaGetter.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);
}
