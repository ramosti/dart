import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print('(07.1) Classes e Objetos');
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Ricardo';
  pessoa1.idade = 32;
  print('Nome: ${pessoa1.nome}, Idade: ${pessoa1.idade}\n');

  // Operador em cascata permite emitir varias chamadas por meio de um objeto
  var pessoa2 = Pessoa();
  pessoa2
    ..nome = 'Keity'
    ..idade = 31
    ..info();

  Conta conta1 = Conta();
  print('Nome: ${conta1.nome}, N.Conta: ${conta1.numeroConta}, Saldo: ${conta1.consultarSaldo()}');
  conta1.calcularSalario(1000, 100, 2);
  conta1.depositar(50);
  conta1.sacar(500);

  Usuario usuario1 = Usuario();
  print(usuario1);
}
