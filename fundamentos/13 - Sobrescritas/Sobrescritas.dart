import 'Cao.dart';

/**
 * * Metodos (override/sobreposição != overload/sobrecarga)
 * - Override: Temos sobrescrita dos metodos da classe pai na classe herdeira
 * 
 * * Construtores
 * - Super se refere ao construtor da classe herdeira
 * 
 * * Classe abstrata
 * - Nao podem ser instanciadas, servem como modelo
 * - Metodos sem escopo devem ser sobrescritas nas classes herdeiras
*/

void main() {
  print('(13.0) Sobrescritas de metodos, Atributos e Construtores');
  // var cao = Cao.selvagem('Mailon', 'Labrador', 'Masculino');
  var cao = Cao.domestico('Mailon', 'Labrador', 'Masculino');
  print('nome ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} Docil: ${cao.docil}');
  print('Desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print(cao);
  print('${cao.nome} ${cao.docil ? 'Esta amigavel' : 'Nao esta amigavel'}');
  // var animal = Animal.vertebrados('10');
}

//? Desafio: Criar uma classe Abelha que herda de Artropodes com os construtores(insetos, aracnideos e crustaceos)
//? que herde de Animal no construtor Invertebrados!