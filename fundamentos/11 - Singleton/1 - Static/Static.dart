import 'PessoaStatic.dart';

/**
 * * Singleton
 *   - E um padrão de projeto para que exista apenas uma instancia da classe.
 *   - O construtor nomeado privado sem o construtor default impede de instanciar a classe
 * * Static
 *   - A instancia pode ser acessada diretamente
*/
void main() {
  print('11.1 Singletons Static\n');
  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Keity';
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = 'Sarah';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Gustavo';
  print(PessoaStatic.instancia.nome);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);
}
