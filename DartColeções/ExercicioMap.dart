class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {
      "nome": this.nome,
      "idade": this.idade,
      "estaAutenticada": this.estaAutenticada
    };
  }
}