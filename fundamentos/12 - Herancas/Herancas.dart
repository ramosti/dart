import 'Cao.dart';

/**
 * * Regras
 * - Uma classe pode ter somente uma herança!
 * 
 * * Construtores
 * - Devem obedecer a ordem dos parametros
 * - Parametros default devem ser nomeados ou posicionados
 * - Tratamento e tipagem de parametros deve ser feito na classe herdeira!
 * 
 */

void main() {
  print('(12.0) Heranças de atributos metodos e construtores\n');

  var cao = Cao('Mailon', 'Labrador', 'Macho', docil: true);
  print('Nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  cao
    ..dormir()
    ..alimentar()
    ..acao();
  print('${cao.nome} ${cao.docil ? 'esta amigavel' : 'nao esta amigavel'}');
}
