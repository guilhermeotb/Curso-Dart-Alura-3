import 'package:anybank/conta.dart';

void main() {

ContaCorrente contaChris = ContaCorrente("Chris", 4000);
ContaPoupanca contaDenise = ContaPoupanca("Denise", 4000);
ContaSalario contaCatarina = ContaSalario("Catarina", 10000,"123456789", "Anybank");
ContaEmpresa contaMatheus =  ContaEmpresa("Matheus", 2000);
ContaInvestimento contaRoberta = ContaInvestimento("Roberta", 2000 );

contaChris.imprimeSaldo();
contaChris.enviar(4300);

contaDenise.imprimeSaldo();
contaDenise.enviar(4300);
contaDenise.calculaRendimento();
contaDenise.imprimeSaldo();

contaCatarina.depositarSalario(5000);
contaCatarina.imprimeSaldo();

contaMatheus.enviar(1000);
contaRoberta.receber(1000);



}





