class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    var usuario = 'ramos.ti@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado com sucesso!\n');
    } else {
      print('Usuario não autenticado\n');
    }
  }
}
