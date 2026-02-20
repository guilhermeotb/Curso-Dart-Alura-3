void main() {

Conta contaMatheus = Conta(titular:"Matheus", saldo: 1000 );
Conta contaRoberta = Conta(titular:"Roberta",saldo:2000 );

List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

contaRoberta.saldo = 5000;

for (Conta conta in contas){
print(conta.titular);
print(conta.saldo);
}

}



class Conta{
  String? titular;
  double? saldo;

//FUNÇÃO CONSTRUTORA
  Conta({this.titular,this.saldo});
}

