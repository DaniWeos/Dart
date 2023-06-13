class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException ({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\n";
  }
}
class ReceiverIdInvalidException implements Exception{
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException ({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver: $idReceiver\n";
  }
}
class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idNotAuth;
  SenderNotAuthenticatedException ({required this.idNotAuth});

  @override
  String toString(){
    return "$report\nID Sender: $idNotAuth\n";
  }
}
class SenderBalanceLowerThanAmountException implements Exception{
  static const String report = "SenderBalanceLowerThanAmountException";
  double senderBalance;
  double amount;
  String idSender;
  SenderBalanceLowerThanAmountException ({required this.amount, required this.idSender , required this.senderBalance});

  @override
  String toString(){
    return "$report\nId Sender: $idSender\nSender Balance: $senderBalance\nAmount $amount";
  }
}
class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverSenderNotAuthenticatedException";
  String idNotAuth;
  ReceiverNotAuthenticatedException ({required this.idNotAuth});

  @override
  String toString(){
    return "$report\nID Receiver: $idNotAuth não esta autenticado!";
  }
}