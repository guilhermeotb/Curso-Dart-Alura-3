abstract class Conta{
  String titular;
  double _saldo;

//FUNÇÃO CONSTRUTORA
  Conta(this.titular,this._saldo);

  void enviar(double valor){
  if( _saldo >= valor){
  _saldo -= valor;
  imprimeSaldo();
  }
}


void receber(double valor){
 _saldo += valor;
 imprimeSaldo();
}

void imprimeSaldo(){
  print("O saldo atual de $titular, é: R\$$_saldo");
}

}

class ContaCorrente extends Conta {
double emprestimo = 300;
ContaCorrente(super.titular, super._saldo);

@override
void enviar(double valor){
  if ( _saldo + emprestimo >= valor){
    _saldo -= valor;
    imprimeSaldo();
  }

}

}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;
ContaPoupanca(super.titular, super._saldo);
void calculaRendimento(){
  _saldo = _saldo*(1 + rendimento);
}
}

class ContaSalario extends Conta {
  String cnpjEmpresa;
  String nomeEmpresa;
  
  ContaSalario(super.titular, super._salario, this.cnpjEmpresa, this.nomeEmpresa);
  
  void depositarSalario(double valorSalario){
    _saldo += valorSalario;
  print("O salário da $nomeEmpresa, de CNPJ $cnpjEmpresa no valor de R\$ $valorSalario foi depositado");
  }

}

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor){
    return valor*taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor){
    if (_saldo >= valor + valorTaxado(valor) ) {
      _saldo -= valor + valorTaxado(valor);
      imprimeSaldo();
    }
  }

  @override
  void receber(double valor){
    _saldo += valor - valorTaxado(valor);
    imprimeSaldo();
  }
}

class ContaInvestimento extends Conta with Imposto{
  ContaInvestimento(super.titular, super.saldo);

  @override
  void enviar(double valor){
    if(_saldo >= valor + valorTaxado(valor)){
      _saldo -= valor + valorTaxado(valor);
      imprimeSaldo();
    }
  }

  @override
  void receber(double valor){
    _saldo += valor - valorTaxado(valor);
    imprimeSaldo();
  }

}

