import 'Animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios';
  }

  Mamiferos.masupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios + Bolsa externa';
  }

  Mamiferos.monotremado(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  // Metodos sem escopo em classes abstratas devem ser sobrescritos em classes herdeiras
  void reproduzir();
}
