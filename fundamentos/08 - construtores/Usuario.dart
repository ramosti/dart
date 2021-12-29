class Usuario {
  late String user, senha, nome, cargo;
  late int idade;

  Usuario(this.user, this.senha, {required this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;

    print('\nConstrutor resumido com parametros nomeados default! ${this.toString()}');
  }

  // Construtor ADMIN
  Usuario.admin(this.user, this.senha, {required this.nome}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = 'Administrador';

    print('\nConstrutor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    // dados recuperados do banco de dados
    var user = 'ramos.ti@gmail';
    var senha = '123456';

    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario nao autenticado');
  }
}
