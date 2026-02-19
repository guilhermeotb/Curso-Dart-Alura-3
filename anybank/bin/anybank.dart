void main() {

Conta contaMatheus = Conta("Matheus", 1000 );
Conta contaRoberta = Conta("Roberta", 2000 );

List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

print(contaMatheus.titular);
print(contaMatheus.saldo);

print(contaRoberta.titular);
print(contaRoberta.saldo);

contaRoberta.saldo = 5000;

print(contaRoberta.saldo);
 
}

class Conta{
  String titular;
  double saldo;

//FUNÇÃO CONSTRUTORA
  Conta(this.titular, this.saldo);
}

