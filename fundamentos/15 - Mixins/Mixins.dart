/**
 * * Conceito
 * - Mixin permite implementar métodos e atributos de outras classes
 * 
 * * Regra
 * - Devem ser implementados antes das interfaces
 * - Podem ser implementados a partir de uma classe concreta ou abstrata
 * - Nao pode implementar mais de um mixin, e não é obrigatório usar todo os metodos e atributos
 * - As classes que possuem metodos iguais serão sobrescritos em ordem ate a classe herdeira
 * 
 * * ON
 * - É obrigatorio declarar sua classe como mixin
 * - Restringi o uso  do mixin as classes que estendem ou implementam a classes declarada.
*/

// CLASSE ABSTRATA

abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

// INTERFACES

abstract class Presidenciavel {
  late String partido;
  late String ideologia;

  void ideologiaPolitica();
}

class Postagem {
  late String postagem;

  // * Por não ser uma classe abstrata, é obrigatorio implementar o escopo da função.
  // Se fosse uma classe abstrata assim como a classe Cidadao, não precisaria do escopo da função
  // void escreverPostagem();
  void escreverPostagem() {
    print('');
  }
}

// MIXINS

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

abstract class Conta {
  late double _saldo, salario = 33000;

  get saldo => this.saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}

// CLASSE CONCRETA

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  late String objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido, required this.postagem}) : super(nome);

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String ideologia;
  String partido;
  String postagem;

  @override
  void escreverPostagem() {
    print('Postagem  de $nome no facebook: $postagem');
  }

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }

  // MIXINS
  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestacao de constas!\n');
    } else {
      print('Candidato $nome foi barrado na prestação de contas\n');
    }
  }
}

void main() {
  print('(15.0) Mixin\n');
  Candidato bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL', postagem: 'Vou acabar com a corrupção no Brasil!');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou tentar fazer o meu melhor!'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 360000
    ..prestacaoContas();
}
