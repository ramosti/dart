/* Ao criar uma instancia new PessoaFactory('Ricardo')
   E executado primeiramente a factory retornando
   uma variavel do tipo PessoaFactory do tipo
   estitica e final com o nome de instancia.

   instancia por sua vez, cria uma instancia do construtor
   nomeado privado com o parametro 1('Ricardo')

   Que por sua vez, recebeu quando foi criado a instancia
   da classe PessoaFactory na linha 2
*/
import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = new PessoaFactory._construtorNomeado('indefinido');
  var nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    // Confirguracoes iniciais
  }
}

class PessoaInstancia {
  static late PessoaInstancia _instancia; // Retirar o _ para usar o singleton
  var nome;
  final int _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int identidade = 0}) {
    identidade = (identidade == 0) ? Random().nextInt(999999999 + 1) : identidade;

    if (_instancia == null) {
      return new PessoaInstancia._construtorNomeado(nome, identidade);
    }
    // return _instancia ??= new PessoaInstancia._construtorNomeado(nome, identidade);
    return _instancia;
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    // Configuracoes iniciais
  }

  get identidade => _identidade;
}
