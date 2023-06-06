//Crie um sistema bancário simplificado que permita criar contas bancárias,
//realizar transações (depósito, saque e transferência) e exibir o saldo de uma conta.

class ContaBancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  ContaBancaria(this.nomeTitular, this.numeroConta, this.saldo);

  void exibirInformacoes() {
    print("Nome: <$nomeTitular> "
        "Numero da Conta: <$numeroConta> "
        "Saldo: <$saldo>");
  }

  void exibirSaldo() {
    print("Saldo atual: $saldo");
  }

  double realizarDeposito(double valor) {
    print("Você depositou $double");
    return saldo = saldo + valor;
  }

  double realizarSaque(double valor) {
    print("Você sacou $double");
    return saldo = saldo - valor;
  }
  void transferir (ContaBancaria contaDestino, double valor){
    if (valor <= saldo){
      saldo -= valor;
      contaDestino.realizarDeposito(valor);
      print("A transferencia de RS $valor realizada para conta ${contaDestino.numeroConta}");
    } else {
      print("Saldo insuficiente.");
    }
  }
}
class Banco{
  late List<ContaBancaria> contas;

  Banco(){
    contas = [];
  }

  void adicionarConta(ContaBancaria conta){
    contas.add(conta);
    print("Conta ${conta.numeroConta} adicionada ao banco");
  }

  void realizarTransferencia (int numeroContaOrigem, int numeroContaDestino, double valor){
    ContaBancaria? contaOrigem;
    ContaBancaria? contaDestino;

    for (var conta in contas){
      if (conta.numeroConta == numeroContaOrigem){
        contaOrigem = conta;
      } else if (conta.numeroConta == numeroContaDestino){
        contaDestino = conta;
      }
      if (contaOrigem != null && contaDestino != null){
        break;
      }
    }
    if (contaOrigem != null && contaDestino != null){
      contaOrigem.transferir(contaDestino, valor);
    } else {
      print ("Conta não encontrada");
    }
  }
  void exibidirSaldoContas(){
    for (var conta in contas){
      conta.exibirSaldo();
    }
  }
}

void main(){
  Banco banco = Banco();

  ContaBancaria conta1 = new ContaBancaria("Daniel", 01, 1000);
  ContaBancaria conta2 = new ContaBancaria("Ana", 02, 2000);
  ContaBancaria conta3 = new ContaBancaria("Darci", 03, 3000);

  banco.adicionarConta(conta1);
  banco.adicionarConta(conta2);
  banco.adicionarConta(conta3);

  conta1.exibirSaldo();
  conta1.exibirInformacoes();

  conta1.transferir(conta3, 5000);
  conta1.transferir(conta3, 120);
  conta1.exibirSaldo();
  banco.exibidirSaldoContas();
}

