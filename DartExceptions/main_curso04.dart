import 'dart:math';

import 'Exceptions/bank_controler_exceptions.dart';
import 'controllers/bank_controller.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount = Account(name: "Daniel", balance: 200, isAuthenticated: true);

  //Simulando comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.runtimeType);


  print(myAccount.createdAt);
  //print(myAccount.createdAt.day);
  // //print(myAccount!.balance);
  // //print(myAccount.balance);
  print(myAccount.createdAt!.day);


  if (myAccount != null) {
    print(myAccount.balance);
    if(myAccount.createdAt != null){
      print(myAccount.createdAt!.day);
    }
  } else {
    print("Conta nula");
  }
  print(myAccount != null ? myAccount.balance : "Conta nula");

  //Chamada segura
  print(myAccount.balance);
}

void main() {
  testingNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
      Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
      Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 50);
    // Observando resultado
    if (result) {
      //print("Transação concluida com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
  } on Exception {
    print("Algo deu errado");
  }
}