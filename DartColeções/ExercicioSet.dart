//Crie um conjunto vazio chamado "mySet".
// Adicione os números 1, 2, 3 e 4 ao conjunto "mySet".
// Verifique se o número 3 está presente no conjunto "mySet".
// Remova o número 2 do conjunto "mySet".
// Crie um segundo conjunto chamado "otherSet" com os números 3, 4, 5 e 6.
// Verifique se o conjunto "mySet" e o conjunto "otherSet" têm algum elemento em comum.
// Crie um terceiro conjunto chamado "unionSet" que seja a união dos conjuntos "mySet" e "otherSet".
// Crie um quarto conjunto chamado "intersectionSet" que seja a interseção dos conjuntos "mySet" e "otherSet".
// Crie um quinto conjunto chamado "differenceSet" que seja a diferença entre os conjuntos "mySet" e "otherSet".
// Verifique se o conjunto "mySet" é um subconjunto do conjunto "otherSet".

void main (){
  Set<int> mySet = Set<int>();
  mySet.add(1);
  mySet.add(2);
  mySet.add(3);
  mySet.add(4);

  print(mySet.contains(3));

  mySet.remove(2);
  print("Removi o 2");

  Set<int> otherSet = {3,4,5,6};
  print(otherSet.intersection(mySet)); // verificar se tem em um e no outro.

  Set<int> unionSet = mySet.union(otherSet); // uno dois set's
  print(unionSet);
  
  Set<int> intercecaoSet = mySet.intersection(otherSet); // interseção dos dois sets
  print(intercecaoSet);

  Set<int> diferenceSet = mySet.difference(otherSet); // diferenca dos dois sets
  print(diferenceSet);

  bool subsett = mySet.every((element) => otherSet.contains(element));
  print("Contém todos os elementos? $subsett");
}