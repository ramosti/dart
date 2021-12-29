import 'Candidato.dart';

/**
 * * Interfaces, conceito:
 * - Interfaces são modelos para implantar métodos e atributos em nossas classes
 * 
 * * Regras
 * - Ao implantar um interface devemos utilizar todos os métodos e atributos
 * - No dart não tem sintaxe para interfaces, pode ser uma classe (concreta ou abstrata)!
 * - Pode implantar mais de uma interface e deve sobreescrever todos os métodos e atributos.
 * 
*/

void main() {
  print('(15.0) Interfaces');
  Candidato bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL', postagem: 'Vou acabar com a corrupção no Brasil!');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou tentar fazer o meu melhor!'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
