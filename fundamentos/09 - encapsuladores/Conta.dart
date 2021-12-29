import 'dart:math';

class Conta {
  bool alterarLimite = false;

  late int _numeroConta;
  late String _nome;
  double _saldo = 0;
  late double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Conta numero "${_numeroConta}" Titular: "${_nome}" Criada com sucesso');
  }

  // * Construtor NOMEADO
  Conta.vip(String nome, {double limite = 1000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('{VIP} - Conta numero "${_numeroConta}" Titular: "${_nome}" Criada com sucesso');
  }

  // getter padrao
  int get numeroConta {
    return this._numeroConta;
  }

  /* double  */ get saldo => this._saldo;

  // setter padrao
  set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print('Limite alterado para o valor $limite');
    } else {
      print('Permissao negada! Alteracao: Limite do titular.');
    }
  }

  // getter e setter customizaveis
  String get informacao => 'Titular: ${_nome} N. Conta: ${_numeroConta} Saldo: ${_saldo}';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito valor $deposito Saldo atualizado: $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print('Saque: $saque, Saldo atualizado: $_saldo');
      } else {
        print('Saldo valor $_saldo insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque $_limite');
    }
  }
}
