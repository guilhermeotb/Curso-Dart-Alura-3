class Conta{
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