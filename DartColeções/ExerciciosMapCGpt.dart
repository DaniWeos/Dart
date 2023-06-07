// Crie um Map vazio chamado dadosPessoais e adicione as seguintes informações a ele: "nome" com valor "João", "idade" com valor 25 e "cidade" com valor "São Paulo".
// Acesse o valor da chave "idade" no Map dadosPessoais e imprima-o.
// Adicione uma nova chave "profissão" com valor "Engenheiro" ao Map dadosPessoais.
// Crie um novo Map chamado dadosPessoais2 e copie todas as informações do Map dadosPessoais para ele.
// Remova a chave "cidade" do Map dadosPessoais2.
// Verifique se o Map dadosPessoais2 contém a chave "nome". Imprima "Sim" se contiver e "Não" caso contrário.
// Imprima todas as chaves do Map dadosPessoais2 utilizando um loop.
// Imprima todos os valores do Map dadosPessoais2 utilizando um loop.
// Crie um Map chamado estoque com os seguintes itens e suas respectivas quantidades: "maçã" (5), "banana" (2), "laranja" (8), "uva" (10).
// Verifique se o Map estoque contém a chave "banana". Imprima "Sim" se contiver e "Não" caso contrário.

void main() {
  Map<String, dynamic> dadosPessoais = {};
  dadosPessoais["nome"] = "João";
  dadosPessoais["idade"] = 25;
  dadosPessoais["cidade"] = "São Paulo";
  print(dadosPessoais);

  var idade = dadosPessoais["idade"]; // pegar o valor de uma chave map
  print(idade);

  dadosPessoais["Profissão"] = "Engenheiro";
  print(dadosPessoais);

  Map<String, dynamic> dadosPessoais2 = {};
  dadosPessoais2.addAll(dadosPessoais);
  print(dadosPessoais2);

  dadosPessoais2.remove("cidade");
  print(dadosPessoais2);

  if (dadosPessoais2.containsKey("nome")) {
    print("Sim");
  } else {
    print("não");
  }

  for (var chave in dadosPessoais2.keys) print(chave);

  for (var valores in dadosPessoais2.values) print(valores);

  Map<String, dynamic> estoque = {
    "Maça": 5,
    "Banana": 2,
    "Laranja": 8,
    "Uva": 10
  };

  if (estoque.containsKey("Banana")) {
    print("Sim");
  } else {
    print("Não");
  }
}
