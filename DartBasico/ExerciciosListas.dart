void main() {
//Escreva uma função em Dart que receba uma lista de inteiros e retorne a soma de todos os elementos.
  var numeros = [5, 10, 15, 20];
  var soma = numeros.reduce((value, element) => value + element);
  print(soma);

//Crie uma função que receba uma lista de strings e retorne a
// quantidade de elementos que começam com a letra "A".

  List<String> nomes = ['Daniel', 'Silva', 'Cruz', 'Aim'];
  int count = countStringsStartingWithA(nomes);
  print(count);

//Escreva uma função que receba uma lista de números e retorne uma nova lista contendo apenas os números pares.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = (getEvenNumbers(
      numbers)); // Crio a lista passando minha função como parametro.
  print('Numeros pares $evenNumbers');

//Implemente uma função que receba uma lista de strings e retorne uma nova lista
// apenas as strings que possuem mais de 5 caracteres.
  List<String> strings = ['apple', 'banana', 'kiwi', 'watermelon', 'orange'];
  List<String> stringFive = (getStringFive(strings));
  print('Mais de cinco caracteres $stringFive');

//Crie uma função que receba uma lista de números e retorne o maior valor presente na lista.
  List<int> values = [2, 3, 5, 8, 10, 22];
  int maxValue = (getMaxValue(values));
  print('Maior valor: $maxValue');

//Escreva uma função que receba uma lista de strings e retorne uma nova lista com
// todas as strings convertidas para letras maiúsculas.
  List<String> letras = ['todas', 'as', 'letras', 'maiusculas'];
  List<String> upperCase = getUpperCase(letras);
  print(upperCase);

//Implemente uma função que receba uma lista de números e retorne a média dos valores
  List<double> averageNumbers = [2, 3, 5, 6, 8, 9, 10];
  double somaNumbers =
      averageNumbers.reduce((value, element) => value + element);
  double average = somaNumbers / averageNumbers.length;
  print("Média: $average");

//Crie uma função que receba uma lista de strings e retorne uma nova lista contendo apenas as
// strings que são palíndromos (ou seja, lidas da mesma forma de trás para frente).
  List<String> palindromos = [
    'level',
    'hello',
    'radar',
    'world',
    'deed',
    'atorredaderrota'
  ];
  List<String> palindromo = (getPalindromos(palindromos));
  print('Palindromos: $palindromo');

  //Escreva uma função que receba duas listas de números e retorne uma nova lista contendo
  // a soma dos elementos correspondentes das duas listas.
  List<int> numeros1 = [1,2,3,4,5,6,7,8,9,10];
  List<int> numeros2 = [10,9,8,7,5,6,4,3,2,1];
  List<int> somandoListas = (somarListas(numeros1, numeros2));
  print("Soma das listas: $somandoListas");

  //Implemente uma função que receba uma lista de números e retorne
  // uma nova lista contendo apenas os números ímpares.
  List <int> impares = [2,3,5,7,6,10];
  List <int> verificarImpares = (getNoEvenNumbers(impares));
  print('Numeros impares: $verificarImpares');
}

int countStringsStartingWithA(List<String> nomes) {
  //Crio uma função passando a lista nomes como parametro.
  int count = 0;

  for (String str in nomes) {
    if (str.startsWith('A')) {
      // verifico se começa com A
      count++;
    }
  }
  return count;
}

List<int> getEvenNumbers(List<int> numbers) {
  // Crio a lista com o numbers na main como parametro
  List<int> evenNumbers = []; // Crio a lista vazia para receber os pares

  for (int number in numbers) {
    // crio uma variavel pra percorrer minha lista
    if (number % 2 == 0) {
      // verifico se é par
      evenNumbers.add(number); // os que forem par entram na lista evenNumbers
    }
  }
  return evenNumbers; // retorno a lista
}

List<String> getStringFive(List<String> strings) {
  List<String> stringFive = []; // lista vazia pra popular
  for (String str in strings) {
    if (str.length > 5) {
      // verifico se o tamanho dela é maior que 5
      stringFive.add(str); // adiciono a str do For
    }
  }
  return stringFive;
}

int getMaxValue(List<int> values) {
  int maxValue = values[0]; // crio a variavel que vai receber o maior numero

  for (int number in values) {
    if (number > maxValue) {
      // se o number que ta percorrendo o valor é maior, o maxValue recebe esse maior
      maxValue = number;
    }
  }
  return maxValue;
}

List<String> getUpperCase(List<String> letras) {
  List<String> upperCase = []; //lista vazia pra popular

  for (String str in letras) {
    //crio string do for
    String upperCaseStr = str
        .toUpperCase(); // crio outra string para receber todas as letras do for e converto para maisuculas
    upperCase.add(upperCaseStr); // adiciono tudo na lista vazia
  }
  return upperCase; // retorno
}

List<String> getPalindromos(List<String> palindromos) {
  List<String> palindromo = [];

  for (String str in palindromos) {
    String reversedStr = str.split('').reversed.join('');
    if (str == reversedStr) {
      palindromo.add(str);
    }
  }
  return palindromo;
}

List <int> somarListas (List<int> numeros1, List<int> numeros2){
  List<int> somarLista = [];

  for (int i = 0; i < numeros1.length; i ++){
    int soma = numeros1[i] + numeros2[i];
    somarLista.add(soma);
  }
  return somarLista;
}

List<int> getNoEvenNumbers(List<int> numbers) {
  // Crio a lista com o numbers na main como parametro
  List<int> evenNumbers = []; // Crio a lista vazia para receber os pares

  for (int number in numbers) {
    // crio uma variavel pra percorrer minha lista
    if (number % 2 != 0) {
      // verifico se é par
      evenNumbers.add(number); // os que forem impar entram na lista evenNumbers
    }
  }
  return evenNumbers; // retorno a lista
}