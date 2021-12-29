import 'Conta.dart';
import 'Usuario.dart';

///
/// Encapsuladores sao usados para proteger atributos e variaveis
/// GET e usado para acessar e SET é usado para alterar
/// Atributos ou variáveis com underline sao privados Ex: _saldo
///
void main() {
  print('(09.1) Encapsuladores\n');
  var usuario = Usuario('Ricardo', '123456');
  usuario
    ..senha = 'abc123'
    ..alteracao = true
    ..senha = 'aaabbb';
  print('Nome ${usuario.nome} Senha: ${usuario.senha}\n');

  var conta = Conta('Keity');
  /* 
  conta.deposito = 900;
  conta.deposito = 450; 
  */
  // * Operador em cascata
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('\n');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('\n');

  conta
    ..saque = 950
    ..saque = 850;

  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Ricardo', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;

  print('${contaVip.informacao}');
}

class Teste {
  late String _nome;

  String get nome => _nome;

  set nome(String nome) {
    _nome = nome;
  }
}
