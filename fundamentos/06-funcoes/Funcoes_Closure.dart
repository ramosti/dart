///
/// Uma Closure ocorre quando uma funcao é declarada dentro do corpo de outra função!
/// Podendo retornar as variaveis locais e da funcao superior
///
void funcoesClosure() {
  print('(07.1) Funcoes Closure sem retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  print(saudacao);
  saudacao('Ricardo');

  Function somar(int valorA) {
    print('valorA: $valorA');
    return (double valorB) {
      print('valorB: $valorB');
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);
  print(descontarDez(100));

  print('(07.2) Funcoes Closure com Objetos\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      // return 'id: ${(++id).toString().padLeft(2, '0')}, nome: $nome, descricao: $descricao '; // retornar par um array
      // return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao};
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Ricardo', true)];
  listaObjetos.add(objeto('IPhone', 3000.00));
  listaObjetos.add(objeto('Keity', ['Sarah', 'Gustavo']));

  for (var objeto in listaObjetos) {
    /* print(objeto.map(
      (k, v) => MapEntry(k, (v is double) ? '${descontarDez(v)}' : v),
    )); */

    print((objeto.descricao is num) ? descontarDez(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  String id, nome;
  dynamic descricao;
  Objeto({
    required this.id,
    required this.nome,
    required this.descricao,
  });

  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

void main() {
  funcoesClosure();
}
