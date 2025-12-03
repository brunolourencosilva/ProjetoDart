class Conta{
  // Definição (atributos) da classe Conta
  late String titular;
  late double saldo;

  // Construtor da classe Conta
  Conta(String titular,double saldoInicial){
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  // Metodo para relizar um deposito na conta
 void depositar(double valor){
  saldo += valor; // Incrementa o valor ao saldo da conta
  print('Deposito de $valor realizado. Novo saldo: $saldo');
  print("-"*70);
 }

  // Metodo para realizar um saque na conta
  void sacar(double valor){
    if (saldo >= valor){
      saldo -= valor; // Decrementa o valor do saldo da conta
      print('Saque de $valor realizado. Novo saldo: $saldo');
      print('-'*70);
    } else {
      print("Saldo de Insufiente. Operação não realizada.");
      print('-'*70);
    }
  }

  // Metodo para exibir o saldo da conta
  void exibirSaldo(){
    print("Saldo atual: $saldo");
    print('-'*70);
  }
}

// Uso da classe Conta
void main(){
  // Criação de uma instancia da classe Conta com o construtor
  Conta cliente1 = Conta("John", 10000.0);
  // Chamada do metodo exibirSaldo() da instancia minhaConta
  cliente1.exibirSaldo();
  cliente1.depositar(5000.0);
  cliente1.sacar(200.0);
  cliente1.exibirSaldo();
}