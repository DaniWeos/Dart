void main (){
  var fruits = ['orange', 'banana', 'watermelon', 'pineapple'];
  print('*Contains*');
  print(fruits.contains('mango')); // Contains = Verifica se contém o elemento em parenteses dentro do array.
  print(fruits.contains('banana')); // Contains = Verifica se contém o elemento em parenteses dentro do array.
  print('');

  print('*forEach*');
  fruits.forEach((fruit) => print(fruit)); // Percorro todo o array 'fruits'.
  print('');

  print('*Map*');
  var mappedFruits = fruits.map((fruit) => 'I like $fruit'); // Percorro o array concatenando algo
  print(mappedFruits);
  print('');

  List<Map<String, dynamic>> persons = [
    {'name': 'John',  'age': 16},
    {'name': 'Peter',  'age': 40},
    {'name': 'Jane',  'age': 31},
    {'name': 'Mary',  'age': 23},
    {'name': 'Neza',  'age': 25},
    {'name': 'Audrey',  'age': 63},
  ];
  print('*Every*');
  var result = persons.every((person) => person ['age'] <= 60); //Verifico de Todos possuem o parametro passado, nesse caso idade menor que 60.
  print(result);
  print('');

  print('*Where*');
  var result2 = persons.where((person) => person ['age'] <= 30);
  print(result2);
  print('');

  print('*FollowedBy*');
  var result3 = persons.followedBy([ // Adiciona um array após o último.
    {'name': 'Nadia', 'age':28}
  ]);
  print('');

  print ('*ForEachName*'); // Filtrando um ForEach
  persons.forEach((person) => print(person['age']));
  print('');

  print('*Reduce*'); // Reduzo uma lista a um objeto.
  var result4 = persons.map<dynamic>((e) => e['age']).reduce((a, b) => a+b);
  print(result4);
  print('');

  var numbers = [1, 3, 2, 5, 4];

  print('*Sort*'); //Sort ordena numeros.
  numbers.sort((num1, num2) => num1 - num2);
  print(numbers);
  print(numbers.reversed);
  print('');

}