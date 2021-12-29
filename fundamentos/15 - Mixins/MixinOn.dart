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

abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// MIXINS
mixin Cantor on Artista {
  void acao() {
    print('Canta');
  }
}

class Dancarino {
  void acao() {
    print('Dança');
  }
}

// INTERFACE
abstract class Acao {
  void executar();
}

// CLASSES CONCRETAS
class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compoe'); // comente para ver ahierarquia de sobrescritas

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// A classe MC nao pode porque nao extends de Artista
class MC with Dancarino implements Acao {
  void acao() => print('Mixa.. bota o batidão'); // comente para ver ahierarquia de sobrescritas

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main() {
  print('(15.1 Mixin On)\n');

  Musico musico = Musico();
  musico.executar(); // compoe

  print('');

  MC mc = MC();
  mc.executar(); // bota o batidao
}
