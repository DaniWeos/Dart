void main() {
  // 01-Crie uma classe chamada Pessoa com os atributos nome e idade.
  // Em seguida, crie um objeto dessa classe e atribua valores aos atributos.
  // Por fim, exiba as informações da pessoa na tela.

  // 02-Crie uma classe chamada Retangulo com os atributos largura e altura.
  // Adicione um método chamado calcularArea() que retorna a área do retângulo (largura * altura).
  // Crie um objeto dessa classe, atribua valores aos atributos e exiba a área calculada.

  // 03-Crie uma classe chamada ContaBancaria com os atributos numero e saldo.
  // Adicione os métodos depositar(valor) e sacar(valor) que atualizam o saldo de acordo com as operações.
  // Crie um objeto dessa classe, faça algumas operações de depósito e saque, e exiba o saldo final.

  // 04-Crie uma classe chamada Carro com os atributos modelo e ano.
  // Adicione o método exibirDetalhes() que exibe as informações do carro (modelo e ano) na tela.
  // Crie dois objetos dessa classe e chame o método exibirDetalhes() para cada um deles.
  Pessoa pessoa1 = new Pessoa("Daniel", 24);
  print("Número 01");
  print(pessoa1.nome);
  print(pessoa1.idade);
  print("");
  Retangulo retangulo1 = new Retangulo(1.85, 6.55);

  print("Número 02");
  print(retangulo1.calcularArea());
  print("");

  print("Número 03");
  ContaBancaria conta1 = new ContaBancaria(001, 5000);
  ContaBancaria conta2 = new ContaBancaria(003, 500);
  print(conta1.depositarValor(2000));
  print(conta2.sacarValor(300));
  print("");

  print("Número 04");
  Carro carro1 = new Carro("Uno", 1999);
  Carro carro2 = new Carro("Palio", 2005);
  carro1.exibirDetalhes();
  carro2.exibirDetalhes();
  print("");

  print("Número 05");
  print(Calculadora().soma(5, 5.5));
  print(Calculadora().subtracao(5, 5.5));
  print(Calculadora().multiplicacao(5, 5.5));
  print(Calculadora().divisao(5, 50));
  print("");
}
class Pessoa{
  String nome;
  int idade;

  Pessoa (this.nome, this.idade);
}

class Retangulo{
  double altura;
  double largura;

  Retangulo (this.altura, this.largura);

  double calcularArea(){
    return altura * largura;
  }
}

class ContaBancaria{
  double numero;
  double saldo;

  ContaBancaria(this.numero, this.saldo);

  double depositarValor(double valor){
    return saldo = saldo + valor;
  }

  double sacarValor(double valor) {
    return saldo = saldo - valor;
  }
}
class Carro{
  String modelo;
  int ano;

  Carro(this.modelo, this.ano);

  exibirDetalhes(){
    print("Modelo: $modelo, ano: $ano");
  }
}
class Calculadora{
  double soma (double a, double b){
    return a+b;
  }
  double subtracao (double a, double b){
    return a-b;
  }
  double multiplicacao (double a, double b){
    return a*b;
  }
  double divisao (double a, double b){
    return a/b;
  }

}

