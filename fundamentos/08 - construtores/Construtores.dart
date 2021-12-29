import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print('(08.1) Construtores');
  Objeto objeto = Objeto();
  objeto.nome = 'mesa';
  print('Nome: ${objeto.nome}\n');

  Animal animal = Animal('Arya');
  print('Nome: ${animal.nome}, Raca: ${animal.raca}, Idade: ${animal.idade}');

  Pessoa pessoa1 = Pessoa('Ricardo', 32);
  print(
    'Nome: ${pessoa1.nome}, Idade: ${pessoa1.idade}, Cor: ${pessoa1.cor}, Altura: ${pessoa1.altura}',
  );

  Usuario usuario1 = Usuario('ramos.ti@gmail', '123456', nome: 'Ricardo');
  print('Usuario: ${usuario1.user}, Senha: ${usuario1.senha}, Nome: ${usuario1.nome}, Cargo: ${usuario1.cargo}');
  usuario1.autenticar();
  Usuario usuario2 = Usuario.admin('keity.ranielly', '123456', nome: 'Keity');
  print('Usuario: ${usuario2.user}, Senha: ${usuario2.senha}, Nome: ${usuario2.nome}, Cargo: ${usuario2.cargo}');
  usuario2.autenticar();
}
